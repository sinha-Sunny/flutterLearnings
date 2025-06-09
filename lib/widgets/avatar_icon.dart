import 'package:flutter/material.dart';

class AvatarIcon extends StatelessWidget {
  const AvatarIcon({super.key});

  @override
  Widget build(context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Colors.white,
      child: Text(
        String.fromCharCode(Icons.person.codePoint),
        style: TextStyle(
          color: Colors.blue,
          fontSize: 75,
          fontFamily: Icons.person.fontFamily,
          shadows: [
            Shadow(
              offset: Offset(1, 1), // How far the shadow is from the text/icon
              blurRadius: 2, // How blurry the shadow looks
              color: Colors.grey.shade600, // Shadow color
            ),
          ],
        ),
      ),
      // Icon(Icons.person, size: 85, color: Colors.grey.shade400),
    );
  }
}
