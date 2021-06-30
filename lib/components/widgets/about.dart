import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../menus.dart';
import '../../static.dart';


class About extends StatefulWidget {
  final String name = 'About';
  Key get key => Menus.keys[name];
  @override
  State<StatefulWidget> createState() {
    return _Header();
  }
}

class _Header extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.green,
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
