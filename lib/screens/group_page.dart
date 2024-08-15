import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class OtherPage extends StatefulWidget {
  @override
  State<OtherPage> createState() => _OtherPageState();

}

class _OtherPageState extends State<OtherPage> {

  File ? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group Name"),
        ),
      body: Center(
        child: Column(
          children: [
            Text("Take a photo with your friends at dinner time"),
            MaterialButton(
              color: Colors.blue,
              child: const Text(
                "Camera Roll",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                _pickImageFromGallery();
              }
              ),
              MaterialButton(
                color: Colors.red,
                child: const Text(
                  "Take Photo",
                  style: TextStyle(
                    color: Colors.white,
                  ),

                ),
                onPressed: () {
                  _pickImageFromCamera();
                }
                ),
                const SizedBox(height : 20),
                _selectedImage != null ? Image.file(_selectedImage!) : const Text("Select Image")
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

