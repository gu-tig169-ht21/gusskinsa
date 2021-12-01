import 'package:flutter/material.dart';
import 'package:my_first_app/splash.dart';
import 'package:provider/provider.dart';

import 'item_model.dart';

void main() {
  var state = myState();
  state.getList();
  runApp(
    ChangeNotifierProvider(create: (context) => state, child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TIG169 TODO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}
