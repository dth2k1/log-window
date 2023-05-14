import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: heightSize * 0.07,
              child: const Padding(
                padding: EdgeInsets.all(12.0),
              ),
            ),
            SizedBox(height: heightSize * 0.08, child: phoneLogin()),
            SizedBox(height: heightSize * 0.1, child: loginButton()),
          ],
        ),
      ),
    );
  }

  LayoutBuilder phoneLogin() {
    return LayoutBuilder(builder: (context, hw) {
      return Column(
        children: [
          SizedBox(
            child: ListTile(
              horizontalTitleGap: 10,
              minVerticalPadding: 0,
              minLeadingWidth: 0,
              leading: const Icon(
                Icons.phone,
                color: Colors.grey,
              ),
              title: TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  hintText: 'Mobile',
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  GestureDetector loginButton() {
    return GestureDetector(
      onTap: () {
        print("hello");
      },
      child: Center(
        child: Container(
          width: 340,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
              child: Text(
            'Login',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
