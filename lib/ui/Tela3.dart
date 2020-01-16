import 'package:flutter/material.dart';

class Tela3 extends StatefulWidget {

  Tela3({Key key, this.argumento,this.argument2}) : super(key: key);

  final String argumento;
  final String argument2;


  @override
  Tela3State createState() => Tela3State();
}

class Tela3State extends State<Tela3> {
  onSair() {

    Navigator.of(context).pushNamedAndRemoveUntil('/',

        ModalRoute.withName('/'));
    //(Route<dynamic> route)=>false);

  }

  @override
  Widget build(BuildContext context) {

    var name = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {
              onSair();
            },
            child: Text("Olá tela 3 $name"),
          ),
        ));
  }
}
