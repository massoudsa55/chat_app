// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String _name = "Messaoud";
AssetImage assetImage1 = const AssetImage('images/my_photo.jpg');
AssetImage assetImage2 = const AssetImage('images/my_img.jpg');

class ChatMessage extends StatelessWidget {
  final String text;
  const ChatMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      padding: const EdgeInsets.all(8.0),
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
          /*border: Border.all(
            color: Colors.blue, width: 2.0, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(20),*/
          color: Colors.cyan[100],
          shape: BoxShape.rectangle,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: assetImage2,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}