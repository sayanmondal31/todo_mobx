import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_mobx/todoHome.dart';
import 'package:todo_mobx/todolist.dart';

void main()=>runApp(TodoExample());

class TodoExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<TodoList>(
      create: (_)=>TodoList(),
          child: MaterialApp(
        home: TodoHome(),
      ),
    );
  }
}

