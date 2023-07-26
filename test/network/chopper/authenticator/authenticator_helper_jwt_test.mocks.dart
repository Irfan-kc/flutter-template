// Mocks generated by Mockito 5.4.1 from annotations
// in flutter_template/test/network/chopper/authenticator/authenticator_helper_jwt_test.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:flutter_template/model/user/credentials.dart' as _i2;
import 'package:flutter_template/network/user_auth_api_service.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeCredentials_0 extends _i1.SmartFake implements _i2.Credentials {
  _FakeCredentials_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

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
      (super.noSuchMethod(
        Invocation.method(
          #refreshToken,
          [refreshToken],
        ),
        returnValue: _i4.Future<_i2.Credentials>.value(_FakeCredentials_0(
          this,
          Invocation.method(
            #refreshToken,
            [refreshToken],
          ),
        )),
      ) as _i4.Future<_i2.Credentials>);
}
