import 'package:facebookclone/constants.dart';
import 'constants.dart';

import 'prePostScreen.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        PrePost(
            dpImage: ronaldo,
            thought: " ",
            date: "3 d",
            dateIcon: Icons.public_outlined,
            posterName: "Cristiano"),
        PostScreen(
            postImage: ronaldopost,
            like: "10M",
            coments: "676k",
            shares: "299k"),
        PrePost(
            dpImage: billgates,
            thought: "memory shared ",
            date: "3 d",
            dateIcon: Icons.public_outlined,
            posterName: "Billgates"),
        PostScreen(
            postImage: gatespost, like: "10M", coments: "676k", shares: "299k"),
        PrePost(
            dpImage: rockdp,
            thought: "memory shared ",
            date: "3 d",
            dateIcon: Icons.public_outlined,
            posterName: "Rock"),
        PostScreen(
            postImage: rockpost, like: "10M", coments: "676k", shares: "299k"),
        PrePost(
            dpImage: ambanidp,
            thought: "memory shared ",
            date: "3 d",
            dateIcon: Icons.public_outlined,
            posterName: "Ambani"),
        PostScreen(
            postImage: ambanipost,
            like: "10M",
            coments: "676k",
            shares: "299k"),
        PrePost(
            dpImage: sethudp,
            thought: "",
            date: "3 d",
            dateIcon: Icons.public_outlined,
            posterName: "Sethukumar"),
        PostScreen(
            postImage: sethudp, like: "10M", coments: "676k", shares: "299k"),
        PrePost(
            dpImage: messipost,
            thought: " ",
            date: "3 d",
            dateIcon: Icons.public_outlined,
            posterName: "Leonel"),
        PostScreen(
            postImage: messipost, like: "10M", coments: "676k", shares: "299k"),
        PrePost(
            dpImage: johnysins,
            thought: "memory shared ",
            date: "3 d",
            dateIcon: Icons.public_outlined,
            posterName: "Sins"),
        PostScreen(
            postImage: johnysinspost,
            like: "10M",
            coments: "676k",
            shares: "299k"),
        PrePost(
            dpImage: mamootydp,
            thought: "memory shared ",
            date: "3 d",
            dateIcon: Icons.public_outlined,
            posterName: "Mamooty"),
        PostScreen(
            postImage: mamootypost,
            like: "10M",
            coments: "676k",
            shares: "299k"),
      ],
    );
  }
}
