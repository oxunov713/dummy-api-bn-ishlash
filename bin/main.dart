import 'dart:convert';

import 'package:http/http.dart' as myHTTP;

import 'package:main/class/todos.dart';

Future<void> main() async {
  String baseUrl = "https://dummyjson.com";
  Uri url = Uri.parse("$baseUrl/todos/add");

  Todos todo = Todos( todo: "sds", completed: true, userId: 50);
//! post
  myHTTP.Response responsePost = await myHTTP.post(
    url,
    headers: <String, String>{"Content-Type": "application/json"},
    body: jsonEncode(todo.toJson()),
  );
  print(responsePost.body);
}
