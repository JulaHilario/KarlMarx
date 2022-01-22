import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:kmarx/DasKapital.dart';
import 'package:kmarx/Early.dart';
import 'package:kmarx/about.dart';
import 'package:kmarx/educ.dart';
import 'package:kmarx/works.dart';
import 'routes.dart';
import 'package:flutter/painting.dart';
import 'package:kmarx/AppDrawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KARL MARX',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: DashBoard(),
        routes: {
          routes.educ: (context) => EducView(),
          routes.works: (context) => WorksView(),
          routes.about: (context) => AboutView(),
          routes.das: (context) => DasView(),
          routes.early: (context) => EarlyView(),
        });
  }
}

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.pink[300], //change your color here
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: RichText(
              text: TextSpan(
                  text: 'Karl Marx',
                  style: TextStyle(
                    color: Colors.pink,
                    fontFamily: 'raleway',
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ))),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.pink[300],
              ),
              onPressed: () {},
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.pink,
            currentIndex: 0,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                title: Text(""),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.email),
                title: Text(""),
              ),
              ////////////////////////
            ]),
        backgroundColor: Color(0xFFFFECB3),
        body: Stack(children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.yellow.shade100,
                  Colors.pink.shade100,
                ],
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.topCenter,
                      width: 300,
                      height: 600,
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(
                          bottom: 100, right: 15, top: 50, left: 10),
                      color: Colors.yellow[100],
                      child: Column(children: [
                        RichText(
                            text: TextSpan(
                                text: ' Who is Karl Marx? ',
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontFamily: 'courier',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                ))),
                        Container(
                            width: 360,
                            height: 400,
                            padding: EdgeInsets.all(5),
                            margin: EdgeInsets.only(
                                bottom: 20, right: 15, left: 15, top: 20),
                            color: Colors.white,
                            child: Align(
                              child: RichText(
                                  text: TextSpan(
                                      text:
                                          ' Karl Marx was a German philosopher during the 19th century. He worked primarily in the realm of political philosophy and was a famous advocate for communism. He cowrote The Communist Manifesto and was the author of Das Kapital, which together formed the basis of Marxism. ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'courier',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                      ))),
                            ))
                      ])),
                ],
              ))
        ]));
  }
}
