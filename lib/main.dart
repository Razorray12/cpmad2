import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// StatelessWidget для отображения информации студента
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

// StatefulWidget для демонстрации интерактивности
class InteractiveCounterWidget extends StatefulWidget {
  const InteractiveCounterWidget({super.key});

  @override
  State<InteractiveCounterWidget> createState() => _InteractiveCounterWidgetState();
}

class _InteractiveCounterWidgetState extends State<InteractiveCounterWidget> {
  int _counter = 0;
  String _message = 'Нажмите кнопку!';

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 1) {
        _message = 'Отлично! Продолжайте!';
      } else if (_counter == 5) {
        _message = 'Вы молодец!';
      } else if (_counter == 10) {
        _message = 'Невероятно!';
      } else {
        _message = 'Счетчик: $_counter';
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _message = 'Счетчик сброшен!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.green.shade200),
      ),
      child: Column(
        children: [
          const Text(
            'Интерактивный счетчик',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            _message,
            style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: _incrementCounter,
                icon: const Icon(Icons.add),
                label: const Text('Увеличить'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
              ),
              ElevatedButton.icon(
                onPressed: _resetCounter,
                icon: const Icon(Icons.refresh),
                label: const Text('Сбросить'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Практическая работа №3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Практическая работа №3 - Виджеты Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Контейнер заголовка
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple.shade400, Colors.deepPurple.shade600],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Column(
                children: [
                  Text(
                    'Практическая работа №3',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Изучение основных виджетов Flutter',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // StatelessWidget - информация о мне
            const StudentInfoWidget(
              name: 'Потемкин Денис Анатольевич',
              group: 'ИКБО-11-22',
              studentId: '22И0393',
            ),

            const SizedBox(height: 16),

            // StatefulWidget - интерактивный счетчик
            const InteractiveCounterWidget(),

            const SizedBox(height: 16),

            // StatelessWidget - настройки приложения
            const SettingsWidget(),

            const SizedBox(height: 16),

            // Демонстрация основных виджетов
            Container(
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
                  Text(
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

          ],
        ),
      ),
    );
  }
}