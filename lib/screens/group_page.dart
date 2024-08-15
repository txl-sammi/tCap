import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modular_ui/modular_ui.dart';



class GroupPage extends StatefulWidget {
  final String _groupName;

  GroupPage(this._groupName);

  @override
  State<GroupPage> createState() => _GroupPageState();

}

class _GroupPageState extends State<GroupPage> {

  File ? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._groupName)
        ),
      body: Center(
        child: Column(
          children: [
            _selectedImage != null ? Image.file(_selectedImage!) : const Text("Select Image"),
            const Text("Take a photo with your friends at dinner time"),
            MUIPrimaryButton(
              text: "Camera Roll",
              onPressed: () {
                _pickImageFromGallery();
              }
              ),
              MUIPrimaryButton(
                text: "Take Photo",
                onPressed: () {
                  _pickImageFromCamera();
                }
                ),
          ],
          ) 
        )
    );
  }



  Future _pickImageFromGallery() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });

  }


  Future _pickImageFromCamera() async {
    final returnedImage = await ImagePicker().pickImage(source: ImageSource.camera);

    if (returnedImage == null) return;
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

}

