import 'package:flutter/material.dart';


class frontend extends StatefulWidget {
  @override
  _frontendState createState() => _frontendState();
}

class _frontendState extends State<frontend> {
  List<bool> _pressed = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222222),
      appBar: AppBar(
        backgroundColor: Color(0xFF222222),
        centerTitle: true,
        title: Image.asset(
          "images/logo.png",
          width: 50,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context); // volta para a tela anterior
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () {
              // Ação do ícone de itens salvos
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Ação do ícone de menu hamburguer
            },
          ),
        ],
      ),
      body: Column(
          children: <Widget>[
          SizedBox(height: 16),
          InkWell(
            onTap: () {
              // Ação do anúncio quando for clicado
              print('Anúncio clicado!');
            },
            child: Container(
              width: double.infinity,
              height: 100,
              color: Colors.grey,
              child: Center(
                child: Text(
                  'Anúncio', // Conteúdo da caixa de anúncio
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
            SizedBox(height: 16),
           Column(
             children: <Widget>[
               Text("Tipo de Entrevista", style: TextStyle(fontSize: 20, color: Color(0xFFD9D9D9), fontWeight: FontWeight.bold)),

            SizedBox(height: 16),

      InkWell(
        onTap: () {
          setState(() {
            _pressed[0] = !_pressed[0];
          }
          // Ação do botão quando for clicado
          );
        },
        child: Container(
          width: 120,
          height: 50,
          decoration: BoxDecoration(
            color: _pressed[0] ? Color(0xFFD9D9D9) : Color(0xFF363533),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: _pressed[0] ? Color(0xFFD9D9D9) : Color(0xFFFAE800),
              width: 2,
            )
          ),
          child: Center(
            child: Text(
              'Code Interview',
              style: TextStyle(
                color: _pressed[0] ? Color(0xFF8A8787) : Color(0xFFFAE800),

                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
            SizedBox(height: 16),
            InkWell(
              onTap: () {
                setState(() {
                  _pressed[1] = !_pressed[1];
                }
                  // Ação do botão quando for clicado
                );
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    color: _pressed[1] ? Color(0xFFD9D9D9) : Color(0xFF363533),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: _pressed[1] ? Color(0xFFD9D9D9) : Color(0xFFFAE800),
                      width: 2,
                    )
                ),
                child: Center(
                  child: Text(
                    'Entrevista Técnica',
                    style: TextStyle(
                      color: _pressed[1] ? Color(0xFF8A8787) : Color(0xFFFAE800),

                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
        ],

      ),
            SizedBox(height: 16),
            Column(children: <Widget> [
              Text("Senioridade", style: TextStyle(fontSize: 20, color: Color(0xFFD9D9D9), fontWeight: FontWeight.bold)),
              SizedBox(height: 16)
            ],
            ),

            Row(

              children: <Widget>[
                InkWell(

                  onTap: () {
                    setState(() {
                      _pressed[2] = !_pressed[2];
                    }
                      // Ação do botão quando for clicado
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 8, right: 8),
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: _pressed[2] ? Color(0xFFD9D9D9) : Color(0xFF363533),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: _pressed[2] ? Color(0xFFD9D9D9) : Color(0xFFFAE800),
                          width: 2,
                        )
                    ),
                    child: Center(
                      child: Text(
                        'Estágio',
                        style: TextStyle(
                          color: _pressed[2] ? Color(0xFF8A8787) : Color(0xFFFAE800),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                InkWell(
                  onTap: () {
                    setState(() {
                      _pressed[3] = !_pressed[3];
                    }
                      // Ação do botão quando for clicado
                    );
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                        color: _pressed[3] ? Color(0xFFD9D9D9) : Color(0xFF363533),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: _pressed[3] ? Color(0xFFD9D9D9) : Color(0xFFFAE800),
                          width: 2,
                        )
                    ),
                    child: Center(
                      child: Text(
                        'Trainee',
                        style: TextStyle(
                          color: _pressed[3] ? Color(0xFF8A8787) : Color(0xFFFAE800),

                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),





              ],
            )

          ],
      )
    );
  }
}

void main() {
  runApp(frontend());
}
