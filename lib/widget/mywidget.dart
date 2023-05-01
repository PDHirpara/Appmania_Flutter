import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lizzaa/Products/product.dart';
import 'package:lizzaa/class/modalclass.dart';

import '../Page/cartpage.dart';
import '../Page/detailpage.dart';

// double h = MediaQuery.of(context as BuildContext).size.height * 0.065;
// double w = MediaQuery.of(context as BuildContext).size.width * 0.14;
Widget topData({required category}) {
  return Builder(
    builder: (context) {
      return Column(
        children: [
          Column(
            children: product
                .map((e) => (e['category'] == category)
                    ? SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Detail d = Detail(
                                  id: e['id'],
                                  title: e['title'],
                                  price: e['price'],
                                  discountPercentage: e['discountPercentage'],
                                  rating: e['rating'],
                                  stock: e['stock'],
                                  brand: e['brand'],
                                  category: e['category'],
                                  thumbnail: e['thumbnail'],
                                  images: e['images'],
                                );
                                print(d);
                                Navigator.of(context)
                                    .pushNamed('detail', arguments: d);
                              },
                              child: SizedBox(
                                // margin: EdgeInsets.only(top: 20),
                                height:
                                    MediaQuery.of(context).size.height * 0.28,
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(30),
                                            bottomLeft: Radius.circular(30),
                                          ),
                                          // color: Colors.red,
                                          image: DecorationImage(
                                            image: NetworkImage(e['thumbnail']),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.white,
                                          borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(30),
                                            bottomRight: Radius.circular(30),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                e['title'],
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15),
                                              child: Text(
                                                'Price',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                '\$${e['price'].toString()}',
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Row(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .pushNamed('cart');
                                                    },
                                                    child: Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.065,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.14,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            const BorderRadius
                                                                .all(
                                                          Radius.circular(10),
                                                        ),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black),
                                                        color: Colors.white,
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            "Add",
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          Icon(Icons
                                                              .arrow_forward)
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      const Icon(
                                                        CupertinoIcons
                                                            .heart_fill,
                                                        color: Colors.pink,
                                                      );
                                                    },
                                                    icon: const Icon(
                                                        CupertinoIcons.heart),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      )
                    : Container())
                .toList(),
          ),
        ],
      );
    },
  );
}
