import 'package:dojo_flutter_navegacao/helper/navegacaoHelper.dart';
import 'package:dojo_flutter_navegacao/view/navegacao02View.dart';
import 'package:flutter/material.dart';

class Navegacao01View extends StatefulWidget {
  @override
  _Navegacao01ViewState createState() => _Navegacao01ViewState();
}

class _Navegacao01ViewState extends State<Navegacao01View> {
  final _controladorNome = TextEditingController();
  final _controladorIdade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Navegação 01"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controladorNome,
              decoration: InputDecoration(labelText: "Nome"),
            ),
            TextField(
              controller: _controladorIdade,
              decoration: InputDecoration(labelText: "Idade"),
            ),
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
                  arguments: {"nome": _controladorNome.text, "idade": int.parse(_controladorIdade.text)},
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
