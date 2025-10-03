import 'package:flutter/material.dart';
import '../widgets/settings_widget.dart';

// Экран с настройками приложения
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: const SettingsWidget(),
    );
  }
}
