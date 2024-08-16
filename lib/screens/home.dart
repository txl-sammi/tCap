import 'package:flutter/material.dart';
import 'package:tcap/screens/group_card.dart';
import 'profile_page.dart';
import 'friends_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tcap"),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage("Andwele Ancheta")));
          },
          icon: const Icon(Icons.person)
          ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FriendsPage()));
            },
            icon: const Icon(Icons.people)),
        ]
      ),
      body: GroupCard(),
      );
  }
} 

