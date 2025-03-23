import 'package:flutter/material.dart';

class SwitchesPage extends StatefulWidget {
  const SwitchesPage({super.key});

  @override
  State<SwitchesPage> createState() => _SwitchesPageState();
}

class _SwitchesPageState extends State<SwitchesPage> {
  bool _switchValue1 = false;
  bool _switchValue2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switches Examples')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Example 1: Basic Switch',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Switch(
              value: _switchValue1,
              onChanged: (bool value) {
                setState(() {
                  _switchValue1 = value;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Example 2: Custom Colored Switch',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Switch(
              value: _switchValue2,
              onChanged: (bool value) {
                setState(() {
                  _switchValue2 = value;
                });
              },
              activeColor: Colors.green,
              inactiveThumbColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
