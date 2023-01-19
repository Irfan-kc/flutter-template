// Mocks generated by Mockito 5.0.16 from annotations
// in flutter_template/test/user/user_manager_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:flutter_template/model/user/credentials.dart' as _i2;
import 'package:flutter_template/model/user/user.dart' as _i3;
import 'package:flutter_template/network/user_api_service.dart' as _i4;
import 'package:flutter_template/user/user_event_hook.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeCredentials_0 extends _i1.Fake implements _i2.Credentials {}

class _FakeUser_1 extends _i1.Fake implements _i3.User {}

/// A class which mocks [UserApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserApiService extends _i1.Mock implements _i4.UserApiService {
  MockUserApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> signUp(_i3.User? user) =>
      (super.noSuchMethod(Invocation.method(#signUp, [user]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<_i2.Credentials> login(String? username, String? password) =>
      (super.noSuchMethod(Invocation.method(#login, [username, password]),
              returnValue: Future<_i2.Credentials>.value(_FakeCredentials_0()))
          as _i5.Future<_i2.Credentials>);
  @override
  _i5.Future<_i3.User> getUserProfile({String? authHeader}) =>
      (super.noSuchMethod(
              Invocation.method(#getUserProfile, [], {#authHeader: authHeader}),
              returnValue: Future<_i3.User>.value(_FakeUser_1()))
          as _i5.Future<_i3.User>);
  @override
  _i5.Future<_i3.User> updateUserProfile(_i3.User? user) =>
      (super.noSuchMethod(Invocation.method(#updateUserProfile, [user]),
              returnValue: Future<_i3.User>.value(_FakeUser_1()))
          as _i5.Future<_i3.User>);
  @override
  _i5.Future<void> resetPassword(String? email) =>
      (super.noSuchMethod(Invocation.method(#resetPassword, [email]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> addNotificationsToken(String? token) =>
      (super.noSuchMethod(Invocation.method(#addNotificationsToken, [token]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> logout() =>
      (super.noSuchMethod(Invocation.method(#logout, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> deactivate() =>
      (super.noSuchMethod(Invocation.method(#deactivate, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  String toString() => super.toString();
}

/// A class which mocks [UserEventHook].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserEventHook<U> extends _i1.Mock implements _i6.UserEventHook<U> {
  MockUserEventHook() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> onUserAuthorized(U? user, bool? isExplicitUserLogin) =>
      (super.noSuchMethod(
          Invocation.method(#onUserAuthorized, [user, isExplicitUserLogin]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  _i5.Future<void> onUserUnauthorized(bool? isExplicitUserLogout) =>
      (super.noSuchMethod(
          Invocation.method(#onUserUnauthorized, [isExplicitUserLogout]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i5.Future<void>);
  @override
  void onUserUpdatesProvided(_i5.Stream<U?>? userUpdates) => super.noSuchMethod(
      Invocation.method(#onUserUpdatesProvided, [userUpdates]),
      returnValueForMissingStub: null);
  @override
  String toString() => super.toString();
}
