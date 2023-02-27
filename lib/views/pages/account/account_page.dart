import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const SafeArea(
            child: Text(
              "Account",
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "Account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                _buttonTile(
                  title: "Sign in",
                  icon: CupertinoIcons.person_circle,
                  color: Colors.orange,
                  size: size,
                  onTap: () {},
                ),
                _line(size: size),
                _buttonTile(
                  title: "Wishlist",
                  icon: CupertinoIcons.heart,
                  color: Colors.teal,
                  size: size,
                  onTap: () {},
                ),
                _line(size: size),
                _buttonTile(
                  title: "Orders",
                  icon: CupertinoIcons.location_circle,
                  color: Colors.teal,
                  size: size,
                  onTap: () {},
                ),
                _line(size: size),
                _buttonTile(
                  title: "Orders",
                  icon: CupertinoIcons.bag,
                  color: Colors.blue,
                  size: size,
                  onTap: () {},
                ),
                _line(size: size),
                _buttonTile(
                  title: "Wallet",
                  icon: Icons.wallet,
                  color: Colors.pink,
                  size: size,
                  onTap: () {},
                ),
                _line(size: size),
                SizedBox(
                  height: size.height * 0.04,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "Information",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                _buttonTile(
                  title: "Privacy and Policy",
                  icon: CupertinoIcons.doc_text_fill,
                  color: Colors.teal,
                  size: size,
                  onTap: () {},
                ),
                _line(size: size),
                _buttonTile(
                  title: "Terms and Conditions",
                  icon: CupertinoIcons.doc_text_fill,
                  color: Colors.orange,
                  size: size,
                  onTap: () {},
                ),
                _line(size: size),
                _buttonTile(
                  title: "Help Center",
                  icon: CupertinoIcons.question_circle,
                  color: const Color.fromARGB(255, 41, 85, 75),
                  size: size,
                  onTap: () {},
                ),
                _line(size: size),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buttonTile({
    required String title,
    required IconData icon,
    double iconSize = 24,
    required Color color,
    required Size size,
    void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(0),
        decoration: const BoxDecoration(),
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        icon,
                        size: iconSize,
                        // size: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(),
                child: const Icon(Icons.arrow_right),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _line({Size? size}) {
    return Container(
      height: size!.height * 0.0005,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
    );
  }
}
