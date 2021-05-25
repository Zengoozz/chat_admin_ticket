//#Packages
import 'package:flutter/material.dart';
//#Widgets
import './widgets/chatScreen.dart';
import './widgets/ticketScreen.dart';
//#Fonts
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cayshely',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.white,
        hintColor: Colors.grey[400],
        textTheme: GoogleFonts.cairoTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => ChatScreen(),
        TicketTable.routeName: (ctx) => TicketTable(),
      },
    );
  }
}
