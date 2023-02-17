import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          title: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 150,
                  width: 200,
                  child: Image.asset(
                    "asset/images/moovbee_logo.png",
                    height: 30,
                  ),
                ),
              )
            ],
          ),
          backgroundColor: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xFFE81667),
                          ),
                          child: Column(
                            children: [
                              const Text(
                                "Bus",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Manage your Bus",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 200,
                                width: 200,
                                child: Image.asset(
                                  "asset/images/bus.png",
                                  height: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.black),
                          child: Column(
                            children: [
                              const Text(
                                "Driver",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Manage your Driver",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 200,
                                width: 200,
                                child: Image.asset(
                                  "asset/images/driver.png",
                                  height: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: Colors.grey.shade300),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        "asset/images/whitebus.png",
                        height: 30,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [  Text("KSRTC"),
                     Text("Swift Scania P-series")],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE81667)),
                        onPressed: () {},
                        child: const Text(
                          "Manage",
                          style: TextStyle(color: Colors.white),
                        ),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
