import 'package:dojo_flutter_navegacao/view/navegacao01View.dart';
import 'package:flutter/material.dart';

class PrincipalView extends StatefulWidget {
  @override
  _PrincipalViewState createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DOJO Navegação"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Ir para view 01"),
              onPressed: () {
                Route rota = MaterialPageRoute(builder: (context) => Navegacao01View());
                Navigator.of(context).push(rota);
              },
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
