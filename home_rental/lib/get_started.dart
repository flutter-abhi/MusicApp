import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_rental/disHome.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/getStartBg.png",
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Lets find your Paradise",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const Text(
            "Find your perfect dream space with just a few clicks",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
            child: Container(
              height: 55,
              width: 220,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromRGBO(32, 169, 247, 1)),
              child: const Text(
                "Get Started",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
