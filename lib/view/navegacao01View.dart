import 'package:dojo_flutter_navegacao/helper/navegacaoHelper.dart';
import 'package:dojo_flutter_navegacao/view/navegacao02View.dart';
import 'package:flutter/material.dart';

class Navegacao01View extends StatefulWidget {
  @override
  _Navegacao01ViewState createState() => _Navegacao01ViewState();
}

class _Navegacao01ViewState extends State<Navegacao01View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navegação 01"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Navegar para view 02 passando parâmetro"),
              onPressed: () {
                Route rota = MaterialPageRoute(
                    builder: (context) => Navegacao02View(
                          texto: "Raphael",
                          idade: 30,
                        ));

                Navigator.of(context).push(rota);
              },
            ),
            SizedBox(height: 30),
            RaisedButton(
              child: Text("Navegar para view 02 SEM parâmetro (ROUTE)"),
              onPressed: () {
                Navigator.of(context).pushNamed(NavegacaoHelper.rotaNavegacao02, arguments: null);
              },
            ),
            SizedBox(height: 30),
            RaisedButton(
              child: Text("Navegar para view 02 COM parâmetro (ROUTE)"),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  NavegacaoHelper.rotaNavegacao02,
                  arguments: {"nome": "Raphael", "idade": int.parse("30")},
                );
              },
            ),
            SizedBox(height: 30),
            RaisedButton(child: Text("Voltar via comando"), onPressed: () => Navigator.pop(context), color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
