import 'package:flutter/material.dart';
import 'package:two_by_one/config/environments/config_env.dart';
import 'package:two_by_one/main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await mainCommon(AppEnvironment.PROD);
}
