import 'package:flutter/material.dart';
import '../common/strings.dart' as strings;

class SecondaryScreen extends StatelessWidget {
  const SecondaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(strings.secondaryScreenTitle),
      ),
    );
  }
}
