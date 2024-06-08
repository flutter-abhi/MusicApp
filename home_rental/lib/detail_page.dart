import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 211, 211),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 215, 211, 211),
        title: const Text("Details"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset("assets/house2.png"),
                Positioned(
                    top: 17, left: 10, child: Image.asset("assets/star.png"))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Night Hill Villa",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 6,
            ),
            const Row(
              children: [
                Text(
                  "London,Night Hill",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "₹5900 ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 83, 161, 226)),
                ),
                Text(
                  "/Month",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 141,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.king_bed_outlined,
                        size: 30,
                      ),
                      Text(
                        "Bedrooms",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(90, 90, 90, 1)),
                      ),
                      Text(
                        "5",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 141,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.bathroom_outlined,
                        size: 30,
                      ),
                      Text(
                        "Bathrooms",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(90, 90, 90, 1)),
                      ),
                      Text(
                        "6",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  height: 141,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.square_foot_sharp,
                        size: 30,
                      ),
                      Text(
                        "Square ft",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(90, 90, 90, 1)),
                      ),
                      Text(
                        "7,000 sq ft",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 120,
              child: SingleChildScrollView(
                child: Text(
                  "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Container(
                height: 55,
                width: 220,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromRGBO(32, 169, 247, 1)),
                child: const Text(
                  "Rent Now",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
