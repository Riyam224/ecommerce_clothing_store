// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartView extends StatelessWidget {
  CartView({super.key});

  static const routeName = "cart";

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Container(
          width: double.infinity,
          height: 800,
          color: Colors.red,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                        width: 24,
                        height: 24,
                        child: Icon(
                          FontAwesomeIcons.lessThan,
                        )),
                    const Text(
                      'Checkout',
                      style: TextStyle(
                        color: Color(0xFF121111),
                        fontSize: 16,
                        fontFamily: 'Encode Sans',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      child: const Icon(
                        Icons.menu,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                // todo cart items

                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      itemCount: categoryGrid.length,
                      itemBuilder: (context, int index) {
                        final items = categoryGrid[index];
                        // todo
                        return Row(
                          children: [
                            Container(
                              width: 95,
                              height: 118,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 9, bottom: 22, left: 13, right: 13),
                                child: Container(
                                  width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    child: Image.asset(
                                      // todo
                                      '${items['image']}',
                                      fit: BoxFit.cover,
                                      // width: double.infinity,
                                      // height: 260,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 308.5,
                              height: 118,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 9,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // todo column modern  text
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // todo
                                          '${categoryGrid[index]['title']}',
                                          style: TextStyle(
                                            color: Color(0xFF121111),
                                            fontSize: 14,
                                            fontFamily: 'Encode Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          '${categoryGrid[index]['categoryName']}',
                                          style: TextStyle(
                                            color: Color(0xFF787676),
                                            fontSize: 10,
                                            fontFamily: 'Encode Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          '${categoryGrid[index]['price']}',
                                          style: TextStyle(
                                            color: Color(0xFF292526),
                                            fontSize: 14,
                                            fontFamily: 'Encode Sans',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Container(
                                        width: 100,
                                        height: 100,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.more_horiz,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(
                                                  FontAwesomeIcons.plus,
                                                  size: 14,
                                                ),
                                                SizedBox(width: 12),
                                                Text(
                                                  '4',
                                                  style: TextStyle(
                                                    color: Color(0xFF292526),
                                                    fontSize: 14,
                                                    fontFamily: 'Encode Sans',
                                                    fontWeight: FontWeight.w600,
                                                    height: 0.09,
                                                  ),
                                                ),
                                                SizedBox(width: 12),
                                                Icon(
                                                  FontAwesomeIcons.minus,
                                                  size: 14,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // todo end of cart item
                          ],
                        );
                      }),
                ),

                // todo

                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 200,
                    left: 20,
                    bottom: 20,
                  ),
                  child: Text(
                    'Shopping Information ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                    left: 20.0,
                    bottom: 20.0,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 30,
                            color: Color(0XFD3a58a8),
                            child: Center(
                              child: Text('VISA',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text('**** **** **** 3244',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(width: 10),
                          Icon(
                            FontAwesomeIcons.arrowDownAZ,
                            size: 12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                    left: 20.0,
                    bottom: 24,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    // color: Colors.black,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total (9 items)'),
                            Text('\$322.99'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Shipping fee'),
                            Text('\$0.00'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('Discount'),
                            Text('\$0.00'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text('Total sub'),
                            Text('\$2.994'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        // todo

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: ShapeDecoration(
                                color: Color(0xFF292526),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'pay',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
