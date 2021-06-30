import 'package:flutter/material.dart';
import 'package:kiosq_web/static.dart';

import '../../menus.dart';

class Header extends StatefulWidget {
  final String name = 'Main';
  Key get key => Menus.keys[name];
  @override
  State<StatefulWidget> createState() {
    return _Header();
  }
}

class _Header extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(50),
          alignment: Alignment.bottomLeft,
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

class DynamicHeader extends StatefulWidget {
  final Function callback;
  const DynamicHeader({Key key, this.callback}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _DynamicHeader();
  }
}

class aDynamicHeader extends State<DynamicHeader> {
  @override
  Widget build(BuildContext context) {
    return Material(
        animationDuration: Duration(milliseconds: 125),
        elevation: (Static.headerState) ? 10 : 0,
        child: AnimatedContainer(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          duration: Duration(milliseconds: 125),
          child: Stack(
            children: [
              Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("KiosQ"),
                  (MediaQuery.of(context).size.width <
                          Menus.widgets.length * 110 + 500)
                      ? IconButton(
                          icon: Icon(Icons.dehaze_rounded),
                          onPressed: widget.callback)
                      : Row(children: Menus.navigator(100)),
                ],
              )),
              Center(child: Text("Logo"))
            ],
          ),
        ));
  }
}

class _DynamicHeader extends State<DynamicHeader>
    with SingleTickerProviderStateMixin {
  Curve curve = Curves.easeInOut;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<Offset>(
          begin: Offset(0, Static.headerStart),
          end: Offset(0, Static.headerEnd)),
      duration: Duration(milliseconds: 250),
      curve: curve,
      builder: (context, offset, child) {
        return FractionalTranslation(translation: offset, child: child);
      },
      child: Material(
          animationDuration: Duration(milliseconds: 125),
          elevation: (Static.headerState) ? 10 : 0,
          child: AnimatedContainer(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 20),
            color: Colors.white,
            duration: Duration(milliseconds: 125),
            child: Stack(
              children: [
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("KiosQ"),
                    (MediaQuery.of(context).size.width <
                            Menus.widgets.length * 110 + 500)
                        ? IconButton(
                            icon: Icon(Icons.dehaze_rounded),
                            onPressed: widget.callback)
                        : Row(children: Menus.navigator(100)),
                  ],
                )),
                Center(child: Text("Logo"))
              ],
            ),
          )),
      onEnd: () {
        if (Static.headerStart == 1)
          Static.headerStart = 0;
        else
          Static.headerStart = 1;
      },
    );
  }
}
