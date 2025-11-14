import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/sidebar.dart';

class Layout extends StatelessWidget {
  final Widget child;
  const Layout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Sidebar(), 
          Expanded(
            child: Column(
              children: [
                const Navbar(), 
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}