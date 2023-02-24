import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
