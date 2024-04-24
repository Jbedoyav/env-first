import 'package:flutter/material.dart';
import 'package:two_by_one/config/environments/config_env.dart';
import 'package:two_by_one/config/flavor_banner.dart';

void main() => mainCommon(AppEnvironment.PROD);

Future<void> mainCommon(
  AppEnvironment environment,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  EnvInfo.initializeFromFlavor(environment);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: EnvInfo.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: flavorBanner(
        Text(EnvInfo.appName),
      ),
    );
  }
}
