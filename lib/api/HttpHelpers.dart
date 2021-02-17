import 'package:http/http.dart';
import 'package:programacion_esp/constants/Constants.dart';
import 'dart:convert'; //for jsonDecode

class HttpHelpers {
  Map constants = Constants().getConstants();

  Future getData() async {
    Response response = await get(constants['api_base_url']);
    //decode json string
    Map data = jsonDecode(response.body);
    return data;
  }
}
