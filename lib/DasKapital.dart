import 'package:flutter/material.dart';
import 'AppDrawer.dart';

class DasView extends StatelessWidget {
  static const String routeName = '/das';

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
                  text: 'Das Kapital',
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
                        leading: Icon(Icons.icecream_outlined),
                        title: Text(
                            'Das Kapital, (German: Capital) one of the major works of the 19th-century economist and philosopher Karl Marx (1818–83), in which he expounded his theory of the capitalist system, its dynamism, and its tendencies toward self-destruction. He described his purpose as to lay bare “the economic law of motion of modern society.” The first volume was published in Berlin in 1867; the second and third volumes, edited by his collaborator Friedrich Engels (1820–95), were published posthumously in 1885 and 1894, respectively.',
                            style: TextStyle(
                                height: 2,
                                fontSize: 12,
                                fontFamily: 'courier')),
                      ),
                      ListTile(
                        leading: Icon(Icons.icecream_outlined),
                        title: Text(
                            'Much of Das Kapital spells out Marx’s concept of the “surplus value” of labour and its consequences for capitalism. According to Marx, it was not the pressure of population that drove wages to the subsistence level but rather the existence of a large army of unemployed, which he blamed on the capitalists. He maintained that within the capitalist system, labour was a mere commodity that could gain only subsistence wages. Capitalists, however, could force workers to spend more time on the job than was necessary to earn their subsistence and then appropriate the excess product, or surplus value, created by the workers.',
                            style: TextStyle(
                                height: 2,
                                fontSize: 12,
                                fontFamily: 'courier')),
                      ),
                      ListTile(
                        leading: Icon(Icons.icecream_outlined),
                        title: Text(
                            'Because all profit results from an “exploitation of labour,” the rate of profit—the amount per unit of total capital outlay—depends largely on the number of workers employed. Because machines cannot be “exploited,” they cannot contribute to total profits, though they help labour produce more useful products. Only payroll capital—“variable capital”—is productive of surplus value and consequently of profit. The introduction of machines is profitable for the individual entrepreneur, to whom they give an advantage over his competitors. However, as outlay for machinery grows in relation to outlay for wages, profit declines in relation to total capital outlay. Thus, for each additional capital outlay, the capitalist will receive less and less return and can attempt to postpone his bankruptcy only by applying pressure on the workers. Ultimately, according to Das Kapital, the “capitalist class becomes unfit to rule, because it is incompetent to assure an existence to its slave within his slavery.” Consequently, the capitalist system collapses, and the working class inherits economic and political power.',
                            style: TextStyle(
                                height: 2,
                                fontSize: 12,
                                fontFamily: 'courier')),
                      ),
                      ListTile(
                        leading: Icon(Icons.icecream_outlined),
                        title: Text(
                            'Because all profit results from an “exploitation of labour,” the rate of profit—the amount per unit of total capital outlay—depends largely on the number of workers employed. Because machines cannot be “exploited,” they cannot contribute to total profits, though they help labour produce more useful products. Only payroll capital—“variable capital”—is productive of surplus value and consequently of profit. The introduction of machines is profitable for the individual entrepreneur, to whom they give an advantage over his competitors. However, as outlay for machinery grows in relation to outlay for wages, profit declines in relation to total capital outlay. Thus, for each additional capital outlay, the capitalist will receive less and less return and can attempt to postpone his bankruptcy only by applying pressure on the workers. Ultimately, according to Das Kapital, the “capitalist class becomes unfit to rule, because it is incompetent to assure an existence to its slave within his slavery.” Consequently, the capitalist system collapses, and the working class inherits economic and political power.Although Marx approached capitalism as an economist and prided himself on the conceptual rigour of his work, Das Kapital—especially the first volume—is rich in empirical description. Marx praised the work of the Factory Inspectorate, from whose reports he drew vivid and terrifying examples of the overwork and ill-treatment from which British working people suffered. His savage description of so-called “primitive accumulation”—the process whereby Britain was transformed from a precapitalist to a capitalist economy—is a polemical rather than an analytic triumph.',
                            style: TextStyle(
                                height: 2,
                                fontSize: 12,
                                fontFamily: 'courier')),
                      )
                    ]))
              ]))
        ]));
  }
}
