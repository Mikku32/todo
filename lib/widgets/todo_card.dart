import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/model.dart';

import '../conttroller/home_controller.dart';

class ToDoCard extends StatefulWidget {
  const ToDoCard({
    required this.todo,
    super.key,
  });

  final Todo todo;

  @override
  State<ToDoCard> createState() => _ToDoCardState();
}

class _ToDoCardState extends State<ToDoCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
              child: Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                        value: isChecked,
                        activeColor: Color.fromARGB(255, 0, 0, 0),
                        onChanged: (newvalue) {
                          setState(() {
                            isChecked = newvalue!;
                          });
                        },
                        title: Text(widget.todo.toDoMessage,
                            style: GoogleFonts.actor(
                              decoration:
                                  isChecked ? TextDecoration.lineThrough : null,
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                            )),
                        controlAffinity: ListTileControlAffinity.leading,
                        secondary: IconButton(
                          onPressed: () {
                            Get.find<HomeController>()
                                .deleteTodobyId(widget.todo.id);
                            Get.snackbar(
                              'Deleted',
                              'Todo Deleted',
                            );
                          },
                          icon: Icon(Icons.delete),
                        )),
                  )
                ],
              ))),
    );
  }
}
