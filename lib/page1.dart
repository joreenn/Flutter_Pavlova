import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack and Image Integration'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // PART 1: STACK WITH CONTAINERS
            const Text(
              'Part 1: Stack with Containers',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: ColoredBox(color: Colors.red),
                  ),
                  SizedBox(
                    width: 90,
                    height: 90,
                    child: ColoredBox(color: Colors.blue),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ColoredBox(color: Colors.green),
                  ),
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: ColoredBox(color: Colors.yellow),
                  ),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: ColoredBox(color: Colors.black),
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: ColoredBox(color: Colors.purple),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Divider(),
            const SizedBox(height: 15),

            // PART 2: IMAGE INTEGRATION
            const Text(
              'Part 2: Image Integration',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // TOP: MALE
            const Text(
              'Top: Male',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Image.asset(
              'assets/male1.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),

            // MIDDLE: FEMALE
            const Text(
              'Middle: Female',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Image.asset(
              'assets/female1.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),

            // BOTTOM: ANOTHER MALE
            const Text(
              'Bottom: Male',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Image.asset(
              'assets/male2.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
