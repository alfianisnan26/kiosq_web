import 'package:flutter/material.dart';

import '../../menus.dart';

class Footer extends StatefulWidget{
  Key get key => Menus.keys['Footer'];
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
          height: 125
        ));
  }
}

