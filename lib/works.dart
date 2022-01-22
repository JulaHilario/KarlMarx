import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'AppDrawer.dart';

class WorksView extends StatelessWidget {
  static const String routeName = '/works';

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
                  text: 'Famous Quotes',
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
        body: Center(
            child: Stack(children: <Widget>[
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
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                RichText(
                    text: TextSpan(
                        text: ' Quotes by Karl Marx ',
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontFamily: 'courier',
                          fontWeight: FontWeight.w800,
                          fontSize: 27,
                        ))),
                Text(
                  '',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5),
                ),
                Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Communism and Socialism ',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'courier',
                              fontSize: 25,
                            ))),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      width: 350,
                      height: 100,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.red.shade200),
                            ),
                            RichText(
                                text: TextSpan(
                                    text:
                                        ' From each according to his abilities, to each according to his needs. ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                        back: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text:
                                        ' —— Karl Marx: Critique of the Gotha Program',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Communism and Socialism ',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'courier',
                              fontSize: 25,
                            ))),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      width: 350,
                      height: 100,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text:
                                        ' A specter is haunting Europe—the specter of Communism. ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                        back: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text:
                                        ' —— Karl Marx and Friedrich Engels: The Communist Manifesto',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'History ',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'courier',
                              fontSize: 25,
                            ))),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      width: 350,
                      height: 100,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text:
                                        'Hegel remarks somewhere that all great world-historic facts and personages appear, so to speak, twice. He forgot to add: the first time as tragedy, the second time as farce. ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                        back: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text: ' —— Karl Marx',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Religion ',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'courier',
                              fontSize: 25,
                            ))),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      width: 350,
                      height: 100,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text:
                                        'Religion is the sigh of the oppressed creature, the feelings of a heartless world, just as it is the spirit of unspiritual conditions. It is the opium of the people. ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                        back: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text: ' —— Karl Marx ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Revolution and Rebellion ',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'courier',
                              fontSize: 24,
                            ))),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      width: 350,
                      height: 100,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text:
                                        'Let the ruling classes tremble at a Communist revolution. The proletarians have nothing to lose but their chains. They have a world to win. Workers of the world, unite! ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                        back: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text:
                                        ' —— Karl Marx and Friedrich Engels: The Communist Manifesto',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Value ',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'courier',
                              fontSize: 25,
                            ))),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.all(5),
                      width: 350,
                      height: 100,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text:
                                        ' Nothing can have value without being an object of utility.',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                        back: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.red.shade200,
                              ),
                            ),
                            RichText(
                                text: TextSpan(
                                    text: ' —— Karl Marx: Das Kapital',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'courier',
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15,
                                    ))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ])));
  }
}
