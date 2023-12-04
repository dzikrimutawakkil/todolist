import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_todo_controller.dart';

class AddTodoView extends GetView<AddTodoController> {
  const AddTodoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final addContrroller = Get.find <AddTodoController> ();
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddTodoView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
              controller: addContrroller.titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
          TextField(
              controller: addContrroller.descController,
              decoration: InputDecoration(
                labelText: 'desc',
              ),
            ),
          MaterialButton(
            onPressed: () {
              addContrroller.saveTodo(addContrroller.titleController.text, addContrroller.descController.text);
              Get.back();
            }    
            )
        ],
      )
    );
  }
}
