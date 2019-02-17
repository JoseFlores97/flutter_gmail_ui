import 'package:flutter/material.dart';

import '../users/avatar_image.dart';
import '../widgets/drawer_tile.dart';

class SideDrawer extends StatelessWidget {
  _textStyle() {
    return TextStyle(
      color: Colors.grey[600],
      fontWeight: FontWeight.w600,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[AvatarImage('assets/nouser.jpg', 35.0)],
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Text(
                              'Jose Antonio Flores',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.5,
                          ),
                          Container(
                            child: Text(
                              'pepefloressalas@gmail.com',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/trianglify.jpg'),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2),
                  BlendMode.hardLight,
                ),
              ),
            ),
          ),
          DrawerTile('Principal', 'inbox', '/'),
          DrawerTile('Social', 'people', '/social'),
          DrawerTile('Promociones', 'local_offer', '/promocion'),
          DrawerTile('Notificaciones', 'info', '/'),
          DrawerTile('Foros', 'forum', '/'),
          Divider(),
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 10.0),
            child: Text('Etiquetas recientes', style: _textStyle()),
          ),
          DrawerTile('Buzón de salida', 'label', '/'),
          Divider(),
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 10.0),
            child: Text('Todas las etiquetas', style: _textStyle()),
          ),
          DrawerTile('Destacados', 'star', '/'),
          DrawerTile('Pospuestos', 'watch_later', '/'),
          DrawerTile('Importantes', 'label_important', '/'),
          DrawerTile('Enviados', 'send', '/'),
          DrawerTile('Bandeja de salida', 'vpn_lock', '/'),
          DrawerTile('Borradores', 'insert_drive_file', '/'),
          DrawerTile('Todos', 'mail', '/'),
          DrawerTile('Spam', 'report', '/'),
          DrawerTile('Papelera', 'delete', '/'),
          Divider(),
          Container(
            padding: EdgeInsets.only(left: 15.0, top: 10.0),
            child: Text('Apps de Google', style: _textStyle()),
          ),
          DrawerTile('Calendario', 'calendar_today', '/'),
          DrawerTile('Contactos', 'person', '/'),
          Divider(),
          DrawerTile('Configuración', 'settings', '/'),
          DrawerTile('Ayuda y comentarios', 'help', '/'),
        ],
      ),
    );
  }
}
