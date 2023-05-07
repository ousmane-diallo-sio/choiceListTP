import 'package:choice_list_tp/choice.dart';
import 'package:choice_list_tp/choice_item.dart';
import 'package:choice_list_tp/footer.dart';
import 'package:choice_list_tp/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      home: const SafeArea(
        child: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final choices = Choice.generate([
    "cinema",
    "petanque",
    "fitness",
    "League Of Legend",
    "basket",
    "shopping",
    "programmation"
  ]);

  Widget _buildHeaderList() {
    var selectedItems = choices.where((choice) => choice.isSelected).toList();
    if (selectedItems.isEmpty) {
      return Text(
        "Cliquez sur les choix en dessous !",
        style: Theme.of(context).textTheme.bodyLarge,
      );
    }
    return Wrap(
      direction: Axis.horizontal,
      spacing: 10,
      runSpacing: 5,
      children: List.generate(
        selectedItems.length,
        (index) => ChoiceItem(
          choice: selectedItems.elementAt(index),
        ),
      ),
    );
  }

  Widget _buildFooterList() {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 10,
      runSpacing: 5,
      children: List.generate(
        choices.length,
        (index) {
          final choice = choices.elementAt(index);
          return ChoiceItem(
            choice: choice,
            isClickable: true,
            color: choice.isSelected ? Colors.amber : null,
            onTap: () {
              setState(() {
                choice.isSelected = !choice.isSelected;
              });
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Header(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: _buildHeaderList(),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Footer(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: _buildFooterList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
