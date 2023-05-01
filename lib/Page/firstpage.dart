import 'package:flutter/material.dart';

import 'homepage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.47,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 95, left: 35),
                child: Text(
                  "Welcome to Lizzaa Fashion.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 280, left: 300),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.15,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(color: Colors.grey, blurRadius: 15),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 200, left: 35),
                child: Text(
                  "Available Online & in outlets.",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.53,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20,
                ),
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              color: Colors.green,
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/originals/fb/d8/c2/fbd8c27afe5442886b1f4de69a631332.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
