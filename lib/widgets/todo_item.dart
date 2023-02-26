import 'package:flutter/material.dart';
import '../model/todo.dart';
import '../constants/color.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;

  const ToDoItem({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: 
    ListTile(
      onTap: () {
        print('clicked');
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      leading: Icon(todo.isDone? Icons.check_box : Icons.check_box_outline_blank, color: tdBlue,),
      title: Text(todo.todoText!, style: TextStyle(fontSize: 16,color: tdBlack,decoration: todo.isDone? TextDecoration.lineThrough : null,),
      ),
      trailing: Container(
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.symmetric(vertical: 7),
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: tdRed,
          borderRadius: BorderRadius.circular(5)
        ),
        child: IconButton(
          color: Colors.white,
          iconSize: 18,
          icon: Icon(Icons.delete),
          onPressed: () {
            print('delete');
          },
        ),
      ),
    )
    );
  }
}

  