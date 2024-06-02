import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_riverpod/app/app.dart';
import 'package:flutter_todo_riverpod/global.dart';

void main() async {
  await Global.init();
  runApp(const ProviderScope(
    child: TodoApp(),
  ));
}
