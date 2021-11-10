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
        title: 'TIG169 TODO',
      ),
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
        title: Text(widget.title),
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
    return Card(
      child: ListTile(
        leading: Checkbox(
          value: false,
          onChanged: (val) {},
        ),
        title: Text(todo),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.close),
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
          style: TextStyle(decoration: TextDecoration.lineThrough),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.close),
        ),
      ),
    );
  }
}

class SecondView extends StatelessWidget {
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(),
      body: _taskTODO(),
    );
  }

  Widget _taskTODO() {
    return Container(
      child: Text('this is todo :))))))'),
    );
  }
}
