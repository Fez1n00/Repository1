import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:gene/App_Controller.dart';

class ApostPage extends StatefulWidget {
  const ApostPage({super.key});

  @override
  State<ApostPage> createState() => _ApostPageState();
}

class _ApostPageState extends State<ApostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Color.fromRGBO(255, 196, 144, 1),
        child: Center(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "As apostilas serão mostradas aqui",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
