import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:to_do_list/app/modules/addTodo/views/add_todo_view.dart';
import 'package:to_do_list/app/modules/home/controllers/todo_controller.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoController = Get.find <TodoController> ();
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Obx((){
            return ListView.builder(
            itemCount: todoController.toDoList.length,
            itemBuilder: (context, index){
              return InkWell(
                onTap: () => Get.toNamed(Routes.EDITTODO, arguments: todoController.toDoList[index]),
                child: Container(
                  child: Column(
                    children: [
                      Text(todoController.toDoList[index].judul),
                      Text(todoController.toDoList[index].deskripsi),
                    ],
                  ),
                ),
              );
            }
          );
          }),
          FloatingActionButton(
            onPressed: () => Get.toNamed(Routes.ADD_TODO)
          )
        ],
      )
    );
  }
}
