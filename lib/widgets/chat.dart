//#Packages
import 'package:flutter/material.dart';
//#Data
import '../data/dummyData.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: msgs.length,
      padding: EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
                  child: Align(
                    alignment: (msgs[index].msgType == 'reciever'
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: (msgs[index].msgType == 'reciever'
                            ? Theme.of(context).hintColor
                            : Theme.of(context).primaryColorDark),
                      ),
                      padding: EdgeInsets.all(15),
                      child: Text(
                        (msgs[index].msgContent),
                        style: TextStyle(color: Theme.of(context).accentColor),/*TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),*/
                      ),
                    ),
                  ),
                );
              
            
          
        
      },
    );
  }
}
