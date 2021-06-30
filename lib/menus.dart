
import 'package:flutter/material.dart';
import 'package:kiosq_web/components/widgets/atglance.dart';
import 'package:kiosq_web/static.dart';

import 'components/widgets/about.dart';
import 'components/widgets/contactus.dart';
import 'components/widgets/features.dart';
import 'components/widgets/header.dart';

class Menus {
  static final Map<String, Widget> _widgets = {
    'Main': Header(),
    'At Glance': AtGlance(),
    'Features' : Features(),
    'About': About(),
    'Contact Us': ContactUs(),
  };

  static final Map<String, GlobalKey> keys = {
    'Main': GlobalKey(),
    'At Glance': GlobalKey(),
    'Features' : GlobalKey(),
    'About': GlobalKey(),
    'Contact Us': GlobalKey(),
  };

  static List<Widget> navigator(double width){
    List<Widget> names = [];
    _widgets.forEach((key, value) => names.add(headerButton(key, width)));
    return names;
  }

  static List<Widget> get widgets{
    List<Widget> names = [];
    _widgets.forEach((key, value) => names.add(value));
    return names;
  }

  static Widget headerButton(String text, double width) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: TextButton(
          style: Styles.headerBtnStyle,
          onPressed: () {
            Static.hideSidebarCallback.call();
            Scrollable.ensureVisible(keys[text].currentContext, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
          },
          child: Text(text)),
      width: width,
      height: 30,
    );
  }
}