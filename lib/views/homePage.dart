import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pet_shop/constants/AppColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Image.asset('assets/images/takee.png'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(right: 10),
                      height: 65.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            foregroundImage: Image.asset(
                              'assets/images/all.jpg',
                            ).image,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'All',
                            style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 16,
                                fontFamily: 'SF'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 65.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                          color: AppColors.textColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: Colors.white70,
                              strokeAlign: StrokeAlign.inside,
                              width: 3,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            foregroundImage: Image.asset(
                              'assets/images/dog1.jpg',
                            ).image,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Dog',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'SF'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 65.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                          color: AppColors.textColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: Colors.white70,
                              strokeAlign: StrokeAlign.inside,
                              width: 3,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            foregroundImage: Image.asset(
                              'assets/images/cat1.jpg',
                            ).image,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Cat',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'SF'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 65.0,
                      width: 130.0,
                      decoration: BoxDecoration(
                          color: AppColors.textColor,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                              color: Colors.white70,
                              strokeAlign: StrokeAlign.inside,
                              width: 3,
                              style: BorderStyle.solid),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 3),
                            ),
                          ]),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            foregroundImage: Image.asset(
                              'assets/images/bird1.jpg',
                            ).image,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Bird',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'SF'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                child: GridView.builder(
                  itemCount: data.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 4.0),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(images[index]);
                  },
                ),
              )
            ],
          ),
        ));
  }
}
