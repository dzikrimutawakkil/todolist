import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/app/modules/home/controllers/todo_controller.dart';

import '../../../data/todo_models.dart';

class EdittodoController extends GetxController {  
  final todoController = Get.find <TodoController> ();
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  late final ToDoModel _todoModel;

  @override
  void onInit() {
    _todoModel = Get.arguments as ToDoModel;
    titleController.text = _todoModel.judul;
    descController.text = _todoModel.deskripsi;
    super.onInit();
  }

  void updateTodo(){
    todoController.updateTodo(_todoModel, descController.text, titleController.text);
  }
}
