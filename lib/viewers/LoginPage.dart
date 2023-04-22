import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:tinterview/viewers/CadastroPage.dart';
import 'package:tinterview/viewers/SearchField.dart';
import 'package:tinterview/controllers/LoginSocial.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController _loginController = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF323232),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                (Padding(
                    padding: EdgeInsets.only(bottom: 50),
                    child: Image.asset(
                      "images/logo.png",
                      width: 70,
                      height: 70,
                    ))),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                        32,
                        16,
                        32,
                        16,
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Color(0xFFE7D110)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: Color(
                                0xFFeeeeee)), //não tá mudando a cor do textfield
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFFED00),
                        ),
                      ),
                    ),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(
                      32,
                      16,
                      32,
                      16,
                    ),
                    hintText: "Senha",
                    hintStyle: TextStyle(color: Color(0xFFE7D110)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Color(0xFFE222222),
                        width: 5.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFFED00),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: ElevatedButton(
                      child: Text(
                        "Entrar",
                        style:
                            TextStyle(color: Color(0xFF323232), fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE7D110)),
                      onPressed: () {}),
                ),
                Center(
                    child: GestureDetector(
                  onTap: () {
                    // instanciar a função de cadastro (feito)
                    var push = Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cadastro()));
                  },
                  child: RichText(
                      text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'ou ',
                        style: TextStyle(color: Color(0xFFeeeeee)),
                      ),
                      TextSpan(
                        text: 'clique aqui',
                        style: TextStyle(
                            color: Color(0xFFE7D110),
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' para criar uma conta',
                        style: TextStyle(color: Color(0xFFeeeeee)),
                      ),
                    ],
                  )),
                )),
                Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 4),
                    child: SignInButton(Buttons.Google,
                        text: "Login com o Google", onPressed: () async {
                      final user = await _loginController.signInWithGoogle();
                      if (user != null) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SearchField()));
                      } else {
                        // Handle unsuccessful sign-in
                        print('Failed to sign in with Google.');
                      }
                    })),
                Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: SignInButton(
                      Buttons.GitHub,
                      text: "Login com o GitHUb",
                      onPressed: () {
                        //instanciar a função de login com o github
                      },
                    )),
                Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: SignInButton(
                      Buttons.Facebook,
                      text: "Login com o Facebook",
                      onPressed: () {
                        //instanciar a função de login com o facebook
                      },
                    )),
                Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SearchField()));
                  },
                  child: Text('Iniciar como convidado',
                      style: TextStyle(
                          color: Color(0xFFE7D110),
                          fontWeight: FontWeight.bold)),
                )),
              ],
            ),
          ))),
    );
  }
}
