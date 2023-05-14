import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String? item;

  Detail({this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item ?? 'Content'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$item',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
