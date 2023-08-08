import 'dart:convert';

import 'package:http/http.dart' as myHTTP;
import 'package:main/class/dummy.dart';

void main() async {
  String baseUrl = "https://dummyjson.com/todos";
  Uri url = Uri.parse(baseUrl);

  myHTTP.Response response = await myHTTP.get(url);

  List<Dummy> mydummy =
      List<Map<String, Object?>>.from(jsonDecode(response.body))
          .map(Dummy.fromJson)
          .toList();

  print(response.body);
}
