import 'package:flutter/material.dart';
import 'main_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Indian Insight',
      theme: ThemeData(
        primaryColor: Colors.yellow[50],
        fontFamily: "Crimson",
      ),
      home: MyHomePage(title: 'The Indian Insight'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 80,
        toolbarOpacity: 1,
        title: Center(
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                widget.title,
                style: TextStyle(
                    fontFamily: 'Chinzel',
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.brown[900]),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: MainBody(),
      ),
    );
  }
}
