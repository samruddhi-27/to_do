class ToDo{
  String? id;
  String todoText;
  bool isDone;
  ToDo({
    required this.id,
    required this.todoText,
    this.isDone= false,
});
  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Exercise',isDone: true),
      ToDo(id: '02', todoText: 'Buy Groceries',isDone: true),
      ToDo(id: '03', todoText: 'Check Emails',isDone: true),
      ToDo(id: '04', todoText: 'Eat Lunch',),
      ToDo(id: '05', todoText: 'Evening Walk',),
      ToDo(id: '06', todoText: 'Dinner with family',),

    ];
    }
  }
