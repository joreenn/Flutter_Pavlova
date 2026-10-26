import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Montejo, Activity 3'),
      ),
      // Added a body so your buildRatingRow actually shows up inside the Scaffold
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/pavlova.jpg', fit: BoxFit.cover),
          Padding(padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Strawberry Pavlova',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 8),
              const Text("Pavlova is a classic meringue-based dessert named after the famous Russian ballerina Anna Pavlova.",
                  style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  height: 1.5
                  ),
              ),

                  const SizedBox(height: 12),
                  Center(child: buildRatingRow()),
                  const SizedBox(height: 24),
                  buildRowTabs(),
            ],
          ),
          ),
        ],
      )
    );
  }
}

Widget buildRatingRow() => Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Row(
      children: List.generate(5, (index) => Icon(
        index < 3 ? Icons.star : Icons.star_border,
        color: Colors.yellow,
        size: 20,
      ),
      ),
    ),
    const SizedBox(width: 8,),  
    const Text("90 Reviews",
    style: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
    ),
  ],
);

Widget buildIconTab(IconData icon, String label, String value) => Column(
  children: [
    Icon(icon, color: Colors.yellow, size: 28),
    const SizedBox (height: 4),
    Text(
      label,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 12,
      ),
    ),
    SizedBox(height: 4),
    Text(value,
    style: const TextStyle(
      fontSize: 13,
      color: Colors.black,
    ),
    ),
  ],
  );

  Widget buildRowTabs() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildIconTab(Icons.timer_outlined, 'PREP', '25 mins'),
      buildIconTab(Icons.restaurant, 'COOK', '1 gr'),
      buildIconTab(Icons.people_alt_outlined, 'FEEDS', '4-6 hrs'),
    ],
  );
