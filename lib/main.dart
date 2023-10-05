import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Numbered ListView'),
        ),
        body: NumberedList(),
      ),
    );
  }
}

class NumberedList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        final itemNumber = index + 1;
        return ListTile(
          title: Text('Item $itemNumber'),
        );
      },
    );
  }
}
