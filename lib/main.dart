import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      "Qual é a sua cor favorita?",
      "Qualé o seu animal favorito?"
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Perguntas"),
      ),
      body: Column(
        children: <Widget>[
          Text(perguntas[perguntaSelecionada]),
          ElevatedButton(
            child: Text("Resposta 1"),
            onPressed: _responder,
          ),
          ElevatedButton(
            child: Text("Resposta 2"),
            onPressed: _responder,
          ),
          ElevatedButton(
            child: Text("Resposta 3"),
            onPressed: _responder,
          ),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
