import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'dart:ui' as ui;
import 'package:fluentui_icons/fluentui_icons.dart';

class DestinationDetailsPage extends StatelessWidget {
  const DestinationDetailsPage({super.key, required this.destination});

  final Map<String, dynamic> destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
        child: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  alignment: const Alignment(0.8, -0.9),
                  children: [
                    Center(
                      child: Container(
                        height: 450,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white60,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("${destination['image']}"),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRect(
                          child: BackdropFilter(
                            filter:
                                ui.ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200.withOpacity(0.9),
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.keyboard_arrow_left,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        ClipRect(
                          child: BackdropFilter(
                            filter:
                                ui.ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200.withOpacity(0.9),
                                shape: BoxShape.circle,
                              ),
                              margin: const EdgeInsets.only(right: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      FluentSystemIcons.ic_fluent_heart_regular,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  onPressed: () {
                                    print('like button');
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 20,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(50),
                                Text(
                                  "${destination['location_name']}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${destination['other_name']}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Gap(20),
                                Row(
                                  children: [
                                    Text(
                                      "\$${destination['price']}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const Text(
                                      '/person',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ui.ImageFilter.blur(
                                          sigmaX: 10.0, sigmaY: 10.0),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white60,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "${destination['image2']}"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Gap(5),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ui.ImageFilter.blur(
                                          sigmaX: 10.0, sigmaY: 10.0),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white60,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "${destination['image3']}"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Gap(5),
                                Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white38,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ui.ImageFilter.blur(
                                          sigmaX: 10.0, sigmaY: 10.0),
                                      child: Stack(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            padding: const EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white60,
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "${destination['image2']}"),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 10,
                                            top: 16,
                                            child: BackdropFilter(
                                              filter: ui.ImageFilter.blur(
                                                  sigmaX: 1.0, sigmaY: 1.0),
                                              child: const Text(
                                                '+10',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: Column(
                    children: [
                      const Gap(30),
                      Row(
                        children: const [
                          Text(
                            'Overview',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange,
                            ),
                          ),
                          Gap(20),
                          Text(
                            'Reviews',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRect(
                                child: BackdropFilter(
                                  filter: ui.ImageFilter.blur(
                                      sigmaX: 1.0, sigmaY: 1.0),
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.grey.shade200.withOpacity(0.9),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(9)),
                                    ),
                                    padding: const EdgeInsets.all(5),
                                    child: const Icon(
                                      Icons.timer,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'DURATION',
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    "${destination['duration']} hours",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Gap(20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRect(
                                child: BackdropFilter(
                                  filter: ui.ImageFilter.blur(
                                      sigmaX: 1.0, sigmaY: 1.0),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color:
                                          Colors.grey.shade200.withOpacity(0.9),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(9)),
                                    ),
                                    padding: const EdgeInsets.all(5),
                                    // padding: const EdgeInsets.all(5),
                                    child: const Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'RATING',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    "${destination['ratings']} out of 5",
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Gap(12),
                      Text(
                        "${destination['details']}",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              top: MediaQuery.of(context).size.height / 2.0,
              width: MediaQuery.of(context).size.width - 30,
              child: Container(
                padding: const EdgeInsets.all(5.0),
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.white.withAlpha(0),
                      Colors.white12,
                      Colors.white70
                    ],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.all(25),
                      shadowColor: Colors.white,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Book now',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Gap(20),
                      Icon(
                        Icons.arrow_right_alt_sharp,
                      ),
                    ],
                  ),
                  onPressed: () {
                    print('order');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
