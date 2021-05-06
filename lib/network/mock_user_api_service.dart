import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:flutter_template/model/user/credentials.dart';
import 'package:flutter_template/model/user/user.dart';
import 'package:flutter_template/network/user_api_service.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

import 'util/http_util.dart';

part 'mock_user_api_service.chopper.dart';

@ChopperApi()
abstract class MockUserApiService extends ChopperService
    implements UserApiService {
  static MockUserApiService create() {
    final client = ChopperClient(
      client: MockClient((request) async {
        return http.Response('', 200);
      }),
      baseUrl: 'https://mysite.com/api',
      services: [
        _$MockUserApiService(),
      ],
      converter: JsonConverter(),
      errorConverter: JsonConverter(),
    );
    return _$MockUserApiService(client);
  }

  /// Registers a user
  @Post(path: '/user/register')
  Future<Response> signUp(@Body() User user);

  /// Gets the logged in user
  @Post(path: '/user/login')
  @FactoryConverter(request: FormUrlEncodedConverter.requestFactory)
  Future<Response<Credentials>> login(
    @Field() String username,
    @Field() String password,
  );

  /// Returns user profile details
  @Get(path: '/user')
  Future<Response<User>> getUserProfile({
    @Header(authHeaderKey) String? authHeader,
  });

  /// Updates user profile details
  @Put(path: '/user')
  Future<Response<User>> updateUserProfile(@Body() User user);

  /// Sends a request for resetting the user's password
  @Post(path: '/user/reset-password')
  Future<Response<void>> resetPassword(@Body() String email);

  /// Adds token needed for logged in user to receive push notifications
  @Post(path: '/user/notifications-token')
  Future<Response> addNotificationsToken(@Body() String token);

  /// Logs out the user from server
  @Post(path: '/user/logout', optionalBody: true)
  Future<Response<void>> logout();

  /// Deactivates the user
  @Delete(path: '/user')
  Future<Response<void>> deactivate();
}
