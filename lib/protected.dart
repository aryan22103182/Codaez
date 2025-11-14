import 'package:flutter/material.dart';

class Protected extends StatelessWidget {
  final Widget child;
  final bool isLoggedIn; 

  const Protected({Key? key, required this.child, required this.isLoggedIn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!isLoggedIn) {
      return const Scaffold(
        body: Center(
          child: Text(
            "Access Denied — Not Logged In",
            style: TextStyle(fontSize: 18),
          ),
        ),
      );
    }

    return child;
  }
}