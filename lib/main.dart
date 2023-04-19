import 'package:flutter/material.dart';
import 'viewers/Home.dart';
import 'viewers/Login.dart';
import 'viewers/Cadastro.dart';
import 'viewers/SearchField.dart';
import 'viewers/frontend.dart';

void main(){
    runApp(MaterialApp(
        home: frontend(),

        debugShowCheckedModeBanner: false,
    ));
}

