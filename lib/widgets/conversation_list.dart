import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import"package:flutter/material.dart";

import '../dummy_data.dart';
class ConversationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder:(cxt,index) {
          return ListTile(
              leading: conversationList[index]["isOnline"]?Badge(
              position: BadgePosition(bottom:5,start: 2),
              badgeColor: Colors.lightGreenAccent.shade700,
              child: CircleAvatar(
                  backgroundImage: NetworkImage(conversationList[index]["imageUrl"]),
                  radius:30.0
              ),
            ):CircleAvatar(
                backgroundImage: NetworkImage(conversationList[index]["imageUrl"]),
                radius:30.0
            ),
            title:Text(
              conversationList[index]["name"],
              style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            subtitle:Text(
              conversationList[index]['message'],
              style:conversationList[index]["messages_read"]?
              TextStyle(color:Colors.grey):TextStyle(color:Colors.black,fontWeight: FontWeight.bold),
            ),
            trailing: conversationList[index]["no_of_messages_unread"]==0?
            Text(
                conversationList[index]["time"],
                style: TextStyle(
                    color: Colors.grey
                ),
            ): FittedBox(
                  fit: BoxFit.contain,
                  child: Column(
                    children: [
                      Text(conversationList[index]["time"],style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                      Badge(
                        badgeContent: Text(conversationList[index]["no_of_messages_unread"].toString()),
                      ),
                    ],
                  ),
            ),
          );
        },
        itemCount: conversationList.length
        ,),
    );
  }
}
