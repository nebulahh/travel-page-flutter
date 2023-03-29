import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelappdribbble/screens/components/destination_image_stack.dart';

class DestinationDetailsPage extends StatelessWidget {
  const DestinationDetailsPage({super.key, required this.destination});

  final Map<String, dynamic> destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          child: ListView(
            children: [
              DestinationDetailImageStack(destination: destination),
              SizedBox(
                width: 250,
                height: 210,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Gap(10),
                          Row(
                            children: const [
                              Text(
                                'Overview',
                                style: TextStyle(
                                  fontSize: 15,
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
                                  const Icon(
                                    Icons.timer,
                                    color: Colors.orange,
                                    size: 20,
                                  ),
                                  const Gap(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 20,
                                  ),
                                  const Gap(10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                          const Gap(15),
                          Text(
                            "${destination['details']}",
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Colors.black.withAlpha(0),
                            Colors.black12,
                            Colors.black45
                          ],
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.all(20),
                          shadowColor: Colors.white,
                          elevation: 20,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Book now',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.arrow_right),
                            ],
                          ),
                        ),
                        onPressed: () {
                          print('order');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
