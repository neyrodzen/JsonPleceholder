import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  Widget text = const Text('0');

  void press() {
   setState((){
     Navigator.of(context).pushNamed('/page_two');
   });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        color: Colors.red,
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          ElevatedButton(onPressed: press, child: text),
        ])),
      ),
    );
  }
}
