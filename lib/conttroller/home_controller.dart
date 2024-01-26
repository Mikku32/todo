import 'package:get/get.dart';
import 'package:todo/model.dart';

class HomeController extends GetxController {
  final List<Todo> todoList = <Todo>[
     Todo(toDoMessage: 'Attend Meeting', id: 1),
     Todo(toDoMessage: 'Study Flutter', id: 2),
  ].obs;
}