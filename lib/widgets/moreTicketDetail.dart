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
                    '- ID: ${ticket[index].id}',
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
                    '- Title: ${ticket[index].name}',
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
                    '- Ticket Status: ${ticket[index].status}',
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
                    '- Date: ${DateFormat.yMEd().format(ticket[index].timeStamp)}',
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
                    '- Time: ${DateFormat.jm().format(ticket[index].timeStamp)}',
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
                    '- Username: ${ticket[index].userName}',
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
                    '- Assigned To: ${ticket[index].assignedTo}',
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
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: ()=>handlerEvent(ticket[index].id),
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
