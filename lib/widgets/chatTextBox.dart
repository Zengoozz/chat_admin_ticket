//#Packages
import 'package:flutter/material.dart';

class ChatTxtBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black38
        ),
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
                color: Theme.of(context).accentColor,
                size: 30,
              ),
            ),
            //),
            SizedBox(width: 15),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Write a message...',
                  hintStyle: TextStyle(color: Theme.of(context).hintColor),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(width: 15),
            GestureDetector(
              onTap: () {},
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
