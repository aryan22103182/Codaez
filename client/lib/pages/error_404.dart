import 'package:flutter/material.dart';

class Error404 extends StatelessWidget {
  const Error404({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "404 - Page Not Found",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
