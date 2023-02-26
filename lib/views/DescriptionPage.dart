import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    var data = [
      {
        'name': 'Dog',
        'image': 'assets/images/dog1.jpg',
        'price': '100',
        'description': 'Dog is a pet animal',
        'breed': 'German Shepherd',
      },
      {
        'name': 'Cat',
        'image': 'assets/images/cat1.jpg',
        'price': '100',
        'description': 'Cat is a pet animal',
        'breed': 'Persian',
      },
      {
        'name': 'Bird',
        'image': 'assets/images/bird1.jpg',
        'price': '100',
        'description': 'Bird is a pet animal',
        'breed': 'Parrot',
      },
      {
        'name': 'Dog',
        'image': 'assets/images/dog1.jpg',
        'price': '100',
        'description': 'Dog is a pet animal',
        'breed': 'German Shepherd',
      },
      {
        'name': 'Cat',
        'image': 'assets/images/cat1.jpg',
        'price': '100',
        'description': 'Cat is a pet animal',
        'breed': 'Persian',
      },
      {
        'name': 'Bird',
        'image': 'assets/images/bird1.jpg',
        'price': '100',
        'description': 'Bird is a pet animal',
        'breed': 'Parrot',
      },
      {
        'name': 'Dog',
        'image': 'assets/images/dog1.jpg',
        'price': '100',
        'description': 'Dog is a pet animal',
        'breed': 'German Shepherd',
      },
      {
        'name': 'Cat',
        'image': 'assets/images/cat1.jpg',
        'price': '100',
        'description': 'Cat is a pet animal',
        'breed': 'Persian',
      },
      {
        'name': 'Bird',
        'image': 'assets/images/bird1.jpg',
        'price': '100',
        'description': 'Bird is a pet animal',
        'breed': 'Parrot',
      },
      {
        'name': 'Dog',
        'image': 'assets/images/dog1.jpg',
        'price': '100',
        'description': 'Dog is a pet animal',
        'breed': 'German Shepherd',
      },
      {
        'name': 'Cat',
        'image': 'assets/images/cat1.jpg',
        'price': '100',
        'description': 'Cat is a pet animal',
        'breed': 'Persian',
      },
      {
        'name': 'Bird',
        'image': 'assets/images/bird1.jpg',
        'price': '100',
        'description': 'Bird is a pet animal',
        'breed': 'Parrot',
      }
    ];
    var activePage = 0;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child: CarouselSlider.builder(
            itemCount: data.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height * 0.5,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(data[itemIndex]['image']!),
                        fit: BoxFit.cover)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: const EdgeInsets.all(5),
                                margin:
                                    const EdgeInsets.only(top: 20, left: 20),
                                alignment: Alignment.topLeft,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Icon(
                                  Icons.arrow_back_ios_sharp,
                                  color: Colors.white,
                                  textDirection: TextDirection.ltr,
                                )),
                            Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(
                                    top: 20, left: 20, right: 20),
                                alignment: Alignment.topLeft,
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Icon(
                                  Icons.star_rate_rounded,
                                  color: Colors.white,
                                  textDirection: TextDirection.ltr,
                                )),
                          ]),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.only(
                                top: 20, left: 20, right: 20, bottom: 20),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundImage:
                                      AssetImage(data[itemIndex]['image']!),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  data[itemIndex]['name']!,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'SF',
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: indicators(data.length, activePage))
                        ],
                      )
                    ]),
              ),
            ]),
            options: CarouselOptions(
                height: 500,
                onPageChanged: (index, reason) {
                  activePage = index;
                },
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                pageViewKey: const PageStorageKey<int>(0),
                padEnds: false),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(children: [
            Text(data[activePage]['name']!,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'SF',
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            Text(data[activePage]['priceN']!,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'SF',
                    fontWeight: FontWeight.normal)),
          ]),
        ),
      ]),
    ));
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(2),
        width: currentIndex == index ? 20 : 10,
        height: currentIndex == index ? 20 : 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.white : Colors.white54,
            shape: BoxShape.circle),
      );
    });
  }
}
