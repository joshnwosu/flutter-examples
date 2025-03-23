import 'package:flutter/material.dart';

class CardsGridPage extends StatelessWidget {
  const CardsGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards Grid Examples')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            Card(
              elevation: 4,
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Card 1 Tapped')),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, size: 40, color: Colors.yellow),
                      SizedBox(height: 8),
                      Text('Card 1', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Card 2 Tapped')),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.favorite, size: 40, color: Colors.red),
                      SizedBox(height: 8),
                      Text('Card 2', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Card 3 Tapped')),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.music_note, size: 40, color: Colors.green),
                      SizedBox(height: 8),
                      Text('Card 3', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Card 4 Tapped')),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera, size: 40, color: Colors.purple),
                      SizedBox(height: 8),
                      Text('Card 4', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
