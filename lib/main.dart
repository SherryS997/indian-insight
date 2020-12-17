import 'package:flutter/material.dart';
import 'package:indian_insight/ui/global/theme/bloc/theme_bloc.dart';
import 'package:indian_insight/ui/global/theme/theme.dart';
import 'ui/global/main_body.dart';
import 'ui/global/header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'ui/global/theme/theme.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        actions: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.sun,
                    // color: Colors.brown[900],
                  ),
                  onPressed: () {
                    BlocProvider.of<ThemeBloc>(context)
                        .add(ThemeChanged(theme: AppTheme.values[1]));
                  },
                  splashRadius: 20,
                  // splashColor: Colors.brown[900],
                  autofocus: true,
                ),
              ),
              Divider(
                thickness: 20,
              ),
              FittedBox(
                child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.moon,
                    // color: Colors.brown[900],
                  ),
                  onPressed: () {
                    BlocProvider.of<ThemeBloc>(context)
                        .add(ThemeChanged(theme: AppTheme.values[0]));
                  },
                  splashRadius: 20,
                  // splashColor: Colors.brown[900],
                  autofocus: true,
                ),
              ),
            ],
          ),
        ],
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 80,
        toolbarOpacity: 1,
        title: Header(widget: widget),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: MainBody(),
      ),
    );
  }
}
