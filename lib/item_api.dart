import 'package:http/http.dart' as http;
import 'dart:convert';

import 'item_model.dart';

const API_KEY = '7ee1fe2f-928f-407a-aa08-bc3c61d7aa03';
const API_URL = 'https://todoapp-api-pyq5q.ondigitalocean.app';

class Item_Api {
  static Future<List<Task>> addTask(Task item) async {
    Map<String, dynamic> json = Task.toJson(item);
    var bodyString = jsonEncode(json);
    var respone = await http.post(
      Uri.parse('$API_URL/todos?key=$API_KEY'),
      body: bodyString,
      headers: {'Content-Type': 'application/json'},
    );
    bodyString = respone.body;
    var list = jsonDecode(bodyString);
    return list.map<Task>((data) {
      return Task.fromJson(data);
    }).toList();
  }

  static Future deleteTask(String itemID) async {
    var respone =
        await http.delete(Uri.parse('$API_URL/todos/$itemID?key=$API_KEY'));
    var bodyString = respone.body;
    var list = jsonDecode(bodyString);

    return list.map<Task>((data) {
      return Task.fromJson(data);
    }).toList();
  }

  static Future updateTask(String itemID, Task item) async {
    Map<String, dynamic> json = Task.toJson(item);
    var bodyString = jsonEncode(json);
    var response = await http.put(
      Uri.parse('$API_URL/todos/$itemID?key=$API_KEY'),
      body: bodyString,
      headers: {'Content-Type': 'application/json'},
    );
    bodyString = response.body;
    var list = jsonDecode(bodyString);

    return list.map<Task>((data) {
      return Task.fromJson(data);
    }).toList();
  }

  static Future<List<Task>> itemList() async {
    http.Response response =
        await http.get(Uri.parse('$API_URL/todos?key=$API_KEY'));
    var jSonResp = response.body;
    var json = jsonDecode(jSonResp);
    return json.map<Task>((data) {
      return Task.fromJson(data);
    }).toList();
  }
}
