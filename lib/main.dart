import 'package:flutter/material.dart';
import 'package:kmarx/AppDrawer.dart';

import 'package:kmarx/homepage.dart';

void main() {
  runApp(KMARX());
}

// Cariella Jula E. Hilario

class KMARX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'KARL MARX',
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFECB3),
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.yellow.shade100,
                    Colors.pink.shade100,
                  ],
                )),
                child: Center(
                    child: RichText(
                        text: TextSpan(
                  text: 'Karl Marx!',
                  style: TextStyle(
                    color: Colors.pink,
                    fontFamily: 'raleway',
                    fontWeight: FontWeight.w500,
                    fontSize: 48,
                  ),
                ))))));
  }
}
