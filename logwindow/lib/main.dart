import 'package:flutter/material.dart';
import 'package:logwindow/screen/home.dart';
import 'package:logwindow/screen/detail.dart';
import 'package:fluro/fluro.dart';
// import 'routes.dart';
import 'package:logwindow/screen/login.dart';
import 'package:logwindow/screen/otp.dart';

void main() {
  // Routes.configureRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FluroRouter router = FluroRouter();
  MyApp({super.key}) {
    router.define(
      '/otp',
      handler: Handler(handlerFunc: (_, __) => OtpPage()),
    );

    router.define(
      '/login',
      handler: Handler(handlerFunc: (_, __) => LoginPage()),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'To do List',
        onGenerateRoute: router.generator,
        home: Home());
  }
}
