import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steg1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'TIG169 TOdDO',
      ),
    );
  }
}

class myAppBar extends AppBar {
  Widget build(BuildContext) {
    return AppBar(
      centerTitle: true,
      title: Text('TIG169 TODO'),
      actions: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
/*
  void _incrementCounter() {
    setState(() {});
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //backgroundColor: Colors.blue,
        title: Text('TIG169 TODO'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            _item('FlutterApp'),
            _item('FlutterApp'),
            _item('FlutterApp'),
            _itemTrue('FlutterApp'),
            _item('FlutterApp'),
            _item('FlutterApp'),
            _item('FlutterApp'),
            _item('FlutterApp'),
            _item('FlutterApp'),
            _item('FlutterApp'),
            _item('FlutterApp'),
            _item('FlutterApp'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondView()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _item(todo) {
    /*
    var items = ['Flutter', 'Diska', 'Städa', "Handla"];
    var listItems = List.generate(20, (index) => '${items[index % 4]} $index');
    */
    return Card(
      child: ListTile(
        leading: Checkbox(
          value: false,
          onChanged: (val) {},
        ),
        title: Text(todo),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
      ),
    );
  }

  //Temporary
  Widget _itemTrue(todo) {
    return Card(
      child: ListTile(
        leading: Checkbox(
          value: true,
          onChanged: (val) {},
        ),
        title: Text(
          todo,
          style: const TextStyle(decoration: TextDecoration.lineThrough),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
      ),
    );
  }
}

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
          child: Icon(Icons.add),
        ),
        Text(
          'ADD',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
