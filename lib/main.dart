import 'package:flutter/material.dart';
import 'package:programacion_esp/layout/CustomScaffold.dart';
import 'package:programacion_esp/views/Details.dart';
import 'package:programacion_esp/views/Home.dart';

void main() => runApp(MaterialApp(routes: {
      "/": (context) => CustomScaffold(
            view: Home(),
            title: "Programación en Español",
          ),
      "/details": (context) => CustomScaffold(
            view: Details(),
            title: "Detalles",
          )
    }));
