import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "PROFILE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [Icon(Icons.settings_outlined)],
      ),
      body: Center(
        child: Column(children: [
          Image.asset(
            "assets/bishal.jpeg",
            width: 90,
          ),
          Text(
            "Bishal Khatiwada",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text("Flutter Developer")
          //node for now
        ]),
      ),
    );
  }
}
