import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final Map<String, dynamic> icons = {
    'inbox': Icons.inbox,
    'people': Icons.people,
    'local_offer': Icons.local_offer,
    'info': Icons.info,
    'forum': Icons.forum,
    'label': Icons.label,
    'star': Icons.star,
    'watch_later': Icons.watch_later,
    'label_important': Icons.label_important,
    'send': Icons.send,
    'vpn_lock': Icons.vpn_lock,
    'insert_drive_file': Icons.insert_drive_file,
    'mail': Icons.mail,
    'report': Icons.report,
    'delete': Icons.delete,
    'calendar_today': Icons.calendar_today,
    'person': Icons.person,
    'settings': Icons.settings,
    'help': Icons.help,
  };
  final String _title;
  final String _icon;
  final String _to;
  DrawerTile(this._title, this._icon, this._to);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_title),
      leading: Icon(icons[_icon]),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(_to);
      },
    );
  }
}
