import 'package:flutter/material.dart';

import 'buttonGroup.dart';

class FormFields extends StatelessWidget {

  TextStyle lbSubTitle = TextStyle(
    fontSize: 20.0,
    decoration: TextDecoration.none,
    fontWeight: FontWeight.bold,
  );

  TextStyle lbField = TextStyle(
    fontSize: 15.0,
    decoration: TextDecoration.none,
    //fontFamily: 'Times',
    fontWeight: FontWeight.w500,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
            child: Text(
            "CALCULADOR DE MÉDIA",
            textAlign: TextAlign.left,
            style: lbSubTitle
          ),
          ),
        ),

        Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'NOME',
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-MAIL',
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(child:
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nota1',
                ),
              ),
              ),

              Container(
                width: 25.0,
              ),

              Expanded(child:
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nota2',
                ),
              ),
              ),

              Container(
                width: 25.0,
              ),

              Expanded(child:
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nota3',
                ),
              ),
              ),
            ],
          ),
        ),


        Container(
            child: ButtonGroup()
        ),
      ],
    );
  }
}
