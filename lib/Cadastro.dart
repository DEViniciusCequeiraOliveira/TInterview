import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
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
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(
                        32,
                        16,
                        32,
                        16,
                      ),
                      hintText: "Nome",
                      hintStyle: TextStyle(color: Color(0xFFE7D110)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Color(0xFFE7D110)),
                      ),
                    ),
                  ),
                ),
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
                        borderSide: BorderSide(color: Color(0xFFE7D110)),
                      ),
                    ),
                  ),
                ),
                TextField(
                  autofocus: true,
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
                        color: Color(0xFFE7D110),
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: ElevatedButton(
                      child: Text(
                        "Cadastrar",
                        style:
                            TextStyle(color: Color(0xFF323232), fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE7D110)),
                      onPressed: () {}),
                ),

              ],
            ),
          ))),
    );
  }
}
