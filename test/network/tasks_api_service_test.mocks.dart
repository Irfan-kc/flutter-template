// Mocks generated by Mockito 5.0.7 from annotations
// in flutter_template/test/network/tasks_api_service_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:flutter_template/model/user/credentials.dart' as _i2;
import 'package:flutter_template/network/user_auth_api_service.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: prefer_const_constructors

// ignore_for_file: avoid_redundant_argument_values

class _FakeCredentials extends _i1.Fake implements _i2.Credentials {}

/// A class which mocks [UserAuthApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserAuthApiService extends _i1.Mock
    implements _i3.UserAuthApiService {
  MockUserAuthApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Credentials> refreshToken(String? refreshToken) =>
      (super.noSuchMethod(Invocation.method(#refreshToken, [refreshToken]),
              returnValue: Future<_i2.Credentials>.value(_FakeCredentials()))
          as _i4.Future<_i2.Credentials>);
}