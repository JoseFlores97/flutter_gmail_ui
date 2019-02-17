import 'package:flutter/material.dart';

import './avatar_image.dart';

class Mail extends StatelessWidget {
  final Map<String, dynamic> _mail;
  final int _index;
  final Function _deleteMail;

  Mail(this._mail, this._index, this._deleteMail);

  Widget isFavorite() {
    return _mail['isFavorite']
        ? Icon(Icons.star, color: Colors.yellow[700])
        : Icon(Icons.star_border, color: Colors.grey);
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(_mail['id'].toString()),
      background: Container(
        color: Colors.blue,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(left: 30.0),
            child: Icon(
              Icons.mail,
              color: Colors.white,
            ),
          ),
        ),
      ),
      secondaryBackground: Container(
        color: Colors.red,
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(right: 30.0),
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
        ),
      ),
      onDismissed: (direction) {
        _deleteMail(_index);
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      AvatarImage(_mail['image'], 25.0),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              _mail['from'],
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15.5,
                              ),
                            ),
                          ),
                          Text(
                            '8 Nov',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 12.0,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 12,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Text(
                                          _mail['subject'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 2.5),
                                Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: <Widget>[
                                      Flexible(
                                        child: Text(
                                          _mail['body'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[isFavorite()],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 1.0,
          ),
        ],
      ),
    );
  }
}
