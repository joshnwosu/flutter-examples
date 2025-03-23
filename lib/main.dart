import 'package:flutter/material.dart';
import 'pages/text_fields_page.dart';
import 'pages/home_page.dart';
import 'pages/switches_page.dart';
import 'pages/buttons_page.dart';
import 'pages/cards_grid_page.dart';
import 'pages/dynamic_cards_grid_page.dart';
import 'pages/sliders_page.dart';
import 'pages/checkboxes_page.dart';
import 'pages/radio_buttons_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Examplesssss',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
      routes: {
        '/switches': (context) => const SwitchesPage(),
        '/buttons': (context) => const ButtonsPage(),
        '/cards_grid': (context) => const CardsGridPage(),
        '/dynamic_cards_grid': (context) => const DynamicCardsGridPage(),
        '/text_fields': (context) => const TextFieldsPage(),
        '/sliders': (context) => const SlidersPage(),
        '/checkboxes': (context) => const CheckboxesPage(),
        '/radio_buttons': (context) => const RadioButtonsPage(),
      },
    );
  }
}
