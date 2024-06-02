import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_riverpod/services/services.dart';
import 'package:flutter_todo_riverpod/utils/helpers.dart';

class HomeController {
  static final HomeController _singleton = HomeController._();
  HomeController._();

  factory HomeController() {
    return _singleton;
  }
  List<Task> incompltedTask(List<Task> tasks, WidgetRef ref) {
    final date = ref.watch(dateProvider);
    final List<Task> filteredTask = [];

    for (var task in tasks) {
      if (!task.isCompleted) {
        final isTaskDay = Helpers.isTaskFromSelectedDate(task, date);
        if (isTaskDay) {
          filteredTask.add(task);
        }
      }
    }
    return filteredTask;
  }

  List<Task> compltedTask(List<Task> tasks, WidgetRef ref) {
    final date = ref.watch(dateProvider);
    final List<Task> filteredTask = [];

    for (var task in tasks) {
      if (task.isCompleted) {
        final isTaskDay = Helpers.isTaskFromSelectedDate(task, date);
        if (isTaskDay) {
          filteredTask.add(task);
        }
      }
    }
    return filteredTask;
  }
}
