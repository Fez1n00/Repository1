// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import "App_Controller.dart";

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  Widget _body() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context)
            .size
            .height, //o singleChild tem que ter um tamanho especifico por isso o mediaquery pega um tamanho do context
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 0.5,
              ),
              Container(
                height: 250,
                child: Image.asset(
                  "assets/Images/LOGO.png",
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/home");
                },
                child: Text("iniciar"),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 236, 133, 43))),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Row(children: [
              CustomSwich(), //classe componentizada em outro lugar como stateless. Assim, só precisa chamer ela aonde quisermos
            ])
          ],
          title: Text("Bem vindo ao GENE"),
          backgroundColor: Colors.orange,
        ),
        //o SingleChild abaixo vai fazer com que os filhos dele tenham um scroll para que quando o teclado aparecer na tela não os cubra
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/Images/Background1.png",
                  fit: BoxFit.cover),
            ),
            Container(color: Colors.black.withOpacity(0.3)),
            _body(),
          ],
        ));
  }
}

//A PARTIR DAQUI FAREMOS CLASSES PARA BOTÕES, PARA O CÓDIGO FICAR MAIS LIMPO
class CustomSwich extends StatelessWidget {
  const CustomSwich({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
          value: AppController.instance.ThemeMode,
          onChanged: (value) {
            AppController.instance.ChangeTheme();
          }),
    );
  }
}

class customBotoes extends StatelessWidget {
  const customBotoes({super.key});

  @override
  Widget build(BuildContext context) {
    return (Container(
      child: ElevatedButton(
        onPressed: () {},
        child: null,
      ),
    ));
  }
}
