import 'package:flutter/material.dart';

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
            'Интерактивный счетчик посещенных пар',
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
