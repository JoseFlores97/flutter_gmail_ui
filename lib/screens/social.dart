import 'package:flutter/material.dart';

import './widgets/floating_button.dart';
import './widgets/drawer.dart';

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Text('Social'),
      ),
      floatingActionButton: FloatingButton(),
      drawer: SideDrawer(),
    );
  }
}
