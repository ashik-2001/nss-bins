import 'package:bins/ScreenMap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ViewMap(),
    );
  }
}

class ViewMap extends StatelessWidget {
  const ViewMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NSS@LBS'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ScreenMap()),
  );
          },
          child: Text('Click to view map'),
        ),
      ),
    );
  }
}
