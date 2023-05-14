import 'package:flutter/material.dart';
import 'package:logwindow/screen/todo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('LOG WINDOW TODAY'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: new ToDoScreen(),
    );
  }
}
