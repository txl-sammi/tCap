import 'package:flutter/material.dart';
import 'package:tcap/screens/group_card.dart';
import 'group_page.dart';
import 'package:modular_ui/modular_ui.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tcap"),
      ),
      body: GroupCard(),

      );
  }
} 

