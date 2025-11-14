import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  final double size;

  const Loader({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: const CircularProgressIndicator(
        strokeWidth: 3,
      ),
    );
  }
}
