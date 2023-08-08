import 'todos.dart';

class TodoModel {
  List<Todos>? todos;
  String? total;
  String? skip;
  String? limit;

  TodoModel({
    this.todos,
    this.total,
    this.skip,
    this.limit,
  });

  factory TodoModel.fromJson(Map<String, Object?> json) => TodoModel(
        todos: (json["todos"] as List).map((e) => Todos.fromJson(e)).toList(),
        total: json["total"] as String,
        skip: json["skip"] as String,
        limit: json["limit"] as String,
      );

  Map<String, Object?> toJson() => {
        "todos": todos,
        "total": total,
        "skip": skip,
        "limit": limit,
      };
  @override
  String toString() =>
      "Dummy(todos: $todos, total: $total, skip: $skip, limit: $limit)";
}
