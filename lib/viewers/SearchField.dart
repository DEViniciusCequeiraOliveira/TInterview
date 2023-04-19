import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222222),
      appBar: AppBar(
        backgroundColor: Color(0xFF222222),
        title: Row(
          children: <Widget>[
            Image.asset(
              "images/logo.png",
              width: 40,
              height: 40,
            ),
          ],
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
          Padding(
            padding: EdgeInsets.all(16.0),

            child: TextField(

              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Digite sua busca',
                suffixIcon: Icon(Icons.search),
                labelStyle: TextStyle(
                  color: Color(0xFFeeeeee) // Cor do rótulo
                ),
                suffixStyle: TextStyle(
                  color: Color(0xFFeeeeee), // Cor do ícone de sufixo
                ),
                border: OutlineInputBorder(

                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(FlutterIcons.js_faw5d),
                iconSize: 48,
                color: Color(0xFFeeeeee),
                onPressed: () {
                  // Ação do ícone
                }, // Ícone JavaScript
              ),
              IconButton(
                  icon: Icon(FlutterIcons.html5_faw5d), // Ícone HTML
                  iconSize: 48,
                  color: Color(0xFFeeeeee),
                  onPressed: () {
                    // Ação do ícone
                  }),
              IconButton(
                  icon: Icon(FlutterIcons.css3_alt_faw5d), // Ícone HTML
                  iconSize: 48,
                  color: Color(0xFFeeeeee),
                  onPressed: () {
                    // Ação do ícone
                  }),
              IconButton(
                  icon: Icon(FlutterIcons.python_faw5d), // Ícone HTML
                  iconSize: 48,
                  color: Color(0xFFeeeeee),
                  onPressed: () {
                    // Ação do ícone
                  }),
              IconButton(
                  icon: Icon(FlutterIcons.java_faw5d), // Ícone HTML
                  iconSize: 48,
                  color: Color(0xFFeeeeee),
                  onPressed: () {
                    // Ação do ícone
                  }),
            ],
          ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () {
                  // Ação do quadrado clicável "frontend"
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF363533),
                  ),
                  child: Center(
                    child: Text(
                      'Frontend',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFFeeeeee),
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  // Ação do quadrado clicável "Backend"
                },
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF363533),
                  ),
                  child: Center(
                    child: Text(
                      'Backend',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFFeeeeee),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        // Ação do quadrado clicável "Mobile"
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFF363533),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Mobile',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color(0xFFeeeeee),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Ação do quadrado clicável "banco de dados"
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF363533),
                        ),
                        child: Center(
                          child: Text(
                            'Banco de dados',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color(0xFFeeeeee),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                    // Ação de retornar a lista de busca
                    );
              },
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(SearchField());
}
