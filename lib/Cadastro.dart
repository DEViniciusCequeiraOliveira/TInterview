import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  // controladores
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  String _mensagemErro = "";

  void validarCampos() {
    // recuperar dados dos campos
    String nome = _controllerNome.text.trim();
    String email = _controllerEmail.text.trim();
    String senha = _controllerSenha.text;

    if (nome.isEmpty) {
      setState(() {
        _mensagemErro = "Preencha o nome";
      });
      return;
    }

    if (email.isEmpty || !email.contains("@")) {
      setState(() {
        _mensagemErro = "Formato de email inválido";
      });
      return;
    }

    if (senha.length < 5) {
      setState(() {
        _mensagemErro = "A senha deve ter pelo menos 5 caracteres";
      });
      return;
    }

    // fazer algo com os dados validados
    // ...

    // limpar mensagem de erro, se houver
    setState(() {
      _mensagemErro = "";
    });
  }


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
                    controller: _controllerNome,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20, color: Color(0xFFEEEEEE)),
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
                    controller: _controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20, color: Color(0xFFEEEEEE)),
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
                  controller: _controllerSenha,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 20, color: Color(0xFFEEEEEE)),
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
                      onPressed: () {
                        validarCampos();
                      }),
                ),
               Center (
                 child: Text(_mensagemErro,
                    style: TextStyle(color: Colors.red, fontSize: 20))
              )],
            ),
          ))),
    );
  }
}
