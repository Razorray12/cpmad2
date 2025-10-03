import 'package:flutter/material.dart';
import '../widgets/interactive_counter_widget.dart';

// Экран с интерактивным счетчиком
class InteractiveScreen extends StatelessWidget {
  const InteractiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: const InteractiveCounterWidget(),
    );
  }
}
