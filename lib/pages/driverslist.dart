import 'package:flutter/material.dart';

class DriversListScreen extends StatefulWidget {
  const DriversListScreen({super.key});

  @override
  State<DriversListScreen> createState() => _DriversListScreenState();
}

class _DriversListScreenState extends State<DriversListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          title: Column(
            children: const [
              Center(
                child: Text("Driver List"),
              )
            ],
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
