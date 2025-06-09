import 'package:flutter/material.dart';
import 'package:personal_app/widgets/profile_card.dart';

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
          // calling the Card from 'profile_card.dart' file
          child: ProfileCard(),
        ),
      ),
    );
  }
}