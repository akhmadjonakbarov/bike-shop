import 'package:flutter/material.dart';

import '../views/constants/constants.dart';

class CategoryTile extends StatelessWidget {
  final String? title;
  CategoryTile({super.key, this.title});
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
      decoration: BoxDecoration(
        color: appGrey,
      ),
      height: size.height * 0.27,
      child: Column(
        children: [
          Text(
            title ?? "",
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: size.width * 0.02,
                );
              },
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {
                            print(index);
                          },
                          child: Container(
                            decoration: const BoxDecoration(),
                            height: size.height * 0.15,
                            width: size.width * 0.35,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Categoryname".toUpperCase(),
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
