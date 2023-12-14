// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:gene/App_Controller.dart';
import 'package:gene/apostilas.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return (HomePageStates());
  }
}

class HomePageStates extends State<HomePage> {
  Widget _hpBody() {
    return Row(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Alinhamento da coluna, dom seu eixo princial
                crossAxisAlignment: CrossAxisAlignment
                    .center, //alinha  os childrens da colum basicamente

                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 236, 133, 43))),
                    onPressed: (() {
                      Navigator.of(context).pushNamed("/Aps");
                    }),
                    child: Text('Apostilas'),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 400,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 236, 133, 43))),
                      onPressed: (() {
                        Navigator.of(context).pushNamed("/Mental");
                      }),
                      child: Text('Mapas mentais')),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 400,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 236, 133, 43))),
                    onPressed: (() {
                      AlertDialog();
                    }),
                    child: Text('Locais dos fósseis'),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _alertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text('Em breve!'),
            content:
                Text("Estamos trabalhando para te fornecer o nosso melhor!"),
            actions: <Widget>[
              new FloatingActionButton.small(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.check_circle),
              ),
            ]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Início'),
          backgroundColor: Colors.orange,
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              child: Image.asset(
                "assets/Images/Background1.png",
                fit: BoxFit.cover,
              ),
            ),
            _hpBody(),
          ],
        ));
  }
}

//Área de botoes da home Page

class CuustomButton extends StatelessWidget {
  const CuustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(onPressed: () {}, child: Text("add Photo")));
  }
}
