import 'package:flutter/material.dart';
import 'package:programacion_esp/widgets/CustomAvatar.dart';
import 'package:programacion_esp/widgets/CustomText.dart';
import 'package:programacion_esp/widgets/CustomTitle.dart';
import 'package:programacion_esp/widgets/ToolsList.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: CustomAvatar(40.0, 'assets/Logo.png')),
          Divider(
            height: 60.0,
            color: Color.fromRGBO(56, 182, 255, 1.0),
          ),
          CustomTitle('NOMBRE'),
          SizedBox(height: 10.0),
          CustomText('Pedro Plasencia'),
          SizedBox(height: 15.0),
          CustomTitle('NIVEL'),
          SizedBox(height: 10.0),
          CustomText('Full Stack web developer'),
          SizedBox(height: 15.0),
          CustomTitle('CONTACTO'),
          SizedBox(height: 10.0),
          Row(
            children: [
              Icon(Icons.email, color: Color.fromRGBO(56, 182, 255, 1.0)),
              SizedBox(width: 5.0),
              CustomText('pedro.plasencia@my-email.com'),
            ],
          ),
          SizedBox(height: 15.0),
          CustomTitle('CANAL'),
          SizedBox(height: 10.0),
          Row(
            children: [
              Icon(Icons.video_collection, color: Color.fromRGBO(56, 182, 255, 1.0)),
              SizedBox(width: 5.0),
              CustomText('Programación en Español'),
            ],
          ),
          SizedBox(height: 15.0),
          CustomTitle('TECNOLOGÍAS'),
          SizedBox(height: 10.0),
          ToolsList()
        ],
      ),
    );
  }
}
