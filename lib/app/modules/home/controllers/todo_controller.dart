import 'package:get/get.dart';
import 'package:to_do_list/app/data/todo_models.dart';

class TodoController extends GetxController {
  RxList<ToDoModel> toDoList = <ToDoModel>[].obs;

  void addToDo(ToDoModel todo){
    toDoList.add(todo);
    update();
  }

  updateTodo(ToDoModel oldTodo, String newDescription, String newTitle) {
    int index = toDoList.indexOf(oldTodo);
    toDoList[index].deskripsi = newDescription;
    toDoList[index].judul = newTitle;
    print(toDoList[index].deskripsi);
    toDoList.refresh();
  }
}
