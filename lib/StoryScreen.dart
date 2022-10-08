import 'package:facebookclone/widgets.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class StoryCards extends StatelessWidget {
  final String cardImage;
  final String cardText;
  final String storyImage;
  final bool ownCard;

  StoryCards(
      {required this.cardImage,
      required this.cardText,
      required this.storyImage,
      required this.ownCard});

  @override
  Widget build(BuildContext context) {
    return ownCard == true
        ? Container(

            width: 120,
            margin: EdgeInsets.only(left: 15, right: 2.5, top: 7, bottom: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Stack(
              children: [
                Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13)),
                    image: DecorationImage(
                      image: AssetImage(cardImage),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Positioned(bottom: 50, left: 40, child: Avatar()),
                Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Create story",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                    ))
              ],
            ),
          )
        : Container(
            width: 120,
            margin: EdgeInsets.only(left: 5, right: 2.5, top: 7, bottom: 7),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cardImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(13),
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 8,
                  left: 10,
                  child: Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.blue),
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Container(
                        height: 29,
                        width: 29,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(storyImage), fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        cardText,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ))
              ],
            ),
          );
  }
}

class StoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 235,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCards(
              cardImage: elonmusk,
              cardText: "Create story",
              storyImage: elonmusk,
              ownCard: true),
          StoryCards(
              cardImage: ronaldostory,
              cardText: "Cristiano",
              storyImage: ronaldo,
              ownCard: false),
          StoryCards(
              cardImage: albertstory,
              cardText: "Albert Eindtein",
              storyImage: albert,
              ownCard: false),
          StoryCards(
              cardImage: johnystory,
              cardText: "Johnysins",
              storyImage: johnysins,
              ownCard: false),
          StoryCards(
              cardImage: billgatesstory,
              cardText: "Billgates",
              storyImage: billgates,
              ownCard: false),
          StoryCards(
              cardImage: jeffstory,
              cardText: "jeff Bezoz",
              storyImage: jeffbezos,
              ownCard: false),
          StoryCards(
              cardImage: ronaldostory,
              cardText: "Cristiano",
              storyImage: ronaldo,
              ownCard: false),
          StoryCards(
              cardImage: albertstory,
              cardText: "Albert Eindtein",
              storyImage: albert,
              ownCard: false),
          StoryCards(
              cardImage: johnystory,
              cardText: "Johnysins",
              storyImage: ronaldo,
              ownCard: false),
          StoryCards(
              cardImage: billgatesstory,
              cardText: "Billgates",
              storyImage: billgates,
              ownCard: false),
          StoryCards(
              cardImage: jeffstory,
              cardText: "jeff Bezoz",
              storyImage: jeffbezos,
              ownCard: false),
        ],
      ),
    );
  }
}

class OwnCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
