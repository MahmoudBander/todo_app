// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String vartitle;
  final bool doneORnot;
  const TodoCard({super.key, required this.vartitle,required this.doneORnot});
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(209, 224, 244, 0.2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              vartitle,
              style: TextStyle(color: Colors.white, fontSize: 27),
            ),
            Icon(
              // Icons.close,
              doneORnot? Icons.check :Icons.close,
              size: 27,
              color: doneORnot?Colors.green:Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
