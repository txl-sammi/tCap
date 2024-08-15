import 'package:flutter/material.dart';
import 'group_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tcap"),
        
      ),

      body: Center(
        child: ElevatedButton(
          child: const Text('Open Group'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OtherPage()),
            );
          },
        ),
      ),
      );
  }
} 