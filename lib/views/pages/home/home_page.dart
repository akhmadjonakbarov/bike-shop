import '../../../widgets/category_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.teal,
      ),
    );
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              backgroundColor: Theme.of(context).primaryColor,
              title: const Text("Account"),
            ),
            Expanded(
              child: ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                children: const [
                  Text(
                    "Shop",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    "Information",
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _header(scaffoldKey: _scaffoldKey, context: context, size: size),
          Expanded(
            child: ListView(
              children: [
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
                sizeHeight(
                  size: size,
                  heigth: 0.02,
                ),
                CategoryTile(
                  title: "Fiber Items",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget sizeHeight({required Size size, required double heigth}) {
    return SizedBox(
      height: size.height * heigth,
    );
  }

  Widget sizeWidth({required Size size, required double heigth}) {
    return SizedBox(
      height: size.width * 0.02,
    );
  }

  // header consists of drawer, search bar, shop_bag
  Widget _header({
    Size? size,
    required GlobalKey scaffoldKey,
    required BuildContext context,
  }) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(),
              child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
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
                    hintStyle: const TextStyle(height: 0.5),
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
