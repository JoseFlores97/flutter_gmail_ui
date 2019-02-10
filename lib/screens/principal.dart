import 'package:flutter/material.dart';

import './widgets/floating_button.dart';
import './widgets/drawer.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Text('Principal'),
      ),
      floatingActionButton: FloatingButton(),
      drawer: SideDrawer(),
    );
  }
}
