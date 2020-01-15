import 'package:flutter/material.dart';
import 'package:flutter_app/bloc/MinhaTelaBloc.dart';

//Stateless - Sem estado | Stateful - Com estado

class MinhaTela extends StatefulWidget {
  @override
  MinhaTelaState createState() => MinhaTelaState();
}

class MinhaTelaState extends State<MinhaTela> {
  var value1 = TextEditingController(text: "");
  var value2 = TextEditingController(text: "");
  MinhaTelaBloc bloc = MinhaTelaBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("App bar"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: value1,
                  keyboardType: TextInputType.number,
                ),
                TextFormField(
                  controller: value2,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                  child: Text("SOMAR"),
                  onPressed: () {
                    int a = int.parse(value1.text);
                    int b = int.parse(value2.text);
                    bloc.calcularSoma(a, b);
                  },
                ),
                StreamBuilder(
                  stream: bloc.calcStream,
                  builder: (context, AsyncSnapshot snapshot) {
                    if(snapshot.hasData){
                      return Text(
                        snapshot.data,
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                      );
                    }else{
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
