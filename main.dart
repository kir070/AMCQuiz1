import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(  // #1 Material app sets app theme and first screen
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(   // #2 Scaffold gives basic layoutof the structure
    appBar: AppBar(  // #3 AppBar display a top bar with title
      title: const Text('All Widgets')),  // #4 Text('Flutter') text inside the appbar
    body: Center(  // #7 Center center the widget
      child: Container(  // #8 a widget that can adjust the matgins, boeders, and background color
        padding: const EdgeInsets.all(20),
        child: Column(  // #6 Column arranges its children vertically in a single column
          children: [
            Row(  
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),  
              ],
            ),
          ],
        ),
      ),
    ),
  );
}