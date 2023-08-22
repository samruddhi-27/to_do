import 'package:flutter/material.dart';
import 'package:to_do/constants/colors.dart';
import 'package:to_do/model/todo.dart';
class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key, required this.todo,
  required this.onToDoChanged,
  required this.onDeleteItem
  }) : super(key: key);
final ToDo todo;
final onToDoChanged;
final onDeleteItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
    child: ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
    onTap: ()  {
      //print('clicked on todo item');
     onToDoChanged(todo);

  },
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  tileColor: Colors.white,
  leading: Icon(todo.isDone ? Icons.check_box: Icons.check_box_outline_blank,
  color:tdEbony,),
  title: Text(todo.todoText,
    style: TextStyle(
      fontSize: 16,
      color: tdBlack,

      decoration:  todo.isDone? TextDecoration.lineThrough: null,
  ),
    ),
  trailing: Container(
  padding: EdgeInsets.all(0),
  margin: EdgeInsets.symmetric(vertical: 12),
  height: 35,
  width: 35,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
  ),
  child: IconButton(
  color: Colors.red,
  iconSize: 18,
  icon:Icon(Icons.delete),
  onPressed: () {
    //print("clicked on delete icon");
  onDeleteItem(todo.id);
  },
  ),
  ),
  ),
    );
  }
}