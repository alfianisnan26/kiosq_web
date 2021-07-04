import 'package:flutter/material.dart';
import 'package:kiosq_web/components/strings.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../menus.dart';

class AtGlance extends StatefulWidget {
  final String name = 'At Glance';
  Key get key => Menus.keys[name];
  @override
  State<StatefulWidget> createState() {
    return _AtGlance();
  }
}

class _AtGlance extends State<AtGlance> {

  // ignore: close_sinks
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'K18cpp_-gP8',
    params: YoutubePlayerParams(
      showControls: true,
      showFullscreenButton: true,
      autoPlay: false
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.red,
        child: Container(
          alignment: Alignment.bottomCenter,
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 50),
            height: 500,
        child:YoutubePlayerIFrame(
            controller: _controller,
            aspectRatio: 16 / 9,
          )),
          Text(widget.name,
              style: TextStyle(
                fontSize: 30,
              )),
          SizedBox(height: 20,),
          Text(
            Strings.deskripsiAtGlance
          ),
        ],
      ),
    ));
  }
}
