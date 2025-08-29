import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Responsive UI Example")),
        body: LayoutBuilder(
          builder: (context, Constraints) {
            if (Constraints.maxWidth < 600) {
              return const Center(
                child: Text("Mobile Layout", style: TextStyle(fontSize: 24)),
              );
            } else {
              return const Center(
                child: Text("Desktop Layout", style: TextStyle(fontSize: 32)),
              );
            }
          },
        ),
      ),
    );
  }
}
