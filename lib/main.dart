import 'package:flutter/material.dart';
import 'ui/formFields.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CALCULADOR DE MÉDIA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Tarefa Final DPM 2021.2'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({required this.title}) : super();
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FormFields(),
          )
      ),
    );
  }
}
