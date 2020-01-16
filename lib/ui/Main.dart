import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  Main({Key key, this.argumento, this.argument2}) : super(key: key);

  final String argumento;
  final String argument2;

  @override
  MainState createState() => MainState();
}

class MainState extends State<Main> {
  onSair() async {
    var result = await Navigator.pushNamed(context, '/Tela2',
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
            onPressed: () async {
              await onSair();
            },
            child: Text("Olá "+widget.argumento),
          ),
        ));
  }
}
