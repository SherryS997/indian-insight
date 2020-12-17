import 'package:flutter/material.dart';
import '../../main.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.widget,
  }) : super(key: key);

  final MyHomePage widget;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          widget.title,
          style: TextStyle(
              fontFamily: 'Sacramento',
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.brown[900]),
        ),
      ),
    );
  }
}
