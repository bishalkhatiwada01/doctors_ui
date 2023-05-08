import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:healthapp/widgets/health_needs.dart';
import 'package:healthapp/widgets/nearby_doctors.dart';
import 'package:healthapp/widgets/upcoming_cards.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Hi, Bishal!"),
                Text(
                  'How are you feeling today?',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.notifications_outline)),
          IconButton(
              onPressed: () {}, icon: const Icon(Ionicons.search_outline))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
          //upcoming card
          const UpcomingCard(),

          const SizedBox(height: 20),
          Text(
            "Health Needs",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),
          //healths need
          const HealthNeeds(),
          const SizedBox(height: 30),

          //Nearby doctors
          Text(
            'Nearby Docrors',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 15),
          const NearbyDoctors(),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (int newIndex) => setState(() {
      //     _currentIndex = newIndex;
      //   }),
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.home), label: "Home"),
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.chat_bubble_2), label: "Messages"),
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.book), label: "Discover"),
      //     BottomNavigationBarItem(
      //         icon: Icon(CupertinoIcons.person), label: "Profile"),
      //   ],
      // ),
    );
  }
}
