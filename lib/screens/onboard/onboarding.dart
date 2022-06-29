import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:samlpe/screens/onboard/onboard_model.dart';

import '../auth/signin.dart';

class OnboardScreens extends StatefulWidget {
  const OnboardScreens({Key? key}) : super(key: key);

  @override
  State<OnboardScreens> createState() => _OnboardScreensState();
}

class _OnboardScreensState extends State<OnboardScreens> {
  late PageController controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView.builder(
                controller: controller,
                itemCount: screens.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            screens[index].title.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#525464')),
                          ),
                          Image.asset(screens[index].imageUrl.toString()),
                          Text(
                            screens[index].body.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontSize: 16,
                                color: HexColor('#838391')),
                          ),
                          const SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    ),
                  );
                }),
            Positioned(
              bottom: 20,
              left: 18,
              child: Column(
                children: [
                  currentIndex != screens.length - 1
                      ? SizedBox(
                          height: 10,
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: screens.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      height: 8,
                                      width: currentIndex == index ? 15 : 8,
                                      decoration: BoxDecoration(
                                          color: HexColor('#B5C3C7'),
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                    )
                                  ],
                                );
                              }),
                        )
                      : const SizedBox(),
                  const SizedBox(
                    height: 20,
                  ),
                  currentIndex != screens.length - 1
                      ? GestureDetector(
                          onTap: () {
                            controller.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeIn);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            color: HexColor('#20C3AF'),
                            height: 60,
                            width: 360,
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Gilroy',
                                  color: Colors.white),
                            ),
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
            currentIndex == 3
                ? Positioned(
                    bottom: 20,
                    left: 170,
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SigninPage()));
                        },
                        child: FloatingActionButton(
                          backgroundColor: HexColor('#20C3AF'),
                          child: const Icon(Icons.add),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const SigninPage())));
                          },
                        )),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
