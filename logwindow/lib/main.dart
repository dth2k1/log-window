import 'package:flutter/material.dart';
import 'package:logwindow/screen/home.dart';
import 'package:logwindow/screen/detail.dart';
import 'package:fluro/fluro.dart';
// import 'routes.dart';
import 'package:logwindow/screen/login.dart';
import 'package:logwindow/screen/otp.dart';
import 'package:logwindow/screen/todo.dart';

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
        home: BottomNavBarV2());
  }
}

class BottomNavBarV2 extends StatefulWidget {
  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          if (currentIndex == 0) Home(),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  Container(
                    width: size.width,
                    height: 80,
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.home,
                            color: currentIndex == 0
                                ? Colors.black
                                : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.logout,
                              color: currentIndex == 1
                                  ? Colors.black
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(1);
                              print("hello");
                            }),
                        Container(
                          width: size.width * 0.20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
