import 'package:flutter/material.dart';

class NameText extends StatelessWidget {
  const NameText({super.key});

  @override
  Widget build(context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.purple.shade600, Colors.blue.shade500],
      ).createShader(bounds),
      blendMode: BlendMode.srcIn,
      child: Text(
        'Sunny Kumar',
        style: TextStyle(
          fontSize: 18,
          letterSpacing: 1.2,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
