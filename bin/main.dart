import 'dart:convert';

import 'package:http/http.dart' as myHTTP;

Future<void> main() async {
  String baseUrl = "https://dummyjson.com";
  Uri url = Uri.parse("$baseUrl/todos/6");
  myHTTP.Response responsePut = await myHTTP.put(url,
      headers: <String, String>{
        "Content-Type": "application/json; charset=UTF-8"
      },
      body: jsonEncode({'comleted': 'true'}));
  print(responsePut.body);
}
