import 'package:flutter/material.dart';

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
        bottom: PreferredSize(
          child: FittedBox(
            child: Container(
              width: 1000,
              height: 2,
              color: Colors.black,
            ),
          ),
          preferredSize: Size.fromHeight(0),
        ),
        centerTitle: true,
        toolbarHeight: 130,
        toolbarOpacity: 1,
        title: Column(
          children: [
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontFamily: 'Chinzel',
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.brown[900]),
                ),
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "A Young Indian's Philosophical Perspective",
                  style: TextStyle(
                    fontFamily: 'Chomsky',
                    fontSize: 20,
                    color: Colors.brown[900],
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Divider(
                  height: 1.0,
                  color: Colors.black,
                ),
                Divider(
                  height: 30,
                ),
                Text(
                  'jjjameson',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
