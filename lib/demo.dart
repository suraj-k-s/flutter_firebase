import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Home Page!',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}