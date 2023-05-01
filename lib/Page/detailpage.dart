import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lizzaa/class/modalclass.dart';

import '../Products/product.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Detail data = ModalRoute.of(context)!.settings.arguments as Detail;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
              icon: const Icon(
                CupertinoIcons.bag,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('cart');
              },
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: data.images
                      .map(
                        (e) => Container(
                          height: MediaQuery.of(context).size.height * 0.8785,
                          // height: 782.3,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                e,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150),
                  ),
                  color: Colors.white70,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 15, left: 20, right: 10),
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        data.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        '\$${data.price.toString()}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 30),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        'Size',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              width: MediaQuery.of(context).size.width * 0.14,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(
                                  color: const Color.fromRGBO(67, 95, 101, 1),
                                ),
                                color: Colors.white54,
                              ),
                              child: const Center(
                                child: Text(
                                  "S",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25,
                                    color: Color.fromRGBO(67, 95, 101, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              width: MediaQuery.of(context).size.width * 0.14,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(
                                  color: const Color.fromRGBO(67, 95, 101, 1),
                                ),
                                color: Colors.white54,
                              ),
                              child: const Center(
                                child: Text(
                                  "M",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25,
                                    color: Color.fromRGBO(67, 95, 101, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              width: MediaQuery.of(context).size.width * 0.14,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(
                                  color: const Color.fromRGBO(67, 95, 101, 1),
                                ),
                                color: Colors.white54,
                              ),
                              child: const Center(
                                child: Text(
                                  "L",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25,
                                    color: Color.fromRGBO(67, 95, 101, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              width: MediaQuery.of(context).size.width * 0.14,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                border: Border.all(
                                  color: const Color.fromRGBO(67, 95, 101, 1),
                                ),
                                color: Colors.white54,
                              ),
                              child: const Center(
                                child: Text(
                                  "XL",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25,
                                    color: Color.fromRGBO(67, 95, 101, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 20),
                      child: Text(
                        "Women's wear is outfits made specifically for and worn by women. Salwar suits, saaris, lehnga etc. in Indian tradition and Skirts, shirts, sweaters, trousers, coats, chemises, and jeans, etc",
                        style: TextStyle(),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.55,
                          color: Colors.black,
                          child: TextButton(
                            onPressed: () {
                              if (!AddedProducts.contains(data)) {
                                AddedProducts.add(data);
                              } else {
                                stdout.write("No data Available...");
                              }
                              Navigator.of(context).pushNamed('cart');
                            },
                            child: const Center(
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
