import 'todos.dart';

class Dummy {
  Todos? todos;
  String? total;
  String? skip;
  String? limit;

  Dummy({
    required this.todos,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory Dummy.fromJson(Map<String, Object?> json) => Dummy(
        todos: Todos.fromJson(json["todos"] as Map<String, Object?>),
        total: json["total"] as String,
        skip: json["skip"] as String,
        limit: json["limit"] as String,
      );
}
