import 'package:get/get.dart';

import 'package:to_do_list/app/modules/home/controllers/todo_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoController>(
      () => TodoController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
