import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeeeee),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Center (
              child: SingleChildScrollView (
                child: Column(
                  children: <Widget>[
                    (Padding(
                        padding: EdgeInsets.only(bottom:32),
                        child: Image.asset(
                          "images/logo.png",
                          width: 400,
                          height: 300,
                        )
                    ))
                  ],
                ),
              )
          )
      ),
    );
  }
}
