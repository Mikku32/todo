import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:todo/model.dart';

class HomeController extends GetxController {
  final List<Todo> todoList = <Todo>[].obs;

  void addTodo(String toDoMessage) {
    final newTodo = Todo(
      id: UniqueKey().hashCode,
      toDoMessage: toDoMessage,
    );
    todoList.add(newTodo);
  }

  void deleteTodobyId(int id) {
    todoList.removeWhere((newTodo) => newTodo.id == id);
  }

  void searchTodobyMessage(String message) {
    todoList.where((newTodo) => newTodo.toDoMessage.contains(message));
  }
}
