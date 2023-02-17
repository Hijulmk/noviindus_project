import 'package:flutter/material.dart';
import 'package:noviindus_project/pages/loginpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(color: Color(0xFFE81667)),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                "asset/images/moovbee_logo.png",
                height: 30,
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 350,
                child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (((context) =>
                                  LoginPageScreen()))));
                    },
                    child: const Text(
                      "Get Started",
                      style: TextStyle(color: Color(0xFFE81667)),
                    )),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
