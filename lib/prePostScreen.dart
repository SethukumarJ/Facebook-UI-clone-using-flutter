import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';
import 'constants.dart';

class PrePost extends StatelessWidget {
final String dpImage;
final String posterName;
final String thought;
final String date;
final IconData dateIcon;

PrePost({required this.dpImage,required this.thought,required this.date, required this.dateIcon, required this.posterName});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            DisplayImage(dpImage: dpImage),
            SizedBox(
              width: 5,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        color:Colors.white,
                        child: Text(
                          posterName,
                          style:
                             const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Icon(
                          Icons.verified_sharp,
                          color: Colors.blue,
                          size: 18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Container(
                          height: 18,
                          // width: 190,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Text(
                            thought,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.black54),
                          ),
                        ),
                      ),

                    ],
                  ),
                  //
                  //
                  // SizedBox(
                  //   height: 1,
                  // ),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                        DotContainer(),
                        Icon(dateIcon,
                            size: 12, color: Colors.black54)
                      ],
                    ),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 15,
                  )
                ]),
          ],
        ),
      ),
        Positioned(right: 5,top: 9,
          child: Row(
            children: const [
             Icon(Icons.keyboard_control,
                  size: 25, color: Colors.black54),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.add, size: 25, color: Colors.black54)
            ],
          ),
        ),
    ]
    );
  }
}

class PostScreen extends StatelessWidget {
  final String postImage;
  final String like;
  final String coments;
  final String shares;

  PostScreen({required this.postImage,required this.like,required this.coments,required this.shares});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          height: 510,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(
                    postImage,
                  ),
                  fit: BoxFit.cover)),
        ),
        Container(
          height: 48,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                child: Image.asset(likeIcon),
                height: 20,
                width: 20,
              ),
              Container(
                color: Colors.white,
                child: Text(
                  like,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
                width: 180,
              ),SizedBox(width: 50,),
              Container(
                width: 140,
                color: Colors.white,
                child: Row(
                  children: [
                    Text(
                      coments,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    ),
                    SizedBox(width: 3,),
                    Text(
                      "Coments",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    ),
                    DotContainer(),
                    Text(
                      shares,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    ),SizedBox(width: 3,),
                    Text(
                      "Shares",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
       Padding(padding: EdgeInsets.only(left: 15,right: 15),
           child: Divider (thickness: 1.0,color: Colors.grey[350])),

        Container(height: 35,
          width: MediaQuery.of(context).size.width,
          child:Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          FlatButton.icon(onPressed: (){}, icon: Icon(Icons.favorite_outline_sharp), label: Text(
            "like",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black54),
          ),
          ),
            FlatButton.icon(onPressed: (){}, icon: Icon(Icons.messenger_outline_sharp), label: Text(
              "comment",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
            ),
            FlatButton.icon(onPressed: (){}, icon: Icon(Icons.near_me_outlined), label: Text(
              "share",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54),
            ),
            ),
        ],
        ),
        ),
        Divider(thickness: 11,color: Colors.grey[350],),
      ],
    );
  }
}
