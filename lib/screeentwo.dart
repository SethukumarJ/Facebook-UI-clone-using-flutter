import 'package:flutter/material.dart';
class ScreenTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Container(
      height: MediaQuery.of(context).size.height*.7,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child:
      Center(child: Text("sethu"),
      ),
    );
  }
}