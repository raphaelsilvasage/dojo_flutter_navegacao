import 'helper/navegacaoHelper.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DOJO Navegação',
      //home: PrincipalView(),
      initialRoute: "/",
      // routes: <String, WidgetBuilder> {
      //   "/": (context) => PrincipalView(),
      //   "/navegacao01": (context) => Navegacao01View(),
      //   "/navegacao02": (context) => Navegacao02View(),
      // },
      onGenerateRoute: NavegacaoHelper.rotas(),
      onUnknownRoute: NavegacaoHelper.rotaNaoEncontrada(),
    );
  }
}
