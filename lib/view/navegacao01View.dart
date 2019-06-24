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
              child: Text("Navegar para view 02 SEM passar parâmetro"),
              onPressed: () {
                Route rota = MaterialPageRoute(
                    builder: (context) => Navegacao02View(
                          texto: "Raphael",
                          idade: 30,
                        ));

                Navigator.of(context).push(rota);
              },
            ),
          ],
        ),
      ),
    );
  }
}
