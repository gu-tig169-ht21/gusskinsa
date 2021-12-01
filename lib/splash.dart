import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:my_first_app/item_list_view.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToItemView();
  }

  _navigateToItemView() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ItemListView()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('TIG169 TODO'),
      ),
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/guLogo.png'),
          ),
        ],
      ),
    );
  }
}
