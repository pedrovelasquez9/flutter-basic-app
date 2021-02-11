import 'package:flutter/material.dart';
import 'package:programacion_esp/views/Home.dart';

class CustomScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Programación en Español"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(56, 182, 255, 1.0),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Home(),
        ));
  }
}
