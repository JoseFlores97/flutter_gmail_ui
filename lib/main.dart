import 'package:flutter/material.dart';

import './screens/principal.dart';
import './screens/social.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Principal(),
      theme: ThemeData(primaryColor: Colors.red),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Principal(),
        '/social': (BuildContext context) => Social(),
      },
    );
  }
}
