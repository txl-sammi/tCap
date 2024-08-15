import 'package:flutter/material.dart';
import 'package:modular_ui/modular_ui.dart';

class ProfilePage extends StatefulWidget {

  final String _profileName;

  ProfilePage(this._profileName);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(widget._profileName)
        ),
        body: Column(
          children: [
            Center(
              child: MUIProfileCard(
                name: widget._profileName,
                image: Image.network(
                  "https://images.unsplash.com/photo-1591101046979-cb6f3f486460?q=80&w=2128&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                ),
                designation: "Profile Description"),
            ),
            
          ],
        ),
    );
  }
}