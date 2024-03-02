import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Heading(),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      color: Colors.white,
                    ),
                    height: 110,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: SizedBox(
                        width: 106,
                        height: 110,
                        child: Image.asset(
                          'assets/images/mascot.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            "Jadilah Ilmuwan!",
                            style: TextStyle(
                              fontFamily: "Gilroy",
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            "Ayo kita bereksperimen!",
                            style: TextStyle(
                              color: Color(
                                0xff90A8BF,
                              ),
                              fontSize: 12,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              right: 34,
                            ),
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: SizedBox(
                                width: double.infinity,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        width: 18,
                                        height: 18,
                                        'assets/images/camera.png',
                                      ),
                                      const SizedBox(
                                        width: 9,
                                      ),
                                      const Text(
                                        "Magic Card",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  const Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: '"Kimia itu ibarat',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: " puzzle",
            style: TextStyle(
              color: Color(
                0xffFF51A2,
              ),
            ),
          ),
          TextSpan(
            text:
                'yang mengasyikkan. Tiap eksperimen akan selalu menyenangkan."',
          ),
        ],
      ),
    );
  }
}
