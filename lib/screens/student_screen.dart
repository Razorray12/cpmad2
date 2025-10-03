import 'package:flutter/material.dart';
import '../widgets/student_info_widget.dart';

// Экран с информацией о студенте
class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: const StudentInfoWidget(
        name: 'Потемкин Денис Анатольевич',
        group: 'ИКБО-11-22',
        studentId: '22И0393',
      ),
    );
  }
}
