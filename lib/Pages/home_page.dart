// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/widgets/add_todo.dart';
import 'package:todo/conttroller/home_controller.dart';
import 'package:todo/widgets/todo_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homecontroller = Get.put(HomeController());
    final todomessagecontroller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(96, 214, 210, 210),
        appBar: AppBar(
          title: Text(
            'To-Do',
            style: GoogleFonts.aBeeZee(fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(95, 242, 238, 238),
          elevation: 0,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          actions: [
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/xavior.jpg'),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search',
                                  prefixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.search),
                                    color: Color.fromARGB(255, 202, 201, 197),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "All ToDo's_",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 20, fontWeight: FontWeight.normal),
                        ),
                        ...homecontroller.todoList
                            .map((newTodo) => ToDoCard(todo: newTodo))
                            .toList()
                            .reversed
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AddBox(todomessagecontroller: todomessagecontroller),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
