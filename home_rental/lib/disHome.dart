import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_rental/detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(219, 217, 217, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 22, right: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Hey Dravid ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset("assets/profile.png"),
                ),
              ],
            ),
            const Text(
              "Let’s find your best",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const Text(
              "residence ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              height: 46,
              child: const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search your favourite paradise",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // borderRadius: BorderRadius.circular(15)
                    ),
                    contentPadding: EdgeInsets.only(top: 7)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Most popular",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 310,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const DetailPage();
                        }));
                      },
                      child: Container(
                        height: 306,
                        width: 211,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 250, 248, 248),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Image.asset("assets/house1.png"),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Night Hill Villa",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              const Text(
                                "London,Night Hill",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "₹5900 /Month",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 83, 161, 226)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                  itemCount: 3),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  "Nearby your location",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  "More",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 81, 165, 233)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset("assets/grp2.png")
          ],
        ),
      ),
    );
  }
}
