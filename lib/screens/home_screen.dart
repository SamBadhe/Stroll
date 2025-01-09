import 'package:flutter/material.dart';
import '../widgets/option_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                // Image background for the top part
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/assets/image.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter, // Align to the top
                    ),
                  ),
                ),
                // Black gradient for the bottom part
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent, // Transparent to blend with the image
                        Colors.black, // Black for the bottom half
                      ],
                    ),
                  ),
                ),
                // Main content
                Padding(
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
                      const SizedBox(height: 4),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.access_time, color: Colors.white70, size: 16),
                          SizedBox(width: 4),
                          Text(
                            '22h 0m',
                            style: TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          SizedBox(width: 12),
                          Icon(Icons.favorite, color: Colors.pink, size: 16),
                          SizedBox(width: 4),
                          Text(
                            '103',
                            style: TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      const Spacer(), // Space to push content up
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.person, size: 30, color: Colors.grey),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                            crossAxisCount: 2,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio: 2.5,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.white.withOpacity(0.2),
                                child: const Icon(Icons.mic, color: Colors.white),
                              ),
                              const SizedBox(width: 12),
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.white.withOpacity(0.2),
                                child: const Icon(Icons.arrow_forward, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 0),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Bottom Navigation Bar
          Container(
            color: Colors.black.withOpacity(0.9),
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.grid_view_rounded, size: 28, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.whatshot_rounded, size: 28, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.chat_bubble_rounded, size: 28, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.person_rounded, size: 28, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
