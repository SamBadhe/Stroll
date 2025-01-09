import 'package:flutter/material.dart';
import '../widgets/option_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFEA47F), // Top gradient color (soft orange)
              Color(0xFF25CCF7), // Bottom gradient color (soft blue)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            children: [
              const SizedBox(height: 60), // Space from top
              const Text(
                'Stroll Bonfire',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40), 

              const Spacer(), // This creates space to push content to the bottom
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person, size: 30, color: Colors.grey),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Angelina, 28',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'What is your favorite time of the day?',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8), 
                  const Text(
                    '"Mine is definitely the peace in the morning."',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white70,
                      fontStyle: FontStyle.italic,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4), 

                  // Option Buttons in 2x2 Grid
                  GridView.count(
                    crossAxisCount: 2, // 2 columns
                    crossAxisSpacing: 16, // Horizontal spacing
                    mainAxisSpacing: 16, // Vertical spacing
                    childAspectRatio: 2.5, // Adjust height-to-width ratio
                    shrinkWrap: true, // Ensures grid takes up as much space as it needs
                    physics: NeverScrollableScrollPhysics(), // Disable scrolling
                    children: const [
                      OptionButton(label: 'The peace in the early mornings'),
                      OptionButton(label: 'The magical golden hours'),
                      OptionButton(label: 'Wind-down time after dinners'),
                      OptionButton(label: 'The serenity past midnight'),
                    ],
                  ),
                  const SizedBox(height: 16), 
                ],
              ),

              // Below Options Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Texts
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Pick your option.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'See who has a similar mind..',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  // Circular Buttons (Mic and Right Arrow)
                  Row(
                    children: [
                      // Mic Button
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: const Icon(Icons.mic, color: Colors.white),
                      ),
                      const SizedBox(width: 12),
                      // Right Arrow Button
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white.withOpacity(0.2),
                        child: const Icon(Icons.arrow_forward, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16), 

              // Bottom Navigation Bar with 4 Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Cards Icon Button
                  IconButton(
                    icon: const Icon(Icons.grid_view_rounded, size: 28, color: Colors.white),
                    onPressed: () {
                      // Navigation logic here
                    },
                  ),
                  // Fire Icon Button
                  IconButton(
                    icon: const Icon(Icons.whatshot_rounded, size: 28, color: Colors.white),
                    onPressed: () {
                      // Navigation logic here
                    },
                  ),
                  // Chat Icon Button
                  IconButton(
                    icon: const Icon(Icons.chat_bubble_rounded, size: 28, color: Colors.white),
                    onPressed: () {
                      // Navigation logic here
                    },
                  ),
                  // User Icon Button
                  IconButton(
                    icon: const Icon(Icons.person_rounded, size: 28, color: Colors.white),
                    onPressed: () {
                      // Navigation logic here
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
