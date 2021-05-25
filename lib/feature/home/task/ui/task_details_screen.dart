import 'package:flutter/material.dart';
import 'package:flutter_template/model/task/task.dart';

class TaskDetailScreen extends StatelessWidget {
  final Task task;

  TaskDetailScreen({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(task.title, style: Theme.of(context).textTheme.headline6),
            Text(_description(task), style: Theme.of(context).textTheme.subtitle1)
          ],
        ),
      ),
    );
  }

  String _description(Task task) => task.description ?? '';
}
