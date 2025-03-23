import 'package:flutter/material.dart';

class RadioButtonsPage extends StatefulWidget {
  const RadioButtonsPage({super.key});

  @override
  State<StatefulWidget> createState() => _RadioButtonsPage();
}

class _RadioButtonsPage extends State<RadioButtonsPage> {
  String? _group1Value = 'Option 1';
  String? _group2Value = 'Yes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Radio Buttons')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Example 1: Basic Radio Group',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                RadioListTile<String>(
                  title: const Text('Option 1'),
                  value: 'Option 1',
                  groupValue: _group1Value,
                  onChanged: (String? value) {
                    setState(() {
                      _group1Value = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Option 2'),
                  value: 'Option 2',
                  groupValue: _group1Value,
                  onChanged: (String? value) {
                    setState(() {
                      _group1Value = value;
                    });
                  },
                ),
                RadioListTile<String>(
                  title: const Text('Option 3'),
                  value: 'Option 3',
                  groupValue: _group1Value,
                  onChanged: (String? value) {
                    setState(() {
                      _group1Value = value;
                    });
                  },
                ),
                const SizedBox(height: 20),
                const Text(
                  'Example 2: Custom Radio Buttons',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Radio<String>(
                      value: 'Yes',
                      groupValue: _group2Value,
                      onChanged: (String? value) {
                        setState(() {
                          _group2Value = value;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    const Text('Yes'),
                    const SizedBox(width: 16),
                    Radio<String>(
                      value: 'No',
                      groupValue: _group2Value,
                      onChanged: (String? value) {
                        setState(() {
                          _group2Value = value;
                        });
                      },
                      activeColor: Colors.blue,
                    ),
                    const Text('No'),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Example 3: Disabled Radio Button',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Radio<String>(
                      value: 'Locked',
                      groupValue: _group1Value, // Tied to group1 for demo
                      onChanged: null, // Null disables it
                    ),
                    const Text('Locked Option'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
