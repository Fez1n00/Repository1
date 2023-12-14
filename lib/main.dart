// ignore_for_file: equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:gene/App_Controller.dart';
import 'package:gene/apostilas.dart';
import 'package:gene/login_page.dart';
import 'Home_page.dart';
import 'Mapas_mentais.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.blueGrey,
                brightness: AppController.instance.ThemeMode
                    ? Brightness.dark
                    : Brightness.light),

            initialRoute: "/",
            routes: {
              "/": (context) => Login_Page(),
              "/home": (context) => HomePage(),
              "/Aps": (context) => ApostPage(),
              "/Mental": (context) => PinterestClone(),
            },

            //HomePage(),
          );
        });
  }
}
