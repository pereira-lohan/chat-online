import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final Map<String, dynamic> _data;
  final bool isMine;
  ChatMessage(this._data, this.isMine);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        children: <Widget>[
          !isMine
              ? Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(_data["senderPhotoUrl"]),
                  ),
                )
              : Container(),
          Expanded(
            child: Column(
              crossAxisAlignment:
                  isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _data["sender"],
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                _data["imgUrl"] != null
                    ? Image.network(
                        _data["imgUrl"],
                        width: 250.0,
                      )
                    : Text(
                        _data["text"],
                        textAlign: isMine ? TextAlign.end : TextAlign.start,
                        style: TextStyle(fontSize: 16.0),
                      )
              ],
            ),
          ),
          isMine
              ? Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(_data["senderPhotoUrl"]),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
