import 'package:flutter/material.dart';
import 'initial_screen.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialScreen(),
    );

  }
}