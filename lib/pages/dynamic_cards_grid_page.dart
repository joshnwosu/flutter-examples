import 'package:flutter/material.dart';

class DynamicCardsGridPage extends StatelessWidget {
  const DynamicCardsGridPage({super.key});

  // Define a list of card data
  final List<Map<String, dynamic>> cardData = const [
    {'title': 'Star', 'icon': Icons.star, 'color': Colors.yellow},
    {'title': 'Heart', 'icon': Icons.favorite, 'color': Colors.red},
    {'title': 'Music', 'icon': Icons.music_note, 'color': Colors.green},
    {'title': 'Sun', 'icon': Icons.wb_sunny, 'color': Colors.orange},
    {'title': 'Moon', 'icon': Icons.nightlight_round, 'color': Colors.blue},
    {'title': 'Woman', 'icon': Icons.woman, 'color': Colors.pink},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dynamic Cards Grid')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children:
              cardData.map((data) {
                return Card(
                  elevation: 4,
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${data['title']} Tapped!')),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            data['icon'] as IconData,
                            size: 40,
                            color: data['color'] as Color,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            data['title'] as String,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
