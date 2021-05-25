//#Packages
import 'package:flutter/material.dart';

class FilterBar extends StatefulWidget {
  @override
  _FilterBarState createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  String dropdownValue = 'ID';

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 10),
          DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 10,
            style: TextStyle(color: Theme.of(context).primaryColor),
            underline: Container(
              height: 1,
              color: Theme.of(context).primaryColorDark,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>[
              'ID',
              'Username',
              'Assigned to',
              'Time Stamp',
              'Status',
              'Title'
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(width: 10),
          SizedBox(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Filter by...',
                hintStyle: TextStyle(color: Theme.of(context).hintColor),
                border: InputBorder.none,
              ),
            ),
            width: 150,
          ),
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
    ]);
  }
}
