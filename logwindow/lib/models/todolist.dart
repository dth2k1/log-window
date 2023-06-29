class ToDoList {
  String? id;
  String? todoText;
  bool isDone;

  ToDoList({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

//  goi data api list dairy view o day
  static List<ToDoList> todoList() {
    return [
      ToDoList(id: '01', todoText: 'Morning Excercise', isDone: true),
      ToDoList(id: '02', todoText: 'Buy Groceries', isDone: true),
      ToDoList(
        id: '03',
        todoText: 'Check Emails',
      ),
      ToDoList(
        id: '04',
        todoText: 'Team Meeting',
      ),
      ToDoList(
        id: '05',
        todoText: 'Work on mobile apps for 2 hour',
      ),
      ToDoList(
        id: '06',
        todoText: 'Dinner with Jenny',
      ),
    ];
  }
}
