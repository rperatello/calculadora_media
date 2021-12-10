import 'package:flutter/material.dart';

class ButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        children: <Widget>[
          Spacer(),
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: CancelButton()
              ),
              Container(
                  child: SaveButton()
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(right: 20.0),
      child: ElevatedButton(
        child: Text("Salvar"),
        onPressed: () {
          save(context);
        },
      ),
    );
    return button;
  }

  // função order()
  void save(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Exercício Montagem GUI"),
      content: Text("Salvo com sucesso!"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class CancelButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var button = Container(
      child: ElevatedButton(
        child: Text("Cancelar"),
        onPressed: () {
          cancel(context);
        },
      ),
    );
    return button;
  }

  // função cancel()
  void cancel(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Exercício Montagem Gui"),
      content: Text("Cancelado!"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
