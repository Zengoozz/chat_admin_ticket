//#Packages
import 'package:flutter/material.dart';
/* import 'package:image_picker/image_picker.dart';
import 'dart:io';
 */
class ChatTxtBox extends StatefulWidget {
  final Function eventHandler;
  ChatTxtBox(this.eventHandler);

  @override
  _ChatTxtBoxState createState() => _ChatTxtBoxState();
}

class _ChatTxtBoxState extends State<ChatTxtBox> {
  final msgController = TextEditingController();
  void _submitData() {
    if (msgController.text.isEmpty) return;

    final enteredMsg = msgController.text;

    if (enteredMsg.isEmpty) return;

    widget.eventHandler(enteredMsg);
    msgController.clear();
    //Navigator.of(context).pop();
  }

  Widget iconCreation(
      Color color, IconData icon, String text, Function function) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: IconButton(
            onPressed: function,
            icon: Icon(icon),
            color: Colors.white,
            iconSize: 20,
          ),
        ),
        SizedBox(height: 5),
        Text(text),
      ],
    );
  }

/* String filePath;
  Future getImageGallery() async{
    var imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      filePath=imageFile.path.split('/')[6];
      _image=imageFile;
    });
  } */

  showAttachment() {
    showModalBottomSheet<dynamic>(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (bctx) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        iconCreation(
                            Colors.indigo, Icons.camera_alt, 'Camera', () {}),
                        SizedBox(width: 30),
                        iconCreation(
                            Colors.pink, Icons.insert_photo, 'Gallery', () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).hintColor,
              width: 1,
            ),
            color: Colors.white),
        padding: EdgeInsets.only(
          left: 10,
          bottom: 3,
          top: 10,
        ),
        height: 60,
        width: double.infinity,
        //color: Theme.of(context).primaryColorDark,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              //child: Container(
              //height: 40,
              //width: 40,
              //decoration: BoxDecoration(
              //color: Colors.blue,
              //borderRadius: BorderRadius.circular(30),
              //),
              child: IconButton(
                onPressed: showAttachment,
                icon: Icon(Icons.attach_file),
                color: Theme.of(context).primaryColorDark,
                iconSize: 30,
              ),
            ),
            //),
            SizedBox(width: 15),
            Expanded(
              child: TextField(
                controller: msgController,
                decoration: InputDecoration(
                  hintText: 'Write a message...',
                  hintStyle: TextStyle(color: Theme.of(context).hintColor),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(width: 15),
            GestureDetector(
              onTap: _submitData,
              child: Container(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.send,
                  color: Theme.of(context).primaryColorDark,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
