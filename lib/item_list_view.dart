import 'package:flutter/material.dart';
import 'item_list.dart';
import 'item_list_edit.dart';
import 'package:provider/provider.dart';

import 'item_model.dart';

class ItemListView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TIG169 TODO'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (value) {
              Provider.of<myState>(context, listen: false)
                  .setFilterBy(value.toString());
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                child: Text('all'),
                value: 'all',
              ),
              const PopupMenuItem(
                child: Text('done'),
                value: 'done',
              ),
              const PopupMenuItem(
                child: Text('not done'),
                value: 'not done',
              ),
            ],
          ),
        ],
      ),
      body: Consumer<myState>(
        builder: (context, state, child) =>
            ItemList(_filterList(state.list, state.filterBy)),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          var newItem = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ItemListEdit(
                Task('Event'),
              ),
            ),
          );
          if (newItem != null) {
            Provider.of<myState>(context, listen: false).addItem(newItem);
          }
        },
      ),
    );
  }

  List<Task> _filterList(list, filterBy) {
    if (filterBy == 'all') return list;
    if (filterBy == 'not done') {
      return list.where((item) => item.done == false).toList();
    }
    if (filterBy == 'done') {
      return list.where((item) => item.done == true).toList();
    }
    return list;
  }
}
