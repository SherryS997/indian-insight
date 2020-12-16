import 'package:flutter/material.dart';
import 'main_body.dart';
import 'header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final isPlatformDark =
        WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
    final initTheme = isPlatformDark ? darkTheme : lightTheme;
    return ThemeProvider(
      initTheme: initTheme,
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'The Indian Insight',
          theme: ThemeProvider.of(context),
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
  bool _hasBeenPressed = false;
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        // backgroundColor: Colors.yellow[50],
        appBar: AppBar(
          leading: ThemeSwitcher(
            builder: (context) {
              return IconButton(
                icon: _hasBeenPressed
                    ? Icon(
                        FontAwesomeIcons.sun,
                        color: Colors.brown[900],
                      )
                    : Icon(
                        FontAwesomeIcons.moon,
                        color: Colors.brown[900],
                      ),
                onPressed: () => {
                  ThemeSwitcher.of(context).changeTheme(
                    theme:
                        ThemeProvider.of(context).brightness == Brightness.light
                            ? pinkTheme
                            : darkTheme,
                    reverseAnimation: false,
                  ),
                  setState(
                    () {
                      _hasBeenPressed = !_hasBeenPressed;
                    },
                  ),
                },
                splashRadius: 20,
                splashColor: Colors.brown[900],
                autofocus: true,
              );
            },
          ),
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
      ),
    );
  }
}
