import 'package:flutter/material.dart';

class HomeCount extends StatefulWidget {
  const HomeCount({Key? key}) : super(key: key);

  @override
  _HomeCountState createState() => _HomeCountState();
}

class _HomeCountState extends State<HomeCount> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter project'),
      ),
      body: Container(
        child: Center(
            child: Text(
          'Conter'
          '\n $count',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increment();
          });
        },
        backgroundColor: Colors.amber,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}
