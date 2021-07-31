import 'package:badges/badges.dart';
import 'package:chatapp/dummy_data.dart';
import 'package:chatapp/widgets/conversation_list.dart';
import 'package:chatapp/widgets/friends_online.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {  },
          icon:Icon(Icons.search),


        ),
        centerTitle: true,
        title: Text("Contacts"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("ONLINE"),
            FlatButton.icon(
                label:Text("ADD FRIENDS"),
                onPressed:(){},
                icon: Icon(Icons.add),

            )
        ],),
          FriendsOnline(),
          ConversationList()


        ],
      )
      ); // This trailing comma makes auto-formatting nicer for build methods
  }
}

