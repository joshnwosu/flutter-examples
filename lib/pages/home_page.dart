import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> itemData = const [
    {'title': "Switches", 'route': "/switches"},
    {'title': "Buttons", 'route': "/buttons"},
    {'title': "Cards Grid", 'route': "/cards_grid"},
    {'title': "Dynamic Cards Grid", 'route': "/dynamic_cards_grid"},
    {'title': "Text Fields", 'route': "/text_fields"},
    {'title': "Sliders", 'route': "/sliders"},
    {'title': "Checkboxes", 'route': "/checkboxes"},
    {'title': "Radio Buttons", 'route': "/radio_buttons"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Examples')),
      body: ListView(
        children:
            itemData.map((data) {
              return ListTile(
                title: Text("${data['title']}"),
                onTap: () {
                  Navigator.pushNamed(context, '${data['route']}');
                },
              );
            }).toList(),
      ),
    );
  }
}
