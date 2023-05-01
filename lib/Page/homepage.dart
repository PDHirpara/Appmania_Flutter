import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lizzaa/Products/product.dart';

import '../widget/mywidget.dart';
import 'cartpage.dart';
import 'detailpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "LizzaaFashion",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.menu_sharp,
            color: Colors.black,
          ),
        ),
        actions: [
          const Icon(
            CupertinoIcons.search,
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.bag),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
          ),
        ],
        bottomOpacity: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Column(
                children: [
                  const Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: const [
                        Text(
                          "Kurti",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Palazzo-Set",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Women's-Top",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Kurti-Pair",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
              topData(category: "Kurti"),
              topData(category: "Palazzo-Set"),
              topData(category: "Women's-Top"),
              topData(category: "Kurti-Pair"),
            ],
          ),
        ),
      ),
    );
  }
}
