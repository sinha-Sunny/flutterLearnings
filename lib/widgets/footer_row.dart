import 'package:flutter/material.dart';

class InfoIcon extends StatelessWidget {
  const InfoIcon({super.key});

  @override
  Widget build(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.home, color: Colors.blue),
        SizedBox(width: 8),
        Icon(Icons.location_on, color: Colors.blue),
        SizedBox(width: 8),
        Icon(Icons.email, color: Colors.blue),
        SizedBox(width: 8),
        Icon(Icons.phone, color: Colors.blue),
      ],
    );
  }
}
