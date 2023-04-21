import 'package:flutter/material.dart';
import 'package:tinterview/viewers/Login.dart';
import 'dart:async';

class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {
  Future<void> _carregarApp() async {
    await Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222222),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Center (
          child: SingleChildScrollView (
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "images/logo.png",
                    width: 400,
                    height: 300,
                  ),
                ),
                FutureBuilder(
                  future: _carregarApp(),
                  builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      // Quando o Future estiver concluído, navegue para a próxima página
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    }
                    // Construa uma tela de carregamento enquanto o Future estiver em andamento
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
