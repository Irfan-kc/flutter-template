// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chopper_tasks_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ChopperTasksApiService extends ChopperTasksApiService {
  _$ChopperTasksApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ChopperTasksApiService;

  @override
  Future<Response<List<TaskGroup>>> getTaskGroups() {
    final Uri $url = Uri.parse('/task-groups');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<TaskGroup>, TaskGroup>($request);
  }

  @override
  Future<Response<TaskGroup>> getTaskGroup(String id) {
    final Uri $url = Uri.parse('/task-groups/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<TaskGroup, TaskGroup>($request);
  }

  @override
  Future<Response<Task>> getTask(String taskId) {
    final Uri $url = Uri.parse('/tasks/${taskId}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<Task, Task>($request);
  }

  @override
  Future<Response<List<Task>>> getTasks(String taskGroupId) {
    final Uri $url = Uri.parse('/task-groups/${taskGroupId}/tasks');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<Task>, Task>($request);
  }

  @override
  Future<Response<dynamic>> reopenTask(String id) {
    final Uri $url = Uri.parse('/tasks/${id}');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> completeTask(String id) {
    final Uri $url = Uri.parse('/tasks/${id}');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<Task>> createTask(CreateTask createTask) {
    final Uri $url = Uri.parse('/tasks');
    final $body = createTask;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Task, Task>($request);
  }

  @override
  Future<Response<TaskGroup>> createTaskGroup(CreateTaskGroup ctg) {
    final Uri $url = Uri.parse('/task-groups');
    final $body = ctg;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TaskGroup, TaskGroup>($request);
  }

  @override
  Future<Response<TaskGroup>> updateTaskGroup(TaskGroup tg) {
    final Uri $url = Uri.parse('/task-groups/update');
    final $body = tg;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<TaskGroup, TaskGroup>($request);
  }

  @override
  Future<Response<dynamic>> deleteAllTasks() {
    final Uri $url = Uri.parse('/tasks');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteAllTaskGroups() {
    final Uri $url = Uri.parse('/task-groups');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
