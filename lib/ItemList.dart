// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'itemModel.dart';

class ItemList extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView();
  }

  Widget item(context, item, task) {
    bool ischecked = false;
    return StatefulBuilder(builder: (context, StateSetter setState) {
      return ListTile(
        leading: Checkbox(
          value: ischecked,
          onChanged: (val) {
            setState(() {
              ischecked = val!;
            });
          },
        ),
        title: Text(
          task,
          style: TextStyle(
              decoration: ischecked ? TextDecoration.lineThrough : null),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
      );
    });
  }
}
