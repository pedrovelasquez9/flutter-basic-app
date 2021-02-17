import 'package:http/http.dart';
import 'dart:convert'; //for jsonDecode

class HttpHelpers {
  Future getData() async {
    Response response = await get('https://jsonplaceholder.typicode.com/posts/1');
    //decode json string
    Map data = jsonDecode(response.body);
    return data;
  }
}
