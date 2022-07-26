// Mocks generated by Mockito 5.2.0 from annotations
// in maryland_game_engine/test/data/filesystem/games/game_manager_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:fs_shim/fs.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:path/path.dart' as _i2;
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart'
    as _i4;
import 'package:path_provider_platform_interface/src/enums.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeContext_0 extends _i1.Fake implements _i2.Context {}

class _FakeDirectory_1 extends _i1.Fake implements _i3.Directory {}

class _FakeFile_2 extends _i1.Fake implements _i3.File {}

class _FakeLink_3 extends _i1.Fake implements _i3.Link {}

class _FakeFileSystemEntityType_4 extends _i1.Fake
    implements _i3.FileSystemEntityType {}

class _FakeFileSystem_5 extends _i1.Fake implements _i3.FileSystem {}

class _FakeFileSystemEntity_6 extends _i1.Fake implements _i3.FileSystemEntity {
}

class _FakeFileStat_7 extends _i1.Fake implements _i3.FileStat {}

class _FakeDateTime_8 extends _i1.Fake implements DateTime {}

/// A class which mocks [PathProviderPlatform].
///
/// See the documentation for Mockito's code generation for more information.
class MockPathProviderPlatform extends _i1.Mock
    implements _i4.PathProviderPlatform {
  MockPathProviderPlatform() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<String?> getTemporaryPath() =>
      (super.noSuchMethod(Invocation.method(#getTemporaryPath, []),
          returnValue: Future<String?>.value()) as _i5.Future<String?>);
  @override
  _i5.Future<String?> getApplicationSupportPath() =>
      (super.noSuchMethod(Invocation.method(#getApplicationSupportPath, []),
          returnValue: Future<String?>.value()) as _i5.Future<String?>);
  @override
  _i5.Future<String?> getLibraryPath() =>
      (super.noSuchMethod(Invocation.method(#getLibraryPath, []),
          returnValue: Future<String?>.value()) as _i5.Future<String?>);
  @override
  _i5.Future<String?> getApplicationDocumentsPath() =>
      (super.noSuchMethod(Invocation.method(#getApplicationDocumentsPath, []),
          returnValue: Future<String?>.value()) as _i5.Future<String?>);
  @override
  _i5.Future<String?> getExternalStoragePath() =>
      (super.noSuchMethod(Invocation.method(#getExternalStoragePath, []),
          returnValue: Future<String?>.value()) as _i5.Future<String?>);
  @override
  _i5.Future<List<String>?> getExternalCachePaths() => (super.noSuchMethod(
      Invocation.method(#getExternalCachePaths, []),
      returnValue: Future<List<String>?>.value()) as _i5.Future<List<String>?>);
  @override
  _i5.Future<List<String>?> getExternalStoragePaths(
          {_i6.StorageDirectory? type}) =>
      (super.noSuchMethod(
              Invocation.method(#getExternalStoragePaths, [], {#type: type}),
              returnValue: Future<List<String>?>.value())
          as _i5.Future<List<String>?>);
  @override
  _i5.Future<String?> getDownloadsPath() =>
      (super.noSuchMethod(Invocation.method(#getDownloadsPath, []),
          returnValue: Future<String?>.value()) as _i5.Future<String?>);
}

/// A class which mocks [FileSystem].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileSystem extends _i1.Mock implements _i3.FileSystem {
  MockFileSystem() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get name =>
      (super.noSuchMethod(Invocation.getter(#name), returnValue: '') as String);
  @override
  bool get supportsLink =>
      (super.noSuchMethod(Invocation.getter(#supportsLink), returnValue: false)
          as bool);
  @override
  bool get supportsFileLink =>
      (super.noSuchMethod(Invocation.getter(#supportsFileLink),
          returnValue: false) as bool);
  @override
  _i2.Context get path => (super.noSuchMethod(Invocation.getter(#path),
      returnValue: _FakeContext_0()) as _i2.Context);
  @override
  _i2.Context get pathContext =>
      (super.noSuchMethod(Invocation.getter(#pathContext),
          returnValue: _FakeContext_0()) as _i2.Context);
  @override
  _i3.Directory directory(String? path) =>
      (super.noSuchMethod(Invocation.method(#directory, [path]),
          returnValue: _FakeDirectory_1()) as _i3.Directory);
  @override
  _i3.File file(String? path) =>
      (super.noSuchMethod(Invocation.method(#file, [path]),
          returnValue: _FakeFile_2()) as _i3.File);
  @override
  _i3.Link link(String? path) =>
      (super.noSuchMethod(Invocation.method(#link, [path]),
          returnValue: _FakeLink_3()) as _i3.Link);
  @override
  _i5.Future<_i3.FileSystemEntityType> type(String? path,
          {bool? followLinks = true}) =>
      (super.noSuchMethod(
              Invocation.method(#type, [path], {#followLinks: followLinks}),
              returnValue: Future<_i3.FileSystemEntityType>.value(
                  _FakeFileSystemEntityType_4()))
          as _i5.Future<_i3.FileSystemEntityType>);
  @override
  _i5.Future<bool> isFile(String? path) =>
      (super.noSuchMethod(Invocation.method(#isFile, [path]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<bool> isDirectory(String? path) =>
      (super.noSuchMethod(Invocation.method(#isDirectory, [path]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<bool> isLink(String? path) =>
      (super.noSuchMethod(Invocation.method(#isLink, [path]),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
}

/// A class which mocks [Directory].
///
/// See the documentation for Mockito's code generation for more information.
class MockDirectory extends _i1.Mock implements _i3.Directory {
  MockDirectory() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Directory get absolute =>
      (super.noSuchMethod(Invocation.getter(#absolute),
          returnValue: _FakeDirectory_1()) as _i3.Directory);
  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  bool get isAbsolute =>
      (super.noSuchMethod(Invocation.getter(#isAbsolute), returnValue: false)
          as bool);
  @override
  _i3.Directory get parent => (super.noSuchMethod(Invocation.getter(#parent),
      returnValue: _FakeDirectory_1()) as _i3.Directory);
  @override
  _i3.FileSystem get fs => (super.noSuchMethod(Invocation.getter(#fs),
      returnValue: _FakeFileSystem_5()) as _i3.FileSystem);
  @override
  _i5.Future<_i3.Directory> create({bool? recursive = false}) => (super
          .noSuchMethod(Invocation.method(#create, [], {#recursive: recursive}),
              returnValue: Future<_i3.Directory>.value(_FakeDirectory_1()))
      as _i5.Future<_i3.Directory>);
  @override
  _i5.Stream<_i3.FileSystemEntity> list(
          {bool? recursive = false, bool? followLinks = true}) =>
      (super.noSuchMethod(
              Invocation.method(#list, [],
                  {#recursive: recursive, #followLinks: followLinks}),
              returnValue: Stream<_i3.FileSystemEntity>.empty())
          as _i5.Stream<_i3.FileSystemEntity>);
  @override
  _i5.Future<bool> exists() =>
      (super.noSuchMethod(Invocation.method(#exists, []),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<_i3.FileSystemEntity> delete({bool? recursive = false}) => (super
          .noSuchMethod(Invocation.method(#delete, [], {#recursive: recursive}),
              returnValue:
                  Future<_i3.FileSystemEntity>.value(_FakeFileSystemEntity_6()))
      as _i5.Future<_i3.FileSystemEntity>);
  @override
  _i5.Future<_i3.FileSystemEntity> rename(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#rename, [newPath]),
              returnValue:
                  Future<_i3.FileSystemEntity>.value(_FakeFileSystemEntity_6()))
          as _i5.Future<_i3.FileSystemEntity>);
  @override
  _i5.Future<_i3.FileStat> stat() =>
      (super.noSuchMethod(Invocation.method(#stat, []),
              returnValue: Future<_i3.FileStat>.value(_FakeFileStat_7()))
          as _i5.Future<_i3.FileStat>);
}

/// A class which mocks [FileSystemEntity].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileSystemEntity extends _i1.Mock implements _i3.FileSystemEntity {
  MockFileSystemEntity() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  bool get isAbsolute =>
      (super.noSuchMethod(Invocation.getter(#isAbsolute), returnValue: false)
          as bool);
  @override
  _i3.Directory get parent => (super.noSuchMethod(Invocation.getter(#parent),
      returnValue: _FakeDirectory_1()) as _i3.Directory);
  @override
  _i3.FileSystem get fs => (super.noSuchMethod(Invocation.getter(#fs),
      returnValue: _FakeFileSystem_5()) as _i3.FileSystem);
  @override
  _i5.Future<bool> exists() =>
      (super.noSuchMethod(Invocation.method(#exists, []),
          returnValue: Future<bool>.value(false)) as _i5.Future<bool>);
  @override
  _i5.Future<_i3.FileSystemEntity> delete({bool? recursive = false}) => (super
          .noSuchMethod(Invocation.method(#delete, [], {#recursive: recursive}),
              returnValue:
                  Future<_i3.FileSystemEntity>.value(_FakeFileSystemEntity_6()))
      as _i5.Future<_i3.FileSystemEntity>);
  @override
  _i5.Future<_i3.FileSystemEntity> rename(String? newPath) =>
      (super.noSuchMethod(Invocation.method(#rename, [newPath]),
              returnValue:
                  Future<_i3.FileSystemEntity>.value(_FakeFileSystemEntity_6()))
          as _i5.Future<_i3.FileSystemEntity>);
  @override
  _i5.Future<_i3.FileStat> stat() =>
      (super.noSuchMethod(Invocation.method(#stat, []),
              returnValue: Future<_i3.FileStat>.value(_FakeFileStat_7()))
          as _i5.Future<_i3.FileStat>);
}

/// A class which mocks [FileStat].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileStat extends _i1.Mock implements _i3.FileStat {
  MockFileStat() {
    _i1.throwOnMissingStub(this);
  }

  @override
  DateTime get modified => (super.noSuchMethod(Invocation.getter(#modified),
      returnValue: _FakeDateTime_8()) as DateTime);
  @override
  int get size =>
      (super.noSuchMethod(Invocation.getter(#size), returnValue: 0) as int);
  @override
  int get mode =>
      (super.noSuchMethod(Invocation.getter(#mode), returnValue: 0) as int);
}
