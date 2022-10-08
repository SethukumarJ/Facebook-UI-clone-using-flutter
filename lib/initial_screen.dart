import 'package:facebookclone/screeentwo.dart';
import 'package:facebookclone/screenOne.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';
import 'my_flutter_app_icons.dart';
import 'package:facebookclone/newIcons.dart';

import 'constants.dart';



import 'package:flutter/material.dart';




// class InitialScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 5,
//         initialIndex: 0,
//         child: Scaffold(
//          body: CustomScrollView(
//            slivers: [ PreferredSize(
//
//              preferredSize: Size.fromHeight(100),
//              child:  SliverAppBar(
//
//                elevation: .5,
//                shadowColor: Colors.black,
//
//                backgroundColor: Colors.white,
//                title: SizedBox(
//                    height: 100,
//                    width: 120,
//                    child: Image.asset(
//                      faceBook,
//                      fit: BoxFit.fitHeight,
//                    )),
//                actions: [
//                  AppbarIcons(
//                      buttonIcon: Icons.search,
//                      buttonAction: () {
//                        print("search icon clicked");
//                      }),
//                  AppbarIcons(
//                      buttonIcon: Icons.chat,
//                      buttonAction: () {
//                        print("chat icon clicked");
//                      })
//                ],
//                bottom: TabBar(
//
//                  indicatorColor: Colors.blue[9000],
//                  unselectedLabelColor: Colors.black38,
//                  // automaticIndicatorColorAdjustment: true,
//                  labelColor: Colors.blue,
//                  indicatorWeight: 2,
//
//                  padding: EdgeInsets.only(right: 5, left: 5,bottom: 0),
//                  tabs: <Widget>[
//                    Tab(
//                        icon: Icon(
//                          Icons.home,
//                          size: 35,
//                        )),
//                    Tab(
//                        icon: Icon(
//                          Icons.store,
//                          size: 35,
//                        )),
//                    Tab(
//                        icon: Icon(
//                          Icons.account_circle,
//                          size: 35,
//                        )),
//                    Tab(
//                        icon: Icon(
//                          Icons.phone,
//                          size: 35,
//                        )),
//                    Tab(
//                        icon: Icon(
//                          Icons.menu,
//                          size: 35,
//                        )),
//                  ],
//                ),
//
//
//
//              ),
//            ),
//              buildImages(),
//            ],
//
//          ),
//
//
//
//         ),
//
//     );
//
//   }
//   Widget buildImages()=> SliverToBoxAdapter(
//
//     child: TabBarView(
//       children: <Widget>[
//         ScreenOne(),
//         ScreenTwo(),
//         ScreenTwo(),
//         ScreenTwo(),
//         ScreenTwo(),
//
//       ],
//
//     ),
//
//   );
// }
// icon: Icon(Icons.home,color: Colors.black38,size: 35,)
// icon: Icon(Icons.store,color: Colors.black38,size: 35,)
// icon: Icon(Icons.phone,color: Colors.black38,size: 35,)
// icon: Icon(Icons.person,color: Colors.black38,size: 35,)
// icon: Icon(Icons.menu,color: Colors.black38,size: 35,)




class InitialScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child:  AppBar(

            elevation: .5,
            shadowColor: Colors.black,

            backgroundColor: Colors.white,
            title: SizedBox(
                height: 100,
                width: 120,
                child: Image.asset(
                  faceBook,
                  fit: BoxFit.fitHeight,
                )),
            actions: [
              AppbarIcons(
                  buttonIcon: Icons.chat,
                  buttonAction: () {
                    print("search icon clicked");
                  }),
              AppbarIcons(
                  buttonIcon: Icons.chat,
                  buttonAction: () {
                    print("chat icon clicked");
                  })
            ],
            bottom: TabBar(

              indicatorColor: Colors.blue[9000],
              unselectedLabelColor: Colors.black38,
              // automaticIndicatorColorAdjustment: true,
              labelColor: Colors.blue,
              indicatorWeight: 2,

              padding: EdgeInsets.only(right: 5, left: 5,bottom: 0),
               tabs: <Widget>[
                const Tab(
             icon:const Icon(
                 Icons.home,
                      size: 35,
                    )),
               const Tab(
                    icon: Icon(
                      Icons.store,
                      size: 35,
                    )),
              const  Tab(
                    icon: Icon(
                      Icons.account_circle,
                      size: 35,
                    )),
              const  Tab(
                    icon: Icon(
                  MyFlutterAppIcons.youtube,
                      size: 35,

                    )),
                const Tab(
                    icon: Icon(
                      Icons.menu,
                      size: 35,

                    )),
              ],
            ),



          ),
        ),

        body: TabBarView(
          children: <Widget>[
            ScreenOne(),
            ScreenTwo(),
            ScreenTwo(),
            ScreenTwo(),
            ScreenTwo(),
          ],
        ),

      ),

    );
  }
}