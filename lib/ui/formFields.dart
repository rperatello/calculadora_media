import 'package:flutter/material.dart';

class FormFields extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  TextStyle lbSubTitle = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.bold,
  );

  TextStyle lbResult = TextStyle(
    fontSize: 15.0,
    //fontFamily: 'Times',
    fontWeight: FontWeight.w500,
  );

  TextStyle txtResult = TextStyle(
    fontSize: 15.0,
    //fontFamily: 'Times',
    fontWeight: FontWeight.bold,
  );

  String _nome = "";
  String _email = "";
  String _notas = "";
  String _media = "";

  TextEditingController nome = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController notas1 = TextEditingController();
  TextEditingController notas2 = TextEditingController();
  TextEditingController notas3 = TextEditingController();

  String calcula() {
    double n1 = double.parse(notas1.text);
    double n2 = double.parse(notas2.text);
    double n3 = double.parse(notas3.text);

    double med = (n1 + n2 + n3) / 3.0;
    return med.toStringAsFixed(2);
  }

  void mostrar() {
    _nome = nome.text;
    _email = email.text;
    _notas = notas1.text + " | " + notas2.text + " | " + notas3.text;
    _media = calcula();
    return;
  }

  void reset() {
    _nome = "";
    _email = "";
    _notas = "";
    _media = "";
    nome.text = "";
    email.text = "";
    notas1.text = "";
    notas2.text = "";
    notas3.text = "";
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(
              top: 5.0,
              bottom: 5.0,
            ),
            child: Text("CALCULADOR DE MÉDIA",
                textAlign: TextAlign.left, style: lbSubTitle),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            bottom: 5.0,
          ),
          child: TextField(
            controller: nome,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'NOME',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            bottom: 5.0,
          ),
          child: TextField(
            controller: email,
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'E-MAIL',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            bottom: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: notas1,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nota 1',
                  ),
                ),
              ),
              Container(
                width: 25.0,
              ),
              Expanded(
                child: TextField(
                  controller: notas2,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nota 2',
                  ),
                ),
              ),
              Container(
                width: 25.0,
              ),
              Expanded(
                child: TextField(
                  controller: notas3,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nota 3',
                  ),
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          child: Text(
            'CALCULA MÉDIA',
            textScaleFactor: 1.0,
          ),
          style: ElevatedButton.styleFrom(fixedSize: const Size(360, 20)),
          onPressed: () {
            setState(() {
              mostrar();
            });
          },
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            bottom: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Text("Resultado: ", textAlign: TextAlign.left, style: lbResult),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            bottom: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Text("Nome: ", textAlign: TextAlign.left, style: lbResult),
              Text(_nome, style: txtResult),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            bottom: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Text("eMail: ", textAlign: TextAlign.left, style: lbResult),
              Text(_email, style: txtResult),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            bottom: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Text("Notas: ", textAlign: TextAlign.left, style: lbResult),
              Text(_notas, style: txtResult),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 5.0,
            bottom: 5.0,
          ),
          child: Row(
            children: <Widget>[
              Text("Média: ", textAlign: TextAlign.left, style: lbResult),
              Text(_media, style: txtResult),
            ],
          ),
        ),
        ElevatedButton(
          child: Text(
            'APAGA OS CAMPOS',
            textScaleFactor: 1.0,
          ),
          style: ElevatedButton.styleFrom(fixedSize: const Size(360, 20)),
          onPressed: () {
            setState(() {
              reset();
            });
          },
        ),
      ],
    );
  }
}
