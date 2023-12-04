import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/app/data/todo_models.dart';
import 'package:to_do_list/app/modules/home/controllers/todo_controller.dart';

class AddTodoController extends GetxController {
  final todoController = Get.find <TodoController> ();
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  void saveTodo(String judul, String deskripsi) {
    ToDoModel todo = ToDoModel(judul: judul, deskripsi: deskripsi);
    todoController.addToDo(todo);
  }
}
