import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_riverpod/config/config.dart';
import 'package:flutter_todo_riverpod/global.dart';

Future<Widget> initializeApp(AppConfig devAppConfig) async {
  await Global.init();
  return const TodoApp();
}

class TodoApp extends ConsumerWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final route = ref.watch(routesProvider);
    return MaterialApp.router(
      title: dotenv.env['APP_NAME'] ?? 'Flutter Todo Riverpod',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: route,
    );
  }
}
