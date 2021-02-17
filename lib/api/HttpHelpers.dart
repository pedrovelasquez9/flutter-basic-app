import 'package:http/http.dart';
import 'package:programacion_esp/constants/Constants.dart';
import 'dart:convert'; //for jsonDecode

class HttpHelpers {
  Map constants = Constants().getConstants();

  Future getData() async {
    try {
      Response response = await get(constants['api_base_url']);
      //decode json string
      Map data = jsonDecode(response.body);
      return data;
    } catch (error) {
      print("there's been an error in getData request $error");
      return {"body": "Ha ocurrido un error al obtener los datos"};
    }
  }
}
