import 'package:flutter/material.dart';

class Tela2 extends StatefulWidget {

  Tela2({Key key, this.argumento,this.argument2}) : super(key: key);

  final String argumento;
  final String argument2;


  @override
  Tela2State createState() => Tela2State();
}

class Tela2State extends State<Tela2> {
  onSair() async {

    var result = await Navigator.pushNamed(context, '/Tela3',
        arguments: "Joao da silva");

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
            child: Text("Olá tela 2 $name"),
          ),
        ));
  }
}
