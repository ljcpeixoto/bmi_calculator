import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: const Center(
        child: Text(
          'Body text',
        ),
      ),
      floatingActionButton: Theme(
        data: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark().copyWith(
            secondary: Colors.purple,
          ),
        ),
        child: const FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
