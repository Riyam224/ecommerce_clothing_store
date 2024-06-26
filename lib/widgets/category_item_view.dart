import 'package:flutter/material.dart';

class CategoryGridView extends StatelessWidget {
  CategoryGridView({super.key});

  final List<Map<String, dynamic>> categoryGrid = [
    {
      'image': 'assets/images/Product1.png',
      'title': 'Modern Light Clothes',
      'categoryName': 'T-Shirt',
      'price': '\$212.50',
    },
    {
      'image': 'assets/images/Product2.png',
      'title': 'Light Dress Bless',
      'categoryName': 'Jackets',
      'price': '\$262.89',
    },
    {
      'image': 'assets/images/Product3.png',
      'title': 'Modern Sunglasses',
      'categoryName': 'Sunglasses',
      'price': '\$300.44',
    },
    {
      'image': 'assets/images/Product4.png',
      'title': 'Yellow Dress',
      'categoryName': 'Dress',
      'price': '\$140.99',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 370,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: categoryGrid.length,
        itemBuilder: (context, index) {
          return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffdee2e1),
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      // todo
                      Navigator.pushReplacementNamed(context, 'detail');
                    },
                    child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        child: Image.asset(
                          '${categoryGrid.elementAt(index)['image']}',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 260,
                        )),
                  ),
                  // todo
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${categoryGrid.elementAt(index)['title']}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                            '${categoryGrid.elementAt(index)['categoryName']}'),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${categoryGrid.elementAt(index)['price']}',
                              style: const TextStyle(
                                color: Color(0xFF292526),
                                fontSize: 14,
                                fontFamily: 'Encode Sans',
                                fontWeight: FontWeight.w600,
                                height: 0.11,
                              ),
                            ),
                            const Row(
                              children: [
                                Icon(Icons.favorite),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '5.0',
                                  style: TextStyle(
                                    color: Color(0xFF292526),
                                    fontSize: 12,
                                    fontFamily: 'Encode Sans',
                                    fontWeight: FontWeight.w400,
                                    height: 0.12,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ));
        });
  }
}
