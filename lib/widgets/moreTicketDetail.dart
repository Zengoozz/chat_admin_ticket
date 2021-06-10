//#Packages
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//#Data
import '../data/dummyData.dart';

class MoreDetails extends StatelessWidget {
  final int index;
  final Function handlerEvent;
  MoreDetails(this.index,this.handlerEvent);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    '- ID: ${allTickets[index].id}',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    '- Title: ${allTickets[index].name}',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    '- Ticket Status: ${allTickets[index].status}',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    '- Date: ${DateFormat.yMEd().format(allTickets[index].timeStamp)}',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    '- Time: ${DateFormat.jm().format(allTickets[index].timeStamp)}',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    '- Username: ${allTickets[index].userName}',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              Row(
                children: [
                  Text(
                    '- Assigned To: ${allTickets[index].assignedTo}',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: ()=>handlerEvent(allTickets[index].id),
                    child: Text(
                      'Delete',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
