import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_model.dart';

class ItemListEdit extends StatefulWidget {
  final Task event;
  ItemListEdit(this.event);

  @override
  State<StatefulWidget> createState() {
    return ItemListEditState(event);
  }
}

class ItemListEditState extends State<ItemListEdit> {
  String event = 'Event';
  TextEditingController textEditingController = TextEditingController();

  ItemListEditState(Task todo) {
    this.event = todo.event;

    textEditingController.addListener(() {
      setState(() {
        event = textEditingController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TIG169 TODO'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(30),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(hintText: 'Input Task'),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, Task(event: event, ID: ''));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.add),
                  Text(
                    'ADD',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
