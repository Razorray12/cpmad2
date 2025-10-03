import 'package:flutter/material.dart';

// Импорты экранов
import 'screens/home_screen.dart';
import 'screens/student_screen.dart';
import 'screens/interactive_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/examples_screen.dart';

void main() {
  runApp(const MyApp());
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
  int _selectedIndex = 0;
  // Список экранов
  final List<Widget> _screens = [
    const HomeScreen(),
    const StudentScreen(),
    const InteractiveScreen(),
    const SettingsScreen(),
    const ExamplesScreen(),
  ];
  final List<String> _titles = [
    'Главная',
    'Студент',
    'Счетчик',
    'Настройки',
    'Примеры',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_titles[_selectedIndex]),
        centerTitle: true,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Студент',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Счетчик',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Настройки',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Примеры',
          ),
        ],
      ),
    );
  }
}