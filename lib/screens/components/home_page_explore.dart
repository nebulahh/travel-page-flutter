import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelappdribbble/screens/destination_details_page.dart';
import 'package:travelappdribbble/constants/app_layout.dart';

class HomePageExploreSection extends StatelessWidget {
  final Map<String, dynamic> trips;
  const HomePageExploreSection({super.key, required this.trips});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DestinationDetailsPage(
                    destination: trips,
                  )),
        );
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: size.width * 0.44,
          height: 170,
          padding: const EdgeInsets.symmetric(
            horizontal: 7,
            vertical: 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: const Alignment(0.8, -0.9),
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white60,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("${trips['image']}"),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "\$${trips['price']}",
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${trips['location_name']}",
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${trips['category']}",
                        style: const TextStyle(color: Color(0xFFd2bdb6)),
                      ),
                    ],
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: IconButton(
                      icon: const Icon(
                        FluentSystemIcons.ic_fluent_heart_regular,
                        color: Colors.orange,
                        size: 20,
                      ),
                      onPressed: () {
                        print('object');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
