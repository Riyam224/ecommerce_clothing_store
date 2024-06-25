import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});

  final List<Map<String, dynamic>> categories = [
    {
      "icon": Icons.flashlight_off,
      "name": "All Items",
      "bgColor": Colors.black,
      "textColor": Colors.white,
    },
    {
      "icon": Icons.directions_sharp,
      "name": "Dress",
      "bgColor": Colors.white,
      "textColor": Colors.black,
    },
    {
      "icon": Icons.directions_sharp,
      "name": "T-Shirt",
      "bgColor": Colors.white,
      "textColor": Colors.black,
    },
    {
      "icon": Icons.directions_sharp,
      "name": "Pants",
      "bgColor": Colors.white,
      "textColor": Colors.black,
    },
    {
      "icon": Icons.directions_sharp,
      "name": "Shoes",
      "bgColor": Colors.white,
      "textColor": Colors.black,
    }
  ];

// todo
  bool isActive = true;
  //
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: ListView.builder(
          // todo
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Container(
                width: 92,
                height: 34,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: ShapeDecoration(
                  // todo
                  color: categories[index]['bgColor'],
                  // todo
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      categories[index]['icon'],
                      size: 10,

                      // todo
                      color: categories[index]["textColor"],
                    ),
                    const SizedBox(width: 4),
                    Text(
                      categories[index]['name'],
                      style: TextStyle(
                        color: categories[index]["textColor"],
                        fontSize: 12,
                        fontFamily: 'Encode Sans',
                        fontWeight: FontWeight.w500,
                        height: 0.12,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
