import 'package:flutter/material.dart';

class AvatarImage extends StatelessWidget {
  final String _userImage;
  AvatarImage(this._userImage);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(_userImage),
      radius: 35,
    );
  }
}
