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
            RichText(
              text: const TextSpan(
                text: '"Chemistry is fascinating"',
                
                children: [
                  TextSpan(
                    text: "puzzle."
                  ),
                  TextSpan(
                    text: "Events experiments sparks excitement."
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}