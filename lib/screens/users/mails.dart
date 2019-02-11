import 'package:flutter/material.dart';

class Mail extends StatelessWidget {
  final Map<String, dynamic> _mail;

  Mail(this._mail);

  Widget isFavorite() {
    return _mail['isFavorite']
        ? Icon(Icons.star, color: Colors.yellow[700])
        : Icon(
            Icons.star_border,
            color: Colors.grey,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(_mail['image']),
                  radius: 22.0,
                )
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
    );
  }
}
