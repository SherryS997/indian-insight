import 'package:flutter/material.dart';
// import 'theme/theme.dart';

class MainBody extends StatefulWidget {
  const MainBody({
    Key key,
  }) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: FittedBox(
                child: Container(
                  // decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Image(
                        fit: BoxFit.fitWidth,
                        height: 300,
                        width: 500,
                        image: AssetImage(
                            'assets/pics/landscape-1844229_1280.png'),
                      ),
                      Divider(
                        height: 20,
                      ),
                      Text(
                        'jjjameson',
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
