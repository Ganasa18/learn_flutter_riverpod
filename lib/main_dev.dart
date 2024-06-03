import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo_riverpod/app/app.dart';
import 'package:flutter_todo_riverpod/config/config.dart';

Future main() async {
  final devAppConfig =
      AppConfig(appName: 'Flutter Todo Riverpod DEV', flavor: FlavorType.dev);
  Widget app = await initializeApp(devAppConfig);
  await dotenv.load(fileName: ".dev.env");
  runApp(ProviderScope(
    child: app,
  ));
}
