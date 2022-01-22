import 'package:flutter/material.dart';
import 'AppDrawer.dart';

class EarlyView extends StatelessWidget {
  static const String routeName = '/early';

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
                  text: 'Early Life',
                  style: TextStyle(
                    color: Colors.pink,
                    fontFamily: 'raleway',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
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
                        leading: Icon(Icons.person_outlined),
                        title: Text(
                            'Karl Heinrich Marx was one of nine children born to Heinrich and Henrietta Marx in Trier, Prussia. His father was a successful lawyer who revered Kant and Voltaire, and was a passionate activist for Prussian reform. Although both parents were Jewish with rabbinical ancestry, Karl’s father converted to Christianity in 1816 at the age of 35.',
                            style: TextStyle(
                                height: 2,
                                fontSize: 13,
                                fontFamily: 'courier')),
                      ),
                      ListTile(
                        leading: Icon(Icons.person_outlined),
                        title: Text(
                            'This was likely a professional concession in response to an 1815 law banning Jews from high society. He was baptized a Lutheran, rather than a Catholic, which was the predominant faith in Trier, because he “equated Protestantism with intellectual freedom.” When he was 6, Karl was baptized along with the other children, but his mother waited until 1825, after her father died.',
                            style: TextStyle(
                                height: 2,
                                fontSize: 13,
                                fontFamily: 'courier')),
                      ),
                      ListTile(
                        leading: Icon(Icons.person_outlined),
                        title: Text(
                            'Marx was an average student. He was educated at home until he was 12 and spent five years, from 1830 to 1835, at the Jesuit high school in Trier, at that time known as the Friedrich-Wilhelm Gymnasium. The school’s principal, a friend of Marx’s father, was a liberal and a Kantian and was respected by the people of Rhineland but suspect to authorities. The school was under surveillance and was raided in 1832.',
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
