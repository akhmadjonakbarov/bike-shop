import 'package:banner_carousel/banner_carousel.dart';
import 'package:bike_shop/widgets/category_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView(
        children: [
          _header(
            size: size,
          ),
          CategoryTile(
            title: "Categories",
          ),
          sizeHeight(size: size, heigth: 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue,
              ),
              width: size.width,
              height: size.height * 0.20,
            ),
          ),
          sizeHeight(size: size, heigth: 0.02),
          CategoryTile(
            title: "Fiber Items",
          )
        ],
      ),
    );
  }

  Widget sizeHeight({required Size size, required double heigth}) {
    return SizedBox(
      height: size.height * heigth,
    );
  }

  Widget sizeWidth() {
    return SizedBox(
      height: size.width * 0.02,
    );
  }

  // header consists of drawer, search bar, shop_bag
  Widget _header({Size? size}) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.line_horizontal_3,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: size!.height * 0.05,
                decoration: const BoxDecoration(),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: "Search...",
                    prefixIcon: const Icon(CupertinoIcons.search),
                    suffixIcon: const Icon(CupertinoIcons.qrcode),
                    hintStyle: const TextStyle(height: 0.8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.bag,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
