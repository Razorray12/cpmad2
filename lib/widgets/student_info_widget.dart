import 'package:flutter/material.dart';

// StatelessWidget для отображения информации о студенте
class StudentInfoWidget extends StatelessWidget {
  final String name;
  final String group;
  final String studentId;

  const StudentInfoWidget({
    super.key,
    required this.name,
    required this.group,
    required this.studentId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.blue.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Информация о студенте:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.person, color: Colors.blue),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Ф.И.О: $name',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.group, color: Colors.blue),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Группа: $group',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.badge, color: Colors.blue),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Студенческий билет: $studentId',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
