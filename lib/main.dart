import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './SecondView.dart';

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
      title: const Text('TIG169 TODO'),
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
        title: const Text('TIG169 TODO'),
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
    bool ischecked = false;
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Card(
        child: ListTile(
          leading: Checkbox(
            value: ischecked,
            onChanged: (val) {
              setState(() {
                ischecked = val!;
              });
            },
          ),
          title: Text(todo),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
        ),
      );
    });
  }
}
