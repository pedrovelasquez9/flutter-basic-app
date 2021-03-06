import 'package:flutter/material.dart';
import 'package:programacion_esp/api/HttpHelpers.dart';
import 'package:programacion_esp/widgets/CustomText.dart';
import 'package:programacion_esp/widgets/CustomTitle.dart';
import 'package:programacion_esp/layout/CustomLoading.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String techData = "";
  bool loading = true;
  Map routeData = {};
  HttpHelpers apiHelper = new HttpHelpers();

  Future getDetails() async {
    Map data = await apiHelper.getData();
    //Se valida que el widget esté montado para evitar error al mantener
    //la suscripción del setState en el evento dispose
    if (this.mounted) {
      setState(() {
        techData = data['body'];
        loading = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDetails();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      routeData = ModalRoute.of(context).settings.arguments;
    });
    return loading
        ? CustomLoading()
        : Padding(
            padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTitle(routeData['techName']),
                SizedBox(height: 10.0),
                CustomText('$techData'),
              ],
            ),
          );
  }
}
