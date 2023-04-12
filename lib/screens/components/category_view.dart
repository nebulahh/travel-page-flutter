import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelappdribbble/constants/app_layout.dart';

class CategorySection extends StatelessWidget {
  final Map<String, dynamic> category;
  const CategorySection({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      height: AppLayout.getHeight(42),
      child: ElevatedButton(
        onPressed: () {
          print('category section');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
          ),
          padding: const EdgeInsets.all(13),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ).merge(
          ButtonStyle(
            elevation: MaterialStateProperty.resolveWith<double>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) return 15.0;
              return 0;
            }),
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: const BorderRadius.all(Radius.circular(7.0)),
              ),
              child: Image.asset(category['path']),
            ),
            const Gap(20),
            Text(
              category['name'],
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


    // padding: const EdgeInsets.only(
    //       left: 10,
    //       right: 10,
    //       bottom: 5,
    //       top: 5,
    //     ),
    //     margin: const EdgeInsets.only(right: 18),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10.0),
          // border: Border.all(width: 2.0, color: Colors.grey.shade200),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),
          //     spreadRadius: 1,
          //     blurRadius: 7,
          //     offset: const Offset(0, 3),
          //   ),
          // ],
        // ),