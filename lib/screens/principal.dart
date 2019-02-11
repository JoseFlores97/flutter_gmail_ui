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
      'image': 'assets/nouser.jpg',
      'isFavorite': true
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/nouser.jpg',
      'isFavorite': false
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/photo.jpg',
      'isFavorite': true
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/nouser.jpg',
      'isFavorite': false
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/photo.jpg',
      'isFavorite': true
    },
    {
      'from': 'Twitter',
      'subject': 'Nuevo inicio de sesión de Twitter desde el',
      'body': 'Observamos que recientemente hubo un inicio',
      'image': 'assets/nouser.jpg',
      'isFavorite': true
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/nouser.jpg',
      'isFavorite': false
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/photo.jpg',
      'isFavorite': true
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/nouser.jpg',
      'isFavorite': false
    },
    {
      'from': 'Jose Flores Salas',
      'subject': 'RESPLADO TRADS FRANCES',
      'body': 'bma1_19-2-6.sql',
      'image': 'assets/photo.jpg',
      'isFavorite': true
    },
  ];

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
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: _mails.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              Mail(_mails[index]),
              Divider(
                height: 0.5,
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingButton(),
      drawer: SideDrawer(),
    );
  }
}
