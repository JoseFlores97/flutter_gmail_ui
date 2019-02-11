import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  final String _userImage;
  final double _border;
  AvatarImage(this._userImage, this._border);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(_userImage),
      radius: _border,
    );
  }
}
