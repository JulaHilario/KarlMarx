import 'package:flutter/material.dart';
import 'package:kmarx/homepage.dart';
import '../routes.dart';
import '../educ.dart';
import '../works.dart';
import '../about.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200.0,
        child: Drawer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 35.0),
              child: FlatButton.icon(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xFFF06292),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashBoard()),
                  );
                },
                label: Text("Back",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13.0,
                        color: Colors.pink[300])),
                color: Colors.white,
              ),
            ),
            ListTile(
                leading: Icon(Icons.person_outline),
                title: Text('Early Life'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, routes.early);
                }),
            ListTile(
                leading: Icon(Icons.school_outlined),
                title: Text('Education'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, routes.educ);
                }),
            ListTile(
                leading: Icon(Icons.format_quote_rounded),
                title: Text('Famous Quotes '),
                onTap: () {
                  Navigator.pushReplacementNamed(context, routes.works);
                }),
            ListTile(
                leading: Icon(Icons.book_outlined),
                title: Text('The Communist Manifesto'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, routes.about);
                }),
            ListTile(
                leading: Icon(Icons.book_outlined),
                title: Text('Das kapital'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, routes.das);
                }),
          ],
        )));
  }
}
