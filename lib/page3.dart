import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Page 3",
          style: TextStyle(
              fontSize: 40,
            color: Colors.red
          ),
        ),
      ),
    );
  }
}
