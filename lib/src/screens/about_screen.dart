import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('О приложении'),
        backgroundColor: Colors.teal.shade200,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Virtual Pet', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('Версия 1.0.0', style: TextStyle(color: Colors.grey)),
              SizedBox(height: 25),
              Text(
                'Тестовое приложение для практической работы №3 по дисциплине "Разработка кроссплатформенных '
                    'мобильных приложений".',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}