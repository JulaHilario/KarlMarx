import 'package:flutter/material.dart';
import 'AppDrawer.dart';

class AboutView extends StatelessWidget {
  static const String routeName = '/about';

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
                  text: 'The Communist Manifesto',
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
                        leading: Icon(Icons.wb_sunny_outlined),
                        title: Text(
                            'The Communist Manifesto, German Manifest der Kommunistischen Partei, (“Manifesto of the Communist Party”), pamphlet (1848) written by Karl Marx and Friedrich Engels to serve as the platform of the Communist League. It became one of the principal programmatic statements of the European socialist and communist parties in the 19th and early 20th centuries.',
                            style: TextStyle(
                                height: 2,
                                fontSize: 13,
                                fontFamily: 'courier')),
                      ),
                      ListTile(
                        leading: Icon(Icons.wb_sunny_outlined),
                        title: Text(
                            'The Communist Manifesto embodies the authors’ materialistic conception of history (“The history of all hitherto existing society is the history of class struggles”), and it surveys that history from the age of feudalism down to 19th-century capitalism, which was destined, they declared, to be overthrown and replaced by a workers’ society. The communists, the vanguard of the working class, constituted the section of society that would accomplish the “abolition of private property” and “raise the proletariat to the position of ruling class.”',
                            style: TextStyle(
                                height: 2,
                                fontSize: 13,
                                fontFamily: 'courier')),
                      ),
                      ListTile(
                        leading: Icon(Icons.wb_sunny_outlined),
                        title: Text(
                            'The Communist Manifesto opens with the dramatic words “A spectre is haunting Europe—the spectre of communism” and ends by stating, “The proletarians have nothing to lose but their chains. They have a world to win. Workingmen of all countries, unite.”',
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
