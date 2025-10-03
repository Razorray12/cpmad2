import 'package:flutter/material.dart';

// Экран с демонстрацией основных виджетов
class ExamplesScreen extends StatelessWidget {
  const ExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.purple.shade50,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Colors.purple.shade200),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Демонстрация основных виджетов:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 16),

            // Демонстрация Text с различными стилями
            const Text(
              '1. Виджет Text с различными стилями:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              'Обычный текст',
              style: TextStyle(fontSize: 14),
            ),
            const Text(
              'Жирный текст',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Курсивный текст',
              style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
            ),
            const Text(
              'Цветной текст',
              style: TextStyle(fontSize: 14, color: Colors.red),
            ),

            const SizedBox(height: 16),

            // Демонстрация кнопок
            const Text(
              '2. Различные виды кнопок:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('ElevatedButton'),
                ),
                const SizedBox(width: 8),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('OutlinedButton'),
                ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text('TextButton'),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Демонстрация Column и Row
            const Text(
              '3. Виджеты Column и Row:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                  child: const Center(
                    child: Text('1', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.green,
                  child: const Center(
                    child: Text('2', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                  child: const Center(
                    child: Text('3', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Демонстрация Container с декорацией
            const Text(
              '4. Виджет Container с декорацией:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.orange, Colors.pink],
                ),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Красивый контейнер',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Демонстрация SizedBox и Padding
            const Text(
              '5. Виджеты SizedBox и Padding:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 40,
                color: Colors.cyan.shade100,
                child: const Center(
                  child: Text(
                    'Элемент с отступами (Padding)',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
