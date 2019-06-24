import 'package:dojo_flutter_navegacao/view/principalView.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DOJO Navegação',
      home: PrincipalView(),
    );
  }
}
