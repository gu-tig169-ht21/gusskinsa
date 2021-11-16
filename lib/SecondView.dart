// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TIG169 TODO'),
      ),
      body: Center(
        child: Column(
          children: [
            _addTask(),
            Container(
              height: 32,
            ),
            _addButton(),
          ],
        ),
      ),
    );
  }

  Widget _addTask() {
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'What are you going to do?',
          ),
        ),
      ),
    );
  }

  Widget _addButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ),
        const Text(
          'ADD',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
