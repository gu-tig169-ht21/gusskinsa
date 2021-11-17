import 'package:flutter/cupertino.dart';

class item {
  String todo;
  item(this.todo) {}
}

class mystate extends ChangeNotifier {
  List<item> _itemlist = [];
  List<item> get list => _itemlist;

  void addItem(item) {
    _itemlist.add(item);
    notifyListeners();
  }
}
