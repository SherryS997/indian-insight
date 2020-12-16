import 'package:flutter/material.dart';
import 'main_body.dart';
import 'header.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:flutter/scheduler.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

bool _hasBeenPressed = true;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      saveThemesOnChange: true,
      loadThemeOnInit: false,
      onInitCallback: (controller, previouslySavedThemeFuture) async {
        String savedTheme = await previouslySavedThemeFuture;
        if (savedTheme != null) {
          controller.setTheme(savedTheme);
        } else {
          Brightness platformBrightness =
              SchedulerBinding.instance.window.platformBrightness;
          if (platformBrightness == Brightness.dark) {
            controller.setTheme('dark');
            _hasBeenPressed = false;
          } else {
            controller.setTheme('light');
            _hasBeenPressed = true;
          }
          controller.forgetSavedTheme();
        }
      },
      themes: <AppTheme>[
        AppTheme.light(id: 'light'),
        AppTheme.dark(id: 'dark'),
      ],
      child: ThemeConsumer(
        child: Builder(
          builder: (themeContext) => MaterialApp(
            theme: ThemeProvider.themeOf(themeContext).data,
            title: 'The Indian Insight',
            home: MyHomePage(title: 'the indian insight'),
          ),
        ),
      ),
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
    var controller = ThemeProvider.controllerOf(context);
    return Scaffold(
      // backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        leading: IconButton(
          icon: _hasBeenPressed
              ? Icon(
                  FontAwesomeIcons.sun,
                  // color: Colors.brown[900],
                )
              : Icon(
                  FontAwesomeIcons.moon,
                  // color: Colors.brown[900],
                ),
          onPressed: controller.nextTheme,
          splashRadius: 20,
          // splashColor: Colors.brown[900],
          autofocus: true,
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
    );
  }
}
