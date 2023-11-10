import 'dart:async';
import 'package:flutter/material.dart';
import 'demo.dart'; // Import the file for your next page

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use a Future.delayed to wait for 5 seconds before navigating to the next page
    Future.delayed(Duration(seconds: 5), () {
      // Navigate to the next page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                MyWidget()), // Replace YourNextPage() with the actual class for your next page
      );
    });

    return const Scaffold(
      backgroundColor: Colors.blue, // Customize the background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Customize your splash screen text here
            Text(
              'Your App Name',
              style: TextStyle(
                color: Colors.white, // Customize the text color
                fontSize: 24.0, // Customize the text size
                fontWeight: FontWeight.bold, // Customize the text weight
              ),
            ),
            SizedBox(height: 16.0), // Add some spacing
            Text(
              'Loading...',
              style: TextStyle(
                color: Colors.white, // Customize the text color
                fontSize: 16.0, // Customize the text size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
