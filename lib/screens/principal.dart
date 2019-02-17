import 'package:flutter/material.dart';

import './widgets/floating_button.dart';
import './widgets/drawer.dart';
import './users/mails.dart';

class Principal extends StatelessWidget {
  final List<Map<String, dynamic>> _mails = [
    {
      'from': 'Twitter',
      'subject': 'Nuevo inicio de sesión de Twitter desde el',
      'body': 'Observamos que recientemente hubo un inicio',
      'image': 'assets/a.png',
      'isFavorite': true,
      'id': 1
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/e.png',
      'isFavorite': false,
      'id': 2
    },
    {
      'from': 'Martin Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/m.png',
      'isFavorite': true,
      'id': 3
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/o.png',
      'isFavorite': false,
      'id': 4
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/e.png',
      'isFavorite': true,
      'id': 5
    },
    {
      'from': 'Twitter',
      'subject': 'Nuevo inicio de sesión de Twitter desde el',
      'body': 'Observamos que recientemente hubo un inicio',
      'image': 'assets/u.png',
      'isFavorite': true,
      'id': 6
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/f.png',
      'isFavorite': false,
      'id': 7
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/g.png',
      'isFavorite': true,
      'id': 8
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/a.png',
      'isFavorite': false,
      'id': 9
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/f.png',
      'isFavorite': true,
      'id': 10
    },
  ];

  void deleteMail(int index) {
    _mails.removeAt(index);
    print(_mails.length);
  }

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
        elevation: 1,
      ),
      body: ListView.builder(
        itemCount: _mails.length,
        itemBuilder: (context, index) {
          return Mail(_mails[index], index, deleteMail);
        },
      ),
      floatingActionButton: FloatingButton(),
      drawer: SideDrawer(),
    );
  }
}
