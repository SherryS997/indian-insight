import 'package:flutter/material.dart';
import 'package:indian_insight/ui/global/theme/bloc/theme_bloc.dart';
import 'package:indian_insight/ui/global/theme/theme.dart';
import 'ui/global/main_body.dart';
// import 'ui/global/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ui/global/theme/theme.dart';
import 'ui/global/theme/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (BuildContext context, ThemeState state) {
        return MaterialApp(
          title: 'The Indian Insight',
          theme: state.themeData,
          home: MyHomePage(title: 'the indian insight'),
        );
      }),
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
  bool _isPressed = false;
  // final _darkImg = Image.asset('assets/pics/landscape-1844231_1280.png');
  // final _lightImg = Image.asset('assets/pics/landscape-1844229_1280.png');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: _isPressed
                ? Icon(
                    FontAwesomeIcons.moon,
                    // color: Colors.brown[900],
                  )
                : Icon(
                    FontAwesomeIcons.sun,
                    // color: Colors.brown[900],
                  ),
            onPressed: () {
              BlocProvider.of<ThemeBloc>(context).add(
                  ThemeChanged(theme: AppTheme.values[_isPressed ? 1 : 0]));
              setState(() {
                if (_isPressed == false) {
                  _isPressed = true;
                } else {
                  _isPressed = false;
                }
              });
            },
            iconSize: 15,
            splashRadius: 15,
            autofocus: true,
          ),
        ],
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70,
        toolbarOpacity: 1,
        title: FittedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.title,
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
