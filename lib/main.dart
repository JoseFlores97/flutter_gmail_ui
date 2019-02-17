import 'package:flutter/material.dart';

import './screens/principal.dart';
import './screens/social.dart';
import './screens/promocion.dart';

import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.grey,
    ),
  );
  runApp(MyApp());
}

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
        '/promocion': (BuildContext context) => Promocion(),
      },
    );
  }
}
