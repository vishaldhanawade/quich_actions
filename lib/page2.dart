import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Page 2",
          style: TextStyle(
              fontSize: 40,
            color: Colors.blue
          ),
        ),
      ),
    );
  }
}
