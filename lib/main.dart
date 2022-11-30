import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: const MaterialColor(0xFF0A0E21, {
          50: Color.fromRGBO(0x0A, 0x0E, 0x21, .1),
          100: Color.fromRGBO(0x0A, 0x0E, 0x21, .2),
          200: Color.fromRGBO(0x0A, 0x0E, 0x21, .3),
          300: Color.fromRGBO(0x0A, 0x0E, 0x21, .4),
          400: Color.fromRGBO(0x0A, 0x0E, 0x21, .5),
          500: Color.fromRGBO(0x0A, 0x0E, 0x21, .6),
          600: Color.fromRGBO(0x0A, 0x0E, 0x21, .7),
          700: Color.fromRGBO(0x0A, 0x0E, 0x21, .8),
          800: Color.fromRGBO(0x0A, 0x0E, 0x21, .9),
          900: Color.fromRGBO(0x0A, 0x0E, 0x21, 1),
        }),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const InputPage(),
    );
  }
}

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
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
