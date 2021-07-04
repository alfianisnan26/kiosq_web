import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../menus.dart';
import '../strings.dart';

class Feedbacks extends StatefulWidget {
  final String name = 'Feedbacks';
  Key get key => Menus.keys[name];
  @override
  State<StatefulWidget> createState() {
    return _Feedbacks();
  }
}

class _Feedbacks extends State<Feedbacks> {
  Map<String, List<String>> features = {
    'Smart Search': ['search.svg', 'The Search Engine is Great'],
    'Smart Map': ['map.svg', 'The Map is Great']
  };

  List<String> defaultDesc = ['Feedbacks', Strings.samples];

  CarouselController buttonCarouselController = CarouselController();

  Timer t;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Material(
        color: Colors.blue,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50),
          alignment: Alignment.bottomLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CarouselSlider(
                items: List.generate(features.length, (index) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        child: Card(
                          elevation: 20,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            width: 200,
                            padding: EdgeInsets.all(12),
                            child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    'assets/svg/${(features[features.keys.toList()[index]])[0]}',
                                    height: 75,
                                  ),
                                  Text(features.keys.toList()[index]),
                                ],
                              ),
                            ),
                        ),
                      );
                    },
                  );
                }).toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    enlargeCenterPage: false,
                    viewportFraction: 250 / size,
                    initialPage: 0,
                    aspectRatio: 9 / 16),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(widget.name,
                      style: TextStyle(
                        fontSize: 30,
                      ))),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(Strings.samples)),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 50, top: 25),
                child:Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                elevation: 5,
                child:Container(
                  padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text('Give your feedback and opinion here!', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('Give us rating!', style: TextStyle(fontWeight: FontWeight.bold),),
                  ]
                ))))
            ],
          )),
        );
  }
}
