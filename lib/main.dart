import 'package:flutter/material.dart';
import 'package:tinterview/viewers/BackendPage.dart';
import 'viewers/Home.dart';
import 'viewers/Login.dart';
import 'viewers/Cadastro.dart';
import 'viewers/SearchField.dart';
import 'viewers/FrontendPage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(MaterialApp(
        home: BackendPage(),

        debugShowCheckedModeBanner: false,
    ));
}

