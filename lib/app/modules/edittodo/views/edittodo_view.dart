import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:to_do_list/app/modules/button/outlined_button.dart';

import '../../button/regular_button.dart';
import '../controllers/edittodo_controller.dart';

class EdittodoView extends GetView<EdittodoController> {
  const EdittodoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final editController = Get.find <EdittodoController> ();
    return Scaffold(
      appBar: AppBar(
        title: const Text('EdittodoView'),
        centerTitle: true,
      ),
      body:Column(
        children: [
          TextField(
              controller: editController.titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
          TextField(
              controller: editController.descController,
              decoration: InputDecoration(
                labelText: 'desc',
              ),
            ),
            MyOutlinedButton(
              label: 'Back', 
            onPressedCallBack: () {
              Get.back();
            }, 
            textColor: Colors.blue, 
            borderColor: Colors.blue,

            ),
          RegularButton(
            label: 'Save', 
            onPressedCallBack: () {  
              editController.updateTodo();
              Get.back();
            }, 
            backgroundColor: Colors.blue, 
            textColor: Colors.white,
          ),
        ],
      )
    );
  }
}
