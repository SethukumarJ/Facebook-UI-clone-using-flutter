import 'package:facebookclone/constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class AppbarIcons extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;

  AppbarIcons({required this.buttonIcon, required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[100],
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          buttonIcon,
          color: Colors.black,
          size: 25,
        ),
      ),
    );
  }
}

class TabBarIcons extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Colors IconColor;

  TabBarIcons(
      {required this.buttonIcon,
      required this.buttonAction,
      required this.IconColor});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        child: IconButton(
          onPressed: buttonAction,
          icon: Icon(
            buttonIcon,
            color: Colors.black38,
          ),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 38,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white),
        shape: BoxShape.circle,
        color: Colors.blue[700],
      ),
      child: Center(
        child: Container(
          child: Center(
              child: Icon(
            Icons.add,
            color: Colors.white,
            size: 25,
          )),
          height: 29,
          width: 29,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class FirstTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: DisplayImage(
        dpImage: elonmusk,
      ),
      trailing: IconButton(
        onPressed: () {
          print("photos clicked!");
        },
        icon: Icon(
          Icons.photo,
          color: Colors.green,
        ),
      ),
      title: TextButton(
        onPressed: () {
          print("what's on your mind clicked");
        },

        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(Size(300.0, 20)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  width: 1,
                  color: Colors.black26,
                )),
          ),
        ),
        // color: Colors.white,
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "   What's on your mind?",
              style: TextStyle(color: Colors.black, fontSize: 16),
            )),

        // borderSide: BorderSide(width: 1,color: Colors.black54,),
      ),
    );
  }
}

class SecondTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      height: 62,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[100],
      child: Row(
        children: [
          TouchButtons(
              buttonText: "Reel",
              buttonIcon: Icons.camera,
              iconColor: Colors.red),
          TouchButtons(
              buttonText: "Room",
              buttonIcon: Icons.video_call,
              iconColor: Colors.purple),
          TouchButtons(
              buttonText: "Group",
              buttonIcon: Icons.group,
              iconColor: Colors.blue),
          TouchButtons(
              buttonText: "Live",
              buttonIcon: Icons.video_camera_back,
              iconColor: Colors.red),
        ],
      ),
    );
  }
}

class TouchButtons extends StatelessWidget {
  final String buttonText;
  final Color iconColor;
  final IconData buttonIcon;

  TouchButtons(
      {required this.buttonText,
      required this.buttonIcon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              fixedSize: MaterialStateProperty.all(Size(75.0, 30)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                        width: 1,
                        color: Colors.black12,
                      )))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                buttonIcon,
                color: iconColor,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                buttonText,
                style: TextStyle(fontSize: 12, color: Colors.black),
              )
            ],
          )),
    );
  }
}

class DisplayImage extends StatelessWidget {
  final String dpImage;

  DisplayImage({required this.dpImage});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: Padding(
        padding: EdgeInsets.all(0),
        child: ClipRRect(
          child: Image.asset(
            dpImage,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
Widget DotContainer()
{
return
Padding
(
padding: EdgeInsets.only(left: 3
,
right: 3
)
,
child: Container
(

height: 1.3
,
width: 1.3
,
decoration: BoxDecoration
(
color: Colors.black54, shape: BoxShape.circle),
)
,
)
;
}