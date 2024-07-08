import 'package:animations/features/animated_builder/screen/animated_builder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Main(),
  );
}

class Main extends StatelessWidget {
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const AnimatedBuilderScreen(),
    );
  }
}
