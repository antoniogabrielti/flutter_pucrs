import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'Main.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {

  onLogin() async{

    var resultado = await Client().get(Uri.parse("http://www.google.com"));

    print(resultado.body);

    //var result = await Navigator.push(context,
    //    CupertinoPageRoute(builder: (context)=>Main()));


    var result = await Navigator.pushReplacement(context,
        CupertinoPageRoute(builder: (context)=>Main(argumento: "Joao")));


    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("app bar"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      onPressed: (){onLogin();},
                      icon: Icon(
                        Icons.add_a_photo,
                        size: 30,
                        color: Colors.cyan,
                      )
                  ),
                ],
              ),


              SizedBox(width: 250,),

//              Icon(
//                Icons.alarm,
//                color: Colors.orange[900],
//              ),
              FadeInImage.assetNetwork(placeholder: 'assets/load.gif',image: 'https://karenjosephsalon.com/wp-content/themes/JSMT-Genesis-1.1/images/load.gif'),
              //Image.network('https://karenjosephsalon.com/wp-content/themes/JSMT-Genesis-1.1/images/load.gif'),
              //Image.asset('assets/load.gif'),

              RaisedButton(
                onPressed: () async{
                  await onLogin();
                },
                child: Text("login"),
              ),
            ],
          ),
        ));
  }
}
