import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Meu Curriculo"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Imagem
              Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                  bottom: 20,
                  left: 50,
                  right: 50,
                ),
                child: AspectRatio(
                  aspectRatio: 4 / 3,
                  child: Image.asset("assets/desenhoCartoon.jpeg"),
                ),
              ),

              // Textos
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "(11) 99999-9999",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Rua dos Devs - Apt 55",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Pedro Ruas",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              // espacamento
              SizedBox(height: 20),

              // Qualificacoes Pessoais
              subtitulos("Qualificacoes Pessoais"),

              // Resposta Qualificacoes Pessoais
              respostas(
                  text1: "Um Gostoso", text2: "Um Saboroso", text3: "Um Genio"),

              // Histórico Acadêmico
              subtitulos("Histórico Acadêmico"),

              // Resposta Histórico Acadêmico
              respostas(
                  text1: "Ensino Fundamental",
                  text2: "Ensino Médio",
                  text3: "Aulas Prgramação"),

              // Soft Skills
              subtitulos("Soft Skills"),

              // Resposta Soft Skills
              respostas(
                text1: "Disciplina",
                text2: "Organização",
                text3: "Capacidade de resolver problemas",
              ),
            ],
          ),
        ],
      ),
    );
  }

// Metodo subtitulo
  Widget subtitulos(String text) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 50,
          width: 10,
          color: Colors.red,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 8),
            height: 50,
            color: Colors.grey,
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
    );
  }

  // metodo respostas
  Widget respostas({String text1, String text2, String text3}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "- $text1",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "- $text2",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "- $text3",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
