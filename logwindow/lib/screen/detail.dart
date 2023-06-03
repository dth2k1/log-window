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
       body: Container(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 8.0),
              Image.asset(
                'assets/images/youtube.png',//just change your image to my image
                height: 150,
                width: 100,
              ),
              Text(
                'Tên: youtube',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Ngày bắt đầu: 20/06/2001',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Thời gian sử dụng: 8h',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
