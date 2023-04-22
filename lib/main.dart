import 'package:flutter/material.dart';
import 'package:tinterview/viewers/BackendPage.dart';
import 'package:tinterview/viewers/BancoDeDadosPage.dart';
import 'package:tinterview/viewers/ItensSalvosPage.dart';
import 'package:tinterview/viewers/MobilePage.dart';
import 'viewers/HomePage.dart';
import 'viewers/LoginPage.dart';
import 'viewers/CadastroPage.dart';
import 'viewers/SearchField.dart';
import 'viewers/FrontendPage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(MaterialApp(
        home: Login(),


        debugShowCheckedModeBanner: false,
    ));
}

