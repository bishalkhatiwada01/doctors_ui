import 'package:flutter/material.dart';
import 'package:healthapp/widgets/health_needs.dart';
import 'package:healthapp/widgets/nearby_doctors.dart';
import 'package:healthapp/widgets/upcoming_cards.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          NearbyDoctors(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calender',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
