import 'package:flutter/material.dart';

import '../dummy_data.dart';
import"package:badges/badges.dart";

class  FriendsOnline extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FriendsOnline> {
  @override
  Widget build(BuildContext context) {
    return
      // scrollDirection: Axis.horizontal,
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children:conversationList.map((e){
      //     return CircleAvatar(
      //       backgroundImage: NetworkImage(e["imageUrl"]),
      //       radius: 35.0,
      //     );
      //   }).toList()
      // ),
      Container(
        height:90,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: conversationList.map((e){
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: e["isOnline"]?Badge(
                position: BadgePosition(bottom:7,start: 2),
                badgeColor: Colors.lightGreenAccent.shade700,
                child: CircleAvatar(
                    backgroundImage: NetworkImage(e["imageUrl"]),
                    radius:35.0
                ),):CircleAvatar(
                  backgroundImage: NetworkImage(e["imageUrl"]),
                  radius:35.0
              ));
          }).toList()
        ),
      );
  }
}

