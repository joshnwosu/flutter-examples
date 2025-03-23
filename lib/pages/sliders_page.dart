import 'package:flutter/material.dart';

class SlidersPage extends StatefulWidget {
  const SlidersPage({super.key});

  @override
  State<StatefulWidget> createState() => _SlidersPageState();
}

class _SlidersPageState extends State<SlidersPage> {
  double _sliderValue1 = 50.0;
  double _sliderValue2 = 0.0;
  RangeValues _rangeValues = const RangeValues(20.0, 80.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sliders Examples")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Example 1: Basic Slider',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _sliderValue1,
              min: 0.0,
              max: 100.0,
              onChanged: (double value) {
                setState(() {
                  _sliderValue1 = value;
                });
              },
            ),
            Text('Value: ${_sliderValue1.round()}'),
            const SizedBox(height: 20),
            const Text(
              'Example 2: Custom Slider with Divisions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              value: _sliderValue2,
              min: 0.0,
              max: 100.0,
              divisions: 10,
              label: _sliderValue2.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sliderValue2 = value;
                });
              },
            ),
            Text('Value: ${_sliderValue2.round()}'),
            const SizedBox(height: 20),
            const Text(
              'Examples 3: Range Slider',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RangeSlider(
              values: _rangeValues,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels(
                _rangeValues.start.round().toString(),
                _rangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _rangeValues = values;
                });
              },
            ),
            Text(
              'Range: ${_rangeValues.start.round()} - ${_rangeValues.end.round()}',
            ),
            const SizedBox(height: 20),
            const Text(
              'Example 4: Disabled Slider',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(value: 75, min: 0, max: 100, onChanged: null),
            const Text('This slider is disabled'),
          ],
        ),
      ),
    );
  }
}
