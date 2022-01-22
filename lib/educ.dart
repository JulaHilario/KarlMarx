import 'package:flutter/material.dart';
import 'AppDrawer.dart';

class EducView extends StatelessWidget {
  static const String routeName = '/educ';

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
                  text: 'Education',
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
              child: ListView(children: [
                Container(
                    alignment: Alignment.topCenter,
                    width: 300,
                    height: 600,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(
                        bottom: 100, right: 15, top: 50, left: 10),
                    color: Colors.white,
                    child: ListView(children: const <Widget>[
                      ListTile(
                        leading: Icon(Icons.star_border_purple500_rounded),
                        title: Text(
                            'In October of 1835, Marx began studying at the University of Bonn. It had a lively and rebellious culture, and Marx enthusiastically took part in student life. In his two semesters there, he was imprisoned for drunkenness and disturbing the peace, incurred debts and participated in a duel. At the end of the year, Marx’s father insisted he enroll in the more serious University of Berlin.',
                            style: TextStyle(
                                height: 2,
                                fontSize: 13,
                                fontFamily: 'courier')),
                      ),
                      ListTile(
                        leading: Icon(Icons.star_border_purple500_rounded),
                        title: Text(
                            'In Berlin, he studied law and philosophy and was introduced to the philosophy of G.W.F. Hegel, who had been a professor at Berlin until his death in 1831. Marx was not initially enamored with Hegel, but he soon became involved with the Young Hegelians, a radical group of students including Bruno Bauer and Ludwig Feuerbach, who criticized the political and religious establishments of the day.',
                            style: TextStyle(
                                height: 2,
                                fontSize: 13,
                                fontFamily: 'courier')),
                      ),
                      ListTile(
                        leading: Icon(Icons.star_border_purple500_rounded),
                        title: Text(
                            'In October of 1835, Marx began studying at the University of Bonn. It had a lively and rebellious culture, and Marx enthusiastically took part in student life. In his two semesters there, he was imprisoned for drunkenness and disturbing the peace, incurred debts and participated in a duel. At the end of the year, Marx’s father insisted he enroll in the more serious University of Berlin.In 1836, as he was becoming more politically zealous, Marx was secretly engaged to Jenny von Westphalen, a sought-after woman from a respected family in Trier who was four years his senior.  This, along with his increasing radicalism, caused his father angst. In a series of letters, Marx’s father expressed concerns about what he saw as his son’s “demons,” and admonished him for not taking the responsibilities of marriage seriously enough, particularly when his wife-to-be came from a higher class.',
                            style: TextStyle(
                                height: 2,
                                fontSize: 13,
                                fontFamily: 'courier')),
                      )
                    ]))
              ]))
        ]));
  }
}
