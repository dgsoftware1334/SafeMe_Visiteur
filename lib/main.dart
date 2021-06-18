// @dart=2.9

import 'package:flutter/material.dart';

import 'package:Safe_Visiteur/pages/Home.dart';
import 'package:Safe_Visiteur/pages/AboutApp.dart';
import 'package:Safe_Visiteur/pages/About.dart';
import 'package:Safe_Visiteur/pages/services.dart';
import 'package:Safe_Visiteur/pages/Servicesdet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('Learn app'),
      home: Home(),
      routes: {
        'About': (context) {
          return AboutUs();
        },
        'Home': (context) {
          return Home();
        },
        'Services': (context) {
          return Services();
        },
        'AboutApp': (context) {
          return AboutApp();
        },
        'Servicesdet': (context) {
          return Servicesdet();
        },
      },
    );
  }
}
