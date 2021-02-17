import 'package:flutter/material.dart';
import 'package:programacion_esp/views/Home.dart';

class CustomScaffold extends StatelessWidget {
  final Widget view;
  final String title;
  CustomScaffold({this.view, this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(56, 182, 255, 1.0),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: this.view,
        ));
  }
}
