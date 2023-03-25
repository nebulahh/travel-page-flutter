import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:travelappdribbble/utils/app_layout.dart';

class CategorySection extends StatelessWidget {
  final Map<String, dynamic> category;
  const CategorySection({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.40,
      height: AppLayout.getHeight(37),
      child: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 5,
          top: 5,
        ),
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
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
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5.0)),
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
