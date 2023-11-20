import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDOList = [];

  // Reference our box
  final _mybox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDOList = [
      ["Make homeWork", false],
      ["read a book today", false],
    ];
  }

  // load data from database
  void loadData() {
    toDOList = _mybox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _mybox.put("TODOLIST", toDOList);
  }
}
