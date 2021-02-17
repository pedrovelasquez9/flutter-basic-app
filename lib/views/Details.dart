import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:programacion_esp/api/httpHelpers.dart';
import 'package:programacion_esp/widgets/CustomText.dart';
import 'package:programacion_esp/widgets/CustomTitle.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Map techData;
  Future getDetails() async {
    Map data = await HttpHelpers().getData();
    setState(() {
      techData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    getDetails();
    return Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTitle('Tech Name'),
          SizedBox(height: 10.0),
          CustomText(techData['body']),
        ],
      ),
    );
  }
}
