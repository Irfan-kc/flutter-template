// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_user_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ChopperUserApiService extends ChopperUserApiService {
  _$ChopperUserApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ChopperUserApiService;

  @override
  Future<Response<dynamic>> signUp(User user) {
    final Uri $url = Uri.parse('/user/register');
    final $body = user;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Credentials>> login(
    String username,
    String password,
  ) {
    final Uri $url = Uri.parse('/user/login');
    final $body = <String, dynamic>{
      'username': username,
      'password': password,
    };
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Credentials, Credentials>(
      $request,
      requestConverter: FormUrlEncodedConverter.requestFactory,
    );
  }

  @override
  Future<Response<User>> getUserProfile({String? authHeader}) {
    final Uri $url = Uri.parse('/user');
    final Map<String, String> $headers = {
      if (authHeader != null) 'Authorization': authHeader,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<User, User>($request);
  }

  @override
  Future<Response<User>> updateUserProfile(User user) {
    final Uri $url = Uri.parse('/user');
    final $body = user;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<User, User>($request);
  }

  @override
  Future<Response<void>> resetPassword(String email) {
    final Uri $url = Uri.parse('/user/reset-password');
    final $body = email;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<void, void>($request);
  }

  @override
  Future<Response<dynamic>> addNotificationsToken(String token) {
    final Uri $url = Uri.parse('/user/notifications-token');
    final $body = token;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<void>> logout() {
    final Uri $url = Uri.parse('/user/logout');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client.send<void, void>($request);
  }

  @override
  Future<Response<void>> deactivate() {
    final Uri $url = Uri.parse('/user');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<void, void>($request);
  }
}
