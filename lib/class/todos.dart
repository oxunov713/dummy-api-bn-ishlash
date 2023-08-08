class Todos {
  int? id;
  String? todo;
  bool? completed;
  int? userId;

  Todos({
    this.id,
    this.todo,
    this.completed,
    this.userId,
  });

  factory Todos.fromJson(Map<String, Object?> json) => Todos(
        id: json["id"] as int?,
        todo: json["todo"] as String?,
        completed: json["completed"] as bool?,
        userId: json["userId"] as int?,
      );

  Map<String, Object?> toJson() => {
        "id": id,
        "todo": todo,
        "completed": completed,
        "userId": userId,
      };
  @override
  String toString() =>
      "Todos(id: $id, todo: $todo, completed: $completed, userId: $userId)";
}
