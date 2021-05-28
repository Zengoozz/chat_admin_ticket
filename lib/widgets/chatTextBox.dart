//#Packages
import 'package:flutter/material.dart';

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
    //Navigator.of(context).pop();
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
              child: Icon(
                Icons.attach_file,
                color: Theme.of(context).primaryColorDark,
                size: 30,
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
