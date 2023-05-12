import 'package:flutter/material.dart';

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
    return new Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: <Widget>[
          new Flexible(
              child: new ListView.builder(
                  itemCount: _itemList.length,
                  padding: new EdgeInsets.all(8.0),
                  reverse: false,
                  itemBuilder: (_, int index) {
                    return new Card(
                      color: Colors.white10,
                      child: new ListTile(
                        trailing: new Listener(
                          key: new Key(_itemList[index]),
                          child: new Icon(
                            Icons.remove_circle,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: "Add item",
        backgroundColor: Colors.redAccent,
        onPressed: () {},
        child: new ListTile(
          title: new Icon(Icons.add),
        ),
      ),
    );
  }
}
