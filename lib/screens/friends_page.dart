import 'package:flutter/material.dart';
import 'package:searchable_listview/searchable_listview.dart';

class FriendItem extends StatelessWidget {
  final Friend friend;

  const FriendItem({Key? key, required this.friend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(friend.avatarUrl),
      ),
      title: Text(friend.name),
    );
  }
}

class FriendsPage extends StatelessWidget {
  final List<Friend> friends = [
    Friend(name: "Andwele Ancheta", avatarUrl: "https://images.unsplash.com/photo-1591101046979-cb6f3f486460?q=80&w=2128&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    Friend(name: "John Doe", avatarUrl: "https://plus.unsplash.com/premium_photo-1689977968861-9c91dbb16049?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    Friend(name: "Jane Smith", avatarUrl: "https://plus.unsplash.com/premium_photo-1688572454849-4348982edf7d?q=80&w=3088&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    Friend(name: "Ileane Huang", avatarUrl: "https://images.unsplash.com/photo-1679310446454-f94b53167675?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    // Add more friends here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search Friends"),
      ),
      body: SearchableList<Friend>(
        initialList: friends,
        itemBuilder: (Friend friend) => FriendItem(friend: friend),
        filter: (value) => friends
            .where((element) => element.name.toLowerCase().contains(value.toLowerCase()))
            .toList(),
        inputDecoration: InputDecoration(
          labelText: "Search Friend",
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

class Friend {
  final String name;
  final String avatarUrl;

  Friend({required this.name, required this.avatarUrl});
}