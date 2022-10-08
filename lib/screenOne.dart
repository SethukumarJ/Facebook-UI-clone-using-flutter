import 'package:facebookclone/widgets.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';
import 'StoryScreen.dart';
import 'prePostScreen.dart';
import 'posts.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(height: 5,),

           FirstTile(),
            SizedBox(height: 3,),
            SecondTile(),
            Divider(thickness: 11,color: Colors.grey[350],),
            StoryScreen(),
            Divider(thickness: 11,color: Colors.grey[350],),
            Posts(),
          ],
        ));
  }
}
