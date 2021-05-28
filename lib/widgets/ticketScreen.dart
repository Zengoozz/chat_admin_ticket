//#Packages
import 'package:chat_admin/models/ticketDetails.dart';
import 'package:flutter/material.dart';
//#Data
import '../data/dummyData.dart';
//#Widgets
import './ticketItem.dart';
import './filterBar.dart';

class TicketTable extends StatefulWidget {
  static const routeName = '/ticket-table';
  final List<TicketDetail> tickets = ticket;

  @override
  _TicketTableState createState() => _TicketTableState();
}

class _TicketTableState extends State<TicketTable> {
  void _deleteTicket(String id) {
    setState(() {
      ticket.removeWhere((tic) => tic.id == id);
      Navigator.pop(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    final PreferredSizeWidget appBar = AppBar(
      backgroundColor: Theme.of(context).accentColor,
      iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      title: Text(
        'Tickets Table',
        style: TextStyle(color: Colors.black),
      ),
      elevation: 5,
    );
    //final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    return Scaffold(
      appBar: appBar,
      body: //Card(
          //margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          //elevation: 5,
          //child:
          Column(
        children: [
          Container(
              height:MediaQuery.of(context).orientation == Orientation.portrait? (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height ) * 0.1 : (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height ) * 0.2,
              child: FilterBar()),
          Divider(),
          Expanded(
              child: ListView.builder(
                  itemCount: ticket.length,
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  itemBuilder: (context, index) {
                    return TicketItem(index,_deleteTicket);
                  }),
            ),
          
        ],
      ),
    );
    //);
  }
}
