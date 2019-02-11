import 'package:flutter/material.dart';

import './widgets/floating_button.dart';
import './widgets/drawer.dart';

class Promocion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promocion'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Text('Promocion'),
      ),
      floatingActionButton: FloatingButton(),
      drawer: SideDrawer(),
    );
  }
}
