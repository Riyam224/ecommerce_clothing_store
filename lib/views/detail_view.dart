// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  static const routeName = "detail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              // color: Colors.red,
            ),
            child: Column(
              children: [
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/images/Product1.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 520,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                // todo
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Light Dress Bless',
                            style: TextStyle(
                              color: Color(0xFF121111),
                              fontSize: 24,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w600,
                              height: 0.05,
                            ),
                          ),
                          // todo row on the right
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.plus,
                                size: 20.0,
                              ),
                              SizedBox(width: 12),
                              Text(
                                '1',
                                style: TextStyle(
                                  color: Color(0xFF292526),
                                  fontSize: 20,
                                  fontFamily: 'Encode Sans',
                                  fontWeight: FontWeight.bold,
                                  height: 0.07,
                                ),
                              ),
                              SizedBox(width: 12),
                              Icon(
                                FontAwesomeIcons.minus,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      // todo row second

                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.solidStar,
                            color: Color(0xffffd33c),
                            size: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '5.0  ',
                            style: TextStyle(
                              color: Color(0xFF787676),
                              fontSize: 12,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.bold,
                              height: 0.10,
                            ),
                          ),
                          Text(
                            '(7.932 reviews)',
                            style: TextStyle(
                              color: Color(0xFF4186fb),
                              fontSize: 12,
                              fontFamily: 'Encode Sans',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                            ),
                          )
                        ],
                      ),
                      // todo
                      SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Text(
                              'Its simple and elegant shape makes it perfect for\n those of you who like you who want minimalist\n clothes ',
                              style: TextStyle(
                                color: Color(0xFF787676),
                                fontSize: 12,
                                fontFamily: 'Encode Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        // todo
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // todo
                            height: 100,
                            child: Column(
                              children: [
                                Text(
                                  'Choose Size',
                                  style: TextStyle(
                                    color: Color(0xFF121111),
                                    fontSize: 16,
                                    fontFamily: 'Encode Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 0.12,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 11),
                                  child: Row(
                                    children: [
                                      Text(
                                        'S',
                                        style: TextStyle(
                                          color: Color(0xFF292526),
                                          fontSize: 16,
                                          fontFamily: 'Encode Sans',
                                          fontWeight: FontWeight.w400,
                                          height: 0.12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        'M',
                                        style: TextStyle(
                                          color: Color(0xFF292526),
                                          fontSize: 16,
                                          fontFamily: 'Encode Sans',
                                          fontWeight: FontWeight.w400,
                                          height: 0.12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: Center(
                                          child: Text(
                                            'L',
                                            style: TextStyle(
                                              color: Color(0xFFFDFDFD),
                                              fontSize: 16,
                                              fontFamily: 'Encode Sans',
                                              fontWeight: FontWeight.w700,
                                              height: 0.12,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        'XL',
                                        style: TextStyle(
                                          color: Color(0xFF292526),
                                          fontSize: 12,
                                          fontFamily: 'Encode Sans',
                                          fontWeight: FontWeight.w400,
                                          height: 0.12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // todo contanier 2 to the right
                          Container(
                            height: 100,
                            child: Column(
                              children: [
                                Text(
                                  'Colors',
                                  style: TextStyle(
                                    color: Color(0xFF121111),
                                    fontSize: 16,
                                    fontFamily: 'Encode Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 0.12,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 11),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Color(0xff787676),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Color(0xff433f40),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // todo
                SizedBox(
                  height: 12,
                ),
                // todo card
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, 'cart');
                  },
                  child: Padding(
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_shopping_cart_outlined,
                              color: Colors.white,
                              size: 24,
                            ),
                            SizedBox(width: 8),
                            Row(
                              children: [
                                Text(
                                  'Add to Cart |',
                                  style: TextStyle(
                                    color: Color(0xFFFDFDFD),
                                    fontSize: 14,
                                    fontFamily: 'Encode Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 0.10,
                                  ),
                                ),
                                Text(
                                  ' \$162.99',
                                  style: TextStyle(
                                    color: Color(0xFFFDFDFD),
                                    fontSize: 14,
                                    fontFamily: 'Encode Sans',
                                    fontWeight: FontWeight.w700,
                                    height: 0.10,
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
