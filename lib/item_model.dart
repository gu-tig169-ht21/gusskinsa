import 'package:flutter/material.dart';

class Task {
  String event;
  bool done;
  String value;
  Task(this.event, {this.done = false, this.value = 'all'});

  void toggleCompleted(Task item) {
    done = !done;
  }
}

class myState extends ChangeNotifier {
  List<Task> _itemlist = [];
  String _filterBy = 'all';

  List<Task> get list => _itemlist;
  String get filterBy => _filterBy;

  void addItem(Task item) {
    _itemlist.add(item);
    notifyListeners();
  }

  void removeItem(Task item) {
    _itemlist.remove(item);
    notifyListeners();
  }

  void setStatus(Task item) {
    item.toggleCompleted(item);
    notifyListeners();
  }

  void setFilterBy(String filterBy) {
    this._filterBy = filterBy;
    notifyListeners();
  }
}
