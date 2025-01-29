import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List todoList = [
    ['Learn FLuter', false],
    ['Drink wine', false],
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Todo'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.deepPurple.shade300,
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.deepPurple,
              padding: EdgeInsets.all(20),
              child: Text(todoList[index][0]),
            ),
          );
        },
      ),
    );
  }
}
