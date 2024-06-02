import 'package:flutter_todo_riverpod/services/services.dart';
export 'task_notifier.dart';
export 'task_state.dart';
export 'task_provider.dart';

abstract class TaskRepository {
  Future<void> addTask(Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(Task task);
  Future<List<Task>> getAllTasks();
}
