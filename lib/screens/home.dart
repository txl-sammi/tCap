import 'package:flutter/material.dart';
import 'package:tcap/screens/group_card.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tcap"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage("Andwele Ancheta")));
            },
            icon: const Icon(Icons.person)),
        ]
      ),
      body: GroupCard(),
      );
  }
} 

