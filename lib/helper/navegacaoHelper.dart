import 'package:dojo_flutter_navegacao/view/navegacao01View.dart';
import 'package:dojo_flutter_navegacao/view/navegacao02View.dart';
import 'package:dojo_flutter_navegacao/view/principalView.dart';
import 'package:flutter/material.dart';

class NavegacaoHelper {
  static const rotaPrincipal = "/";
  static const rotaNavegacao01 = "/navegacao01";
  static const rotaNavegacao02 = "/navegacao02";

  static RouteFactory rotas() {
    return (settings) {
      final Map<String, dynamic> parametros = settings.arguments;
      Widget viewEncontrada;

      switch (settings.name) {
        case rotaPrincipal:
          viewEncontrada = PrincipalView();
          break;

        case "/navegacao01":
          viewEncontrada = Navegacao01View();
          break;

        case "/navegacao02":
          //Faço aqui a extração dos parâmetros
          String nome = parametros != null ? parametros["nome"] : null;
          int idade = parametros != null ? parametros["idade"] : null;

          viewEncontrada = Navegacao02View(texto: nome, idade: idade);
          break;

        default:
          return null;
      }

      return MaterialPageRoute(builder: (BuildContext context) => viewEncontrada);
    };
  }

  static RouteFactory rotaNaoEncontrada() {
    return (settings) {
      String rotaNaoEncontrada = settings.name;
      return MaterialPageRoute(builder: (context) => _widgetRotaNaoEncontrada(rotaNaoEncontrada));
    };
  }

  static Widget _widgetRotaNaoEncontrada(String rotaNaoEncontrada) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Rota não encontrada"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Text.rich(
          TextSpan(
            children: <TextSpan>[
              TextSpan(text: "A rota ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
              TextSpan(text: "$rotaNaoEncontrada", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellow)),
              TextSpan(text: " não foi encontrada/definida", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
