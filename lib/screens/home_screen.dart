import 'package:flutter/material.dart';
import 'package:flutter_application_13/screens/secondary_screen.dart';
import '../common/strings.dart' as strings;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userInput = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.homeScreenTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisSize: .min,
            children: [
              TextField(
                textAlign: .center,
                onChanged: (value) {
                  setState(() {
                    userInput = value;
                  });
                },
              ),
              SizedBox(height: 32.0),
              Text(
                'Hello, $userInput!',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SecondaryScreen(),
            ),
          );
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
