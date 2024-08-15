import 'package:flutter/material.dart';
import 'group_page.dart';
import 'package:modular_ui/modular_ui.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tcap"),
      ),

      body: Center(
        
        child: ListView(
                children: [
                  MUIPrimaryCard(
                    title: "Group One",
                    description: "Your First Group Description",
                    image: Image.network(
                    "https://images.unsplash.com/photo-1511632765486-a01980e01a18?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    fit: BoxFit.cover,
                    ),
                    buttons: [
                      MUIPrimaryButton(
                        text: "Open Group", 
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GroupPage("Group One")));
                      },)
                    ],
                  ),
                  MUIPrimaryCard(
                    title: "Group Two",
                    description: "Your Second Group Description",
                    image: Image.network(
                    "https://images.unsplash.com/photo-1569617084133-26942bb441f2?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    fit: BoxFit.cover,
                    ),
                    buttons: [
                      MUIPrimaryButton(
                        text: "Open Group", 
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GroupPage("Group Two")));
                      },)
                    ],
                  ),
                  MUIPrimaryCard(
                    title: "Group Three",
                    description: "Your Third Group Description",
                    image: Image.network(
                    'https://images.unsplash.com/photo-1540553016722-983e48a2cd10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=80',
                    fit: BoxFit.cover,
                    ),
                    buttons: [
                      MUIPrimaryButton(
                        text: "Open Group", 
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GroupPage("Group Three")));
                      },)
                    ],
                  ),
                ],
              ),
        ),
      );
  }
} 

