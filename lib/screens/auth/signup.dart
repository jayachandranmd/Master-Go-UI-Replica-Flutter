import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: HexColor('#525464'),
            ),
          ),
          title: Text(
            'Sign Up',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Gilroy',
                color: HexColor('#525464')),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.menu,
                color: HexColor('#525464'),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'assets/images/lock.png',
                    height: 145,
                    width: 110,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 60,
                    width: 320,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: HexColor('#F7F7F7')),
                    child: TextField(
                        cursorColor: HexColor('#F7F7F7'),
                        cursorHeight: 20,
                        decoration: InputDecoration(
                            hintText: 'Enter email',
                            hintStyle: TextStyle(
                                color: HexColor('#B0B0C3'),
                                fontFamily: 'Gilroy'),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(10))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 320,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: HexColor('#F7F7F7')),
                    child: TextField(
                        cursorColor: HexColor('#F7F7F7'),
                        cursorHeight: 20,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: HexColor('#B0B0C3'),
                            ),
                            hintText: 'Enter password',
                            hintStyle: TextStyle(
                                color: HexColor('#B0B0C3'),
                                fontFamily: 'Gilroy'),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(10))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 320,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: HexColor('#F7F7F7')),
                    child: TextField(
                        cursorColor: HexColor('#F7F7F7'),
                        cursorHeight: 20,
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.visibility_off,
                              color: HexColor('#B0B0C3'),
                            ),
                            hintText: 'Confirm password',
                            hintStyle: TextStyle(
                                color: HexColor('#B0B0C3'),
                                fontFamily: 'Gilroy'),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.all(10))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: HexColor('#20C3AF'),
                    height: 60,
                    width: 360,
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'or',
                    style: TextStyle(
                        fontFamily: 'Gilroy', color: HexColor('#838391')),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: HexColor('#E2E2E0'))),
                        child: Image.asset('assets/images/fb.png'),
                      ),
                      Container(
                        height: 60,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: HexColor('#E2E2E0'))),
                        child: Image.asset('assets/images/twitter.png'),
                      ),
                      Container(
                        height: 60,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: HexColor('#E2E2E0'))),
                        child: Image.asset('assets/images/linkedin.png'),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                            fontFamily: 'Gilroy', color: HexColor('#838391')),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupPage()));
                        },
                        child: Text('Signin',
                            style: TextStyle(
                                fontFamily: 'Gilroy',
                                color: HexColor('#FFB19D'),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationColor: HexColor('#FFB19D'),
                                decorationThickness: 3,
                                decorationStyle: TextDecorationStyle.solid)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
