import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelappdribbble/constants/app_layout.dart';

class CategorySection extends StatelessWidget {
  final Map<String, dynamic> category;
  const CategorySection({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppLayout.getHeight(47),
      child: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 5,
          top: 5,
        ),
        margin: const EdgeInsets.only(right: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(width: 2.0, color: const Color(0xFFFFFFFF)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(7.0)),
              ),
              child: Image.asset(category['path']),
            ),
            const Gap(20),
            Text(category['name']),
          ],
        ),
      ),
    );
  }
}
