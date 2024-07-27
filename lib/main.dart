// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Todoapp(),
    );
  }
}

class Task {
  String title;
  bool status;
  Task({required this.title, required this.status});
}

List allTask = [
  Task(title: "publish vido", status: true),
  Task(title: "Laugh louder", status: false),
  Task(title: "Gem", status: false),
];

class Todoapp extends StatefulWidget {
  const Todoapp({super.key});

  @override
  State<Todoapp> createState() => _TodoappState();
}

class _TodoappState extends State<Todoapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: double.infinity,
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          maxLength: 50,
                          decoration:
                              InputDecoration(labelText: "Add new Task"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "ADD",
                              style: TextStyle(fontSize: 25),
                            ))
                      ],
                    ),
                  );
                },
                isScrollControlled: true);
          },
          backgroundColor: Colors.redAccent,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromRGBO(58, 66, 86, 0.9),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(58, 66, 86, 1),
          title: Text(
            "TO DO APP",
            style: TextStyle(
                color: Colors.white, fontSize: 33, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // TodoCard(),
              ...allTask.map((item) =>
                  TodoCard(vartitle: item.title, doneORnot: item.status))
            ],
          ),
        ));
  }
}
