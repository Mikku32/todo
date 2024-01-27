import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../conttroller/home_controller.dart';

class AddBox extends StatelessWidget {
  const AddBox({
    super.key,
    required TextEditingController todomessagecontroller,
  }) : _todomessagecontroller = todomessagecontroller;

  final TextEditingController _todomessagecontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
        child: TextField(
          controller: _todomessagecontroller,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Add todo',
              suffixIcon: IconButton(
                onPressed: () {
                  Get.find<HomeController>()
                      .addTodo(_todomessagecontroller.text);
                  _todomessagecontroller.clear();
                },
                icon: Icon(Icons.add),
              )),
        ),
      ),
    );
  }
}
