import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // Centering the Card widget in the middle of the screen
          child: SizedBox(
            // Setting a fixed size for the Card widget
            width: 260,
            height: 300,
            // Using a Card widget with elevation and rounded corners
            child: Card(
              elevation: 10,
              margin: EdgeInsets.all(8),
              // Setting the background color of the Card
              color: const Color.fromARGB(255, 254, 233, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              // Adding a child with padding 
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
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
                                offset: Offset(1, 1),       // How far the shadow is from the text/icon
                                blurRadius: 2,              // How blurry the shadow looks
                                color: Colors.grey.shade600,      // Shadow color
                              ),
                            ]
                          ),
                        ), 
                      // Icon(Icons.person, size: 85, color: Colors.grey.shade400),
                    ),
                    SizedBox(height: 15),
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        colors: [Colors.purple.shade600, Colors.blue.shade500]
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
                    ),
                    SizedBox(height: 3),
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        colors: [Colors.purple.shade400, Colors.blue.shade400],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                      ).createShader(bounds),
                      blendMode: BlendMode.srcIn,
                      child: Text('Flutter Developer',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.9,
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 20),
                    Row(
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}