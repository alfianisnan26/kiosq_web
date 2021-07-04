import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../menus.dart';

class Footer extends StatefulWidget {
  Key get key => Menus.keys['Footer'];
  @override
  State<StatefulWidget> createState() {
    return _Footer();
  }
}

class _Footer extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.purple,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          alignment: Alignment.bottomLeft,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                      visible: (MediaQuery.of(context).size.width < 650)
                          ? false
                          : true,
                      child: Text(
                          'KiosQ App Showcase 1.02 [Beta] | KiosQ App 0.2 [Alpha]',
                          overflow: TextOverflow.fade)),
                  Text('KiosQ Team © 2021')
                ],
              )
            ],
          ),
        ));
  }
}
