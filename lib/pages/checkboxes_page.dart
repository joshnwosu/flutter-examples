import 'package:flutter/material.dart';

class CheckboxesPage extends StatefulWidget {
  const CheckboxesPage({super.key});

  @override
  State<CheckboxesPage> createState() => _CheckboxesPageState();
}

class _CheckboxesPageState extends State<CheckboxesPage> {
  bool _checkbox1 = false;
  bool _checkbox2 = false;
  bool _checkbox3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkboxes Examples')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Example 1: Basic Checkbox',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Checkbox(
                  value: _checkbox1,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkbox1 = value ?? false;
                    });
                  },
                ),
                const Text('Enable notifications'),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Example 2: Custom Checkbox',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Checkbox(
                  value: _checkbox2,
                  onChanged: (bool? value) {
                    setState(() {
                      _checkbox2 = value ?? false;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const Text('Agree to terms'),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Example 3: Disabled Checkbox',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Checkbox(value: _checkbox3, onChanged: null),
                const Text('Read-only option'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
