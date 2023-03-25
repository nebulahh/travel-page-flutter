import 'package:flutter/material.dart';
import 'package:travelappdribbble/screens/components/category_view.dart';
import 'package:travelappdribbble/utils/app_layout.dart';
import 'package:gap/gap.dart';
import 'package:travelappdribbble/utils/app_info_lists.dart';
// import 'package:fluentui_icons/fluentui_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: AppLayout.getWidth(25),
                          height: AppLayout.getHeight(25),
                          margin: const EdgeInsets.only(
                            right: 10.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            image: const DecorationImage(
                              image: AssetImage(
                                'images/woman.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Text('Hi, Jennifer!')
                      ],
                    ),
                    const Icon(Icons.circle_notifications),
                  ],
                ),
                const Gap(30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Where do',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'you want to go?',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Gap(25),
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
                        child: const Icon(
                          Icons.search,
                          color: Colors.amber,
                        ),
                      ),
                      hintText: 'Search for places',
                      hintStyle: const TextStyle(
                        color: Colors.black,
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
