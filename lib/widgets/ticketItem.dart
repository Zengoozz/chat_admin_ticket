//#Packages
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//#Data
import '../data/dummyData.dart';
//#Widgets
import './moreTicketDetail.dart';

class TicketItem extends StatelessWidget {
  final int index;
  final Function deleteTicket;
  TicketItem(this.index,this.deleteTicket);

  void _moreDetails(BuildContext ctx) {
    showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      context: ctx,
      builder: (bctx) {
        return MoreDetails(index,deleteTicket);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      /*color: ticket[index].status == 'Closed'
              ? Colors.red
              : ticket[index].status == 'Waiting'
                  ? Colors.yellow
                  : Colors.green,*/
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          maxRadius: 10,
          backgroundColor: ticket[index].status == 'Closed'
              ? Colors.red
              : ticket[index].status == 'Waiting'
                  ? Colors.yellow
                  : Colors.green,
          child: Padding(
            padding: EdgeInsets.all(5),
          ),
        ),
        title: Text(
          ticket[index].name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          DateFormat.yMMMMd().format(ticket[index].timeStamp),
          style: TextStyle(
            color: Theme.of(context).hintColor,
            fontSize: 11,
          ),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.expand_more_outlined,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () => _moreDetails(context),
        ),
      ),
    );

  }
}
