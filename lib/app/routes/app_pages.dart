import 'package:get/get.dart';

import '../modules/addTodo/bindings/add_todo_binding.dart';
import '../modules/addTodo/views/add_todo_view.dart';
import '../modules/edittodo/bindings/edittodo_binding.dart';
import '../modules/edittodo/views/edittodo_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_TODO,
      page: () => const AddTodoView(),
      binding: AddTodoBinding(),
    ),
    GetPage(
      name: _Paths.EDITTODO,
      page: () => const EdittodoView(),
      binding: EdittodoBinding(),
    ),
  ];
}
