import 'package:flutter/material.dart';

// StatelessWidget для демонстрации настроек
class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.orange.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Настройки приложения',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Icon(Icons.palette, color: Colors.orange),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Цветовая тема',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Switch(
                value: true,
                onChanged: (value) {},
                activeThumbColor: Colors.orange,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.notifications, color: Colors.orange),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Уведомления',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Switch(
                value: false,
                onChanged: (value) {},
                activeThumbColor: Colors.orange,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.language, color: Colors.orange),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Язык: Русский',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.orange),
            ],
          ),
        ],
      ),
    );
  }
}
