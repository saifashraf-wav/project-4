// ignore_for_file: camel_case_types, file_names, use_function_type_syntax_for_parameters, non_constant_identifier_names, avoid_unnecessary_containers, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:onboardingpage/database.dart';
import 'package:onboardingpage/utilites/todo_list.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final _myBox = Hive.box("mybox");
  TodoDataBase db = TodoDataBase();

  @override
  void initState() {
    // TODO: implement initState

    if (_myBox.get("TODOLIST") == null) {
      db.createIntialData();
    } else {
      db.loadData();
    }

    super.initState();
  }

  final _controller = TextEditingController();

  void checkBoxChanged(int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateData();
  }

  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    db.updateData();
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade300,
      appBar: AppBar(
        title: const Text("Todo List"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (BuildContext context, index) {
            return TodoList(
              taskName: db.toDoList[index][0],
              taskCompleted: db.toDoList[index][1],
              onChanged: (value) => checkBoxChanged(index),
              deleteFunction: (context) => deleteTask(index),
            );
          }),
      floatingActionButton: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Add a new todo task",
                filled: true,
                fillColor: Colors.blueGrey.shade200,
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(15)),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          )),
          FloatingActionButton(
            onPressed: saveNewTask,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
