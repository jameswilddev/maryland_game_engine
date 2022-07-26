import 'package:maryland_game_engine/data/primitives/u8.dart';
import 'package:maryland_game_engine/data/stores/entity_attribute_value/entity_attribute_value_store.dart';

import '../../primitives/attribute_id.dart';
import '../../primitives/entity_id.dart';
import '../../primitives/opcode.dart';

/// An entity-attribute-value store which can be written to.
class WritableEntityAttributeValueStore<T> implements EntityAttributeValueStore<T> {
  /// The store which is read from when this store lacks a mapping.
  final EntityAttributeValueStore<T> backingStore;

  /// Called to validate any value before allowing it to be stored.
  final void Function(T, String) valueValidator;

  /// Called to serialize a value to a sequence of [U8]s.
  final Iterable<U8> Function(T, String) valueSerializer;

  /// The [Opcode] which specifies that a value is to be set.
  final Opcode opcode;

  final Map<EntityId, Map<AttributeId, T>> _values = <EntityId, Map<AttributeId, T>>{};

  /// Creates a new entity-attribute-value store which can be written to, with a
  /// given [backingStore] to be used when no match can be found during a
  /// lookup, a [valueValidator] to use to validate values, and a
  /// [valueSerializer] and [opcode] to use to serialize values.
  WritableEntityAttributeValueStore(this.backingStore, this.valueValidator, this.valueSerializer, this.opcode);

  /// Retrieves the value of the specified [entityId]/[attributeId] pair.  May
  /// fall back to the [backingStore] if this store lacks such a mapping.
  /// Throws a [RangeError] when the given [attributeId] is invalid.
  @override
  T get(EntityId entityId, AttributeId attributeId) {
    validateAttributeId(attributeId, "Attribute ID");

    final valuesByAttributes = _values[entityId];

    if (valuesByAttributes == null) {
      return backingStore.get(entityId, attributeId);
    }

    if (!valuesByAttributes.containsKey(attributeId)) {
      return backingStore.get(entityId, attributeId);
    }

    return valuesByAttributes[attributeId] as T;
  }

  /// Sets of overwrites the [value] of the specified
  set(EntityId entityId, AttributeId attributeId, T value) {
    validateAttributeId(attributeId, "Attribute ID");

    valueValidator(value, "Value");

    final valuesByAttributes = _values[entityId];

    if (valuesByAttributes == null) {
      _values[entityId] = { attributeId: value };
    } else {
      valuesByAttributes[attributeId] = value;
    }
  }

  /// Applies all entity-attribute-values within this store to a given [store],
  /// then clears this store.
  moveTo(WritableEntityAttributeValueStore<T> store) {
    for (final entityAttributeValue in _values.entries) {
      final entityId = entityAttributeValue.key;

      for (final attributeValue in entityAttributeValue.value.entries) {
        final attributeId = attributeValue.key;
        final value = attributeValue.value;

        store.set(entityId, attributeId, value);
      }
    }

    _values.clear();
  }

  /// Serializes the current state of this store as a sequence of [U8]s.  This
  /// does not include any information from the [backingStore].
  Iterable<U8> serialize() sync* {
    final entries = _values.entries.toList();
    entries.sort((a, b) => a.key.compareTo(b.key));

    for (final entry in entries) {
      final attributeValues = entry.value.entries.toList();
      attributeValues.sort((a, b) => a.key.compareTo(b.key));

      for (final attributeValue in attributeValues) {
        yield* serializeOpcode(opcode);
        yield* entry.key.serialize();
        yield* serializeAttributeId(attributeValue.key, "Attribute ID");
        yield* valueSerializer(attributeValue.value, "Value");
      }
    }
  }
}
