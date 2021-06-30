import 'package:flutter/material.dart';

import '../../menus.dart';
import '../../static.dart';

class Footer extends StatefulWidget{
  final String name = 'Footer';
  Key get key => Menus.keys[name];
  @override
  State<StatefulWidget> createState() {
    return _Footer();
  }
}

class _Footer extends State<Footer>{
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.purple,
        child:Container(
          padding: EdgeInsets.all(50),
          alignment: Alignment.bottomLeft,
          height: 500,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.name, style: TextStyle(
                fontSize: 30,
              ))
            ],
          ),
        ));
  }
}

