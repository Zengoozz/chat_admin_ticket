//#Packages

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//#Data
import '../data/dummyData.dart';
//#Widgets
import './ticketItem.dart';
import './searchBar.dart';
//#Models
import '../models/ticketDetails.dart';

class TicketTable extends StatefulWidget {
  static const routeName = '/ticket-table';

  @override
  _TicketTableState createState() => _TicketTableState();
}

class _TicketTableState extends State<TicketTable> {
  List<TicketDetail> tickets;
  String query = '';

  void _deleteTicket(String id) {
    setState(() {
      allTickets.removeWhere((tic) => tic.id == id);
      Navigator.pop(context);
    });
  }

  @override
  void initState() {
    super.initState();

    tickets = allTickets;
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
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).orientation == Orientation.portrait
                  ? (MediaQuery.of(context).size.height -
                          appBar.preferredSize.height) *
                      0.1
                  : (MediaQuery.of(context).size.height -
                          appBar.preferredSize.height) *
                      0.2,
              ), /*child: SearchBar(
                text: query,
                onChanged: {},
              )), */
          Divider(),
          Expanded(
            child: ListView.builder(
                itemCount: allTickets.length,
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                itemBuilder: (context, index) {
                  return TicketItem(index, _deleteTicket);
                }),
          ),
        ],
      ),
    );
  }

  /* Widget buildSearch() => SearchBar(
        text: query,
        onChanged: searchTicket,
      ); */

 /*  List<TicketDetail> searchedTickets = allTickets;
  void searchTicket(String query) {
    allTickets.forEach((t) {
      final nameLower = t.name.toLowerCase();
      final usernameLower = t.userName.toLowerCase();
      final assignedLower = t.assignedTo.toLowerCase();
      final statusLower = t.status.toLowerCase();
      final id = t.id.toLowerCase();
      final searchLower = query.toLowerCase();

      if (nameLower.contains(searchLower) ||
          usernameLower.contains(searchLower) ||
          assignedLower.contains(searchLower) ||
          statusLower.contains(searchLower) ||
          id.contains(searchLower)) {
        searchedTickets.add(t);
      } 

      setState(() {
        this.query = query;
        this.tickets = searchedTickets;
      });
    });*/
  }

