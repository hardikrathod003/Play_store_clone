import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore/screens/Apppage.dart';
import 'package:playstore/screens/Homepage.dart';
import 'package:playstore/screens/gamepage.dart';
import 'package:playstore/screens/installpage.dart';
import 'package:playstore/screens/ios.dart';
import 'Global.dart';

void main() {
  runApp(
    playstore(),
  );
}

class playstore extends StatefulWidget {
  const playstore({Key? key}) : super(key: key);

  @override
  State<playstore> createState() => _playstoreState();
}

class _playstoreState extends State<playstore> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Global.isIOS)
        ? CupertinoApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/': (context) => IosPage(),
              'game_page': (context) => GamePage(),
              'app_page': (context) => AppPage(),
              'updates': (context) => Updates(),
              'search': (context) => Search(),
            },
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              "/": (context) => const HomePage(),
              "install_page": (context) => const InstallPage(),
            },
          );
  }
}
