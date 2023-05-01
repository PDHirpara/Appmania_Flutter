import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Products/product.dart';
import 'homepage.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int totalPrice = 0;
  void initState() {
    super.initState();
    AddedProducts.forEach((e) {
      totalPrice += e.price;
    });
  }

  TextStyle style = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart Page",
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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              icon: const Icon(CupertinoIcons.home),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          (AddedProducts.isNotEmpty)
              ? Expanded(
                  flex: 8,
                  child: SingleChildScrollView(
                    child: Column(
                      children: AddedProducts.map(
                        (e) => Container(
                          margin: const EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height * 0.28,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(blurRadius: 10, color: Colors.grey),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height,
                                width: MediaQuery.of(context).size.width * 0.37,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  color: Colors.red,
                                  image: DecorationImage(
                                      image: NetworkImage(e.thumbnail),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Text(
                                        e.title,
                                        overflow: TextOverflow.fade,
                                        maxLines: 2,
                                        style: style,
                                      ),
                                    ),
                                    Text(
                                      "\$ ${e.price.toString()}",
                                      style: style,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          AddedProducts.remove(e);
                                          totalPrice -= e.price;
                                        });
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.035,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.14,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                          border:
                                              Border.all(color: Colors.black),
                                          color: Colors.white,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Delete",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ).toList(),
                    ),
                  ),
                )
              : Expanded(
                  flex: 8,
                  child: Center(
                    child: Text(
                      "cart is empty.....\nplease select product.",
                      style: style,
                    ),
                  ),
                ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Text(
                      "Total Price:",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "\$ $totalPrice",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
