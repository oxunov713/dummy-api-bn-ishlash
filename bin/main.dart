import 'dart:convert';

import 'package:http/http.dart' as myHTTP;

Future<void> main() async {
  String baseUrl = "https://dummyjson.com";
  Uri url = Uri.parse("$baseUrl/todos/6");
  myHTTP.Response responseDel = await myHTTP.delete(url);
  print(responseDel.body);
}
