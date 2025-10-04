import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Профиль питомца'),
        backgroundColor: Colors.teal.shade200,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Барсик',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Порода: Шотландский вислоухий', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Любимая игрушка: Лазерная указка', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Забавный факт: Спит в коробке из-под обуви', style: TextStyle(fontSize: 18)),
            const Spacer(), // Занимает всё оставшееся место
            Center(
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Вернуться назад'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}