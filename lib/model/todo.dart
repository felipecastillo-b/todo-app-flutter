class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Lunes', isDone: true),
      ToDo(id: '02', todoText: 'Martes', isDone: true),
      ToDo(id: '03', todoText: 'Miercoles',),
      ToDo(id: '04', todoText: 'Jueves', isDone: true),
    ];
  }
}