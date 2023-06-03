import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../routes.dart';
import 'dart:developer';

class ToDoScreen extends StatefulWidget {
  @override
  _ToDoScreenState createState() => _ToDoScreenState();
}

class _ToDoScreenState extends State<ToDoScreen> {
  final TextEditingController _textEditingController =
      new TextEditingController();
  final List<String> _itemList = ["Phần tử 1", "Phần tử 2", "Phần tử 3"];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Routes.configureRoutes();
    return new Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: <Widget>[
         Align(
          alignment: Alignment.topRight, // Đặt nút IconButton ở phía trên bên phải
          child: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Xóa tất cả'),
                  content: Text('Bạn có chắc chắn muốn xóa tất cả?'),
                  actions: [
                    TextButton(
                      child: Text('Hủy'),
                      onPressed: () {
                        Navigator.of(context).pop(); // Đóng dialog
                      },
                    ),
                    TextButton(
                      child: Text('OK'),
                      onPressed: () {
                        setState(() {
                          _deleteAllItems();
                        });
                        Navigator.of(context).pop(); // Đóng dialog
                      },
                    ),
                  ],
                );
              },
            );
          },
          ),
         ),
          new Flexible(
              child: ListView.builder(
                  itemCount: _itemList.length,
                  padding: new EdgeInsets.all(8.0),
                  reverse: false,
                  itemBuilder: (_, int index) {
                    final item = _itemList[index];
                    return Card(
                      color: Colors.white10,
                      child: ListTile(
                        title: Text(item),
                        onTap: () {
                          log('vao day');
                          // Chuyển tới màn hình chi tiết và truyền tham số item
                          _navigateToDetailScreen(context, item);
                        },
                      ),
                    );
                  }))
        ],
      ),
    );
  }

  void _deleteItem(int index) {
    _itemList.removeAt(index);
  }

  void _navigateToDetailScreen(BuildContext context, String item) {
    String route = '/detail/$item';
    Routes.router.navigateTo(context, route, transition: TransitionType.fadeIn);
  }

  void _deleteAllItems() {
  setState(() {
    _itemList.clear();
  });
}
}
