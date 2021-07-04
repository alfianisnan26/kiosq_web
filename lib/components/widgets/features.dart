import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../menus.dart';
import '../strings.dart';

class Features extends StatefulWidget {
  final String name = 'Features';
  Key get key => Menus.keys[name];
  @override
  State<StatefulWidget> createState() {
    return _Features();
  }
}

class _Features extends State<Features> {
  Map<String, List<String>> features = {
    'Smart Search': ['search.svg', 'Mencari barang dan toko yang menyediakan barang tersebut'],
    'Smart Map': ['map.svg', 'Mencari lokasi toko terdekat'],
    'Smart Cashier':['cashier.svg', 'Menghitung transaksi dengan tepat'],
    'Smart Counting':['maths.svg','Melakukan pembukuan otomatis untuk penjual'],
    'Smart Delivery':['delivery-truck.svg','Dapat dilakukan pengiriman oleh pihak toko'],
    'Smart Payment':['debit-card.svg','Dapat melakukan pembayaran melalui e-wallet/e-payment']
  };

  List<String> defaultDesc = ['Features', Strings.fitur];

  List<String> desc;
  CarouselController buttonCarouselController = CarouselController();

  Timer t;

  void initState() {
    super.initState();
    desc = defaultDesc;
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Material(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50),
          alignment: Alignment.bottomLeft,
          child: Column(
            children: [
              CarouselSlider(
                items: List.generate(features.length, (index) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        child: Card(
                          elevation: 5,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Container(
                            width: 200,
                            padding: EdgeInsets.all(12),
                            child: GestureDetector(
                              onTap: () {
                                if(t!=null && t.isActive) t.cancel();
                                t = Timer(const Duration(seconds: 4), () {
                                  setState(() {
                                    desc = defaultDesc;
                                  });
                                });
                                buttonCarouselController.animateToPage(index,
                                    curve: Curves.easeInOut);
                                setState(() {
                                  desc = [
                                    features.keys.toList()[index],
                                    features[features.keys.toList()[index]][1]
                                  ];
                                });
                              },
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
                  child: Text(desc[0],
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ))),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Text(desc[1], textAlign: TextAlign.center,style: TextStyle(fontSize: 20),)),
            ],
          ),
        ));
  }
}
