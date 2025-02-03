import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List toDoList = [];
  final _myBox = Hive.box("mybox");

  void createIntialData() {
    toDoList = [
      ['Watch the course', false],
      ['Make music', false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
