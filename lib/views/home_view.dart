// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_clothing_store/widgets/category_item_view.dart';
import 'package:ecommerce_clothing_store/widgets/category_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  static const routeName = "home";

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(44),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(44),
              topRight: Radius.circular(44),
              bottomLeft: Radius.circular(44),
              bottomRight: Radius.circular(44),
            ),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Color(0xffbababc),
              tabBorderRadius: 20,
              tabs: const [
                GButton(icon: Icons.home),
                GButton(icon: Icons.shopping_bag),
                GButton(icon: Icons.favorite),
                GButton(icon: Icons.verified_user),
              ],
            ),
          ),
        ),
      ),
      // todo main column

      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              // todo first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Hello, Welcome 👋',
                        style: TextStyle(
                          color: Color(0xFF787676),
                          fontSize: 12,
                          fontFamily: 'Encode Sans',
                          fontWeight: FontWeight.w400,
                          height: 0.12,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Albert Stevano',
                        style: TextStyle(
                          color: Color(0xFF121111),
                          fontSize: 16,
                          fontFamily: 'Encode Sans',
                          fontWeight: FontWeight.w700,
                          height: 0.09,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "data:image/jpeg;base64,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"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  )
                ],
                // todo
              ),
              SizedBox(
                height: 16,
              ),
              // todo second row

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 263,
                    height: 48,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _textFieldController,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 35,
                                    color: const Color.fromARGB(
                                        255, 226, 217, 217),
                                  ),
                                  hintText: 'Search Clothes .. '),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    padding: const EdgeInsets.all(12),
                    decoration: ShapeDecoration(
                      color: Color(0xFF292526),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              // todo
              SizedBox(
                height: 32,
              ),
              // todo
              CategoryListView(),
              // todo
              SizedBox(
                height: 20,
              ),
              CategoryGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
