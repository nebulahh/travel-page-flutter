import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:travelappdribbble/screens/components/category_view.dart';
import 'package:travelappdribbble/screens/components/home_page_explore.dart';
import 'package:travelappdribbble/constants/app_layout.dart';
import 'package:gap/gap.dart';
import 'package:travelappdribbble/models/app_info_lists.dart';
import 'dart:ui' as ui;
import 'package:fluentui_icons/fluentui_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = AppLayout.getSize(context);
    return Scaffold(
      body: ListView(
        children: [
          const Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRect(
                        child: BackdropFilter(
                          filter: ui.ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200.withOpacity(0.9),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Container(
                              width: AppLayout.getWidth(25),
                              height: AppLayout.getHeight(25),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/woman.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        'Hi, Jennifer!',
                      )
                    ],
                  ),
                  ClipRect(
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200.withOpacity(0.35),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Icon(
                                // FluentSystemIcons .notifica,
                                Icons.notifications_outlined,
                                color: Colors.amber,
                              ),
                            ),
                            const Positioned(
                              left: 15,
                              top: 3,
                              child: Icon(
                                Icons.brightness_1,
                                color: Colors.amber,
                                size: 9.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(35),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Where do',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'you want to go?',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Gap(30),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFF4F6F0),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 7,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    // focusedBorder: InputBorder.none,
                    // enabledBorder: InputBorder.none,
                    // errorBorder: InputBorder.none,
                    // disabledBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.all(15),
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: -2,
                            blurRadius: 1,
                            offset: const Offset(0, -1),
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.grey,
                            backgroundColor: Colors.white,
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(0),
                          ),
                          child: const Icon(
                            Icons.search,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            debugPrint('Search button Pressed');
                          },
                        ),
                      ),
                    ),
                    hintText: 'Search for places...',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const Gap(25),
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categoryList
                      .map((singleCategory) =>
                          CategorySection(category: singleCategory))
                      .toList(),
                ),
              ),
              const Gap(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      print('change trips');
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text('Top trips',
                            style: TextStyle(
                              fontSize: 21,
                              color: Color(0xFF3b3b3b),
                              fontWeight: FontWeight.bold,
                            )),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 17,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('Tap the more icon carnage');
                    },
                    child: Row(children: const [
                      Text('Explore'),
                      Icon(
                        Icons.arrow_right_alt,
                        size: 20,
                        weight: 20,
                        color: Colors.amber,
                      )
                    ]),
                  )
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: trips
                    .map((destination) =>
                        HomePageExploreSection(trips: destination))
                    .toList(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
