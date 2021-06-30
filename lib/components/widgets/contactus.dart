import 'package:flutter/material.dart';

import '../../menus.dart';
import '../../static.dart';

class ContactUs extends StatefulWidget {
  final String name = 'Contact Us';
  Key get key => Menus.keys[name];
  @override
  State<StatefulWidget> createState() {
    return _ContactUs();
  }
}

class _ContactUs extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: Container(
          alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(50),
      height: 500,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(widget.name,
              style: TextStyle(
                fontSize: 30,
              ))
        ],
      ),
    ));
  }
}
