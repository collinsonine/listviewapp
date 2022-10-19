import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

final List<String> phoneNumbers = [
  "090556837750",
  "090556837751",
  "090556837752",
  "090556837753",
  "090556837754",
  "090556837755",
  "090556837757",
  "090556837759",
  "090556837710",
  "090556837711",
  "090556837712",
  "090556837713",
  "090556837714",
  "0905568377515",
  "0905568377526",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758",
  "090556837758"
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      title: 'Contacts',
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text('Contacts'),
        ),
        body: ListView.builder(
          itemCount: phoneNumbers.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(
                Icons.person,
                size: 30,
              ),
              title: Text(
                phoneNumbers[index],
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              subtitle: const Text('family'),
              hoverColor: Colors.blue,
              selectedTileColor: Colors.blue,
              enableFeedback: true,
              iconColor: Colors.blue,
            );
          },
        ),
      ),
    );
  }
}
