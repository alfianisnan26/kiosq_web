import 'package:flutter/material.dart';

import '../../menus.dart';
import '../../static.dart';

class Features extends StatefulWidget {
  final String name = 'Features';
  Key get key => Menus.keys[name];
  @override
  State<StatefulWidget> createState() {
    return _Features();
  }
}

class _Features extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.lime,
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
