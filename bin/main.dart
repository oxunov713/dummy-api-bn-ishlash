import 'dart:convert';

import 'package:http/http.dart' as myHTTP;

Future<void> main() async {
  String baseUrl = "https://dummyjson.com";
  Uri url = Uri.parse("$baseUrl/todos");
  myHTTP.Response responseGet = await myHTTP.get(url);
  print(responseGet.body);
}
