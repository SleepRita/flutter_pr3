import 'package:flutter/material.dart';
import 'about_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int happiness = 80;
  int hunger = 60;
  final String petName = "Барсик";

  void playWithPet() {
    setState(() {
      happiness = (happiness + 10).clamp(0, 100);
    });
  }

  void feedPet() {
    setState(() {
      hunger = (hunger - 15).clamp(0, 100);
      happiness = (happiness + 5).clamp(0, 100);
    });
  }

  void washPet() {
    setState(() {
      hunger = (hunger + 5).clamp(0, 100);
      happiness = (happiness - 20).clamp(0, 100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Мой питомец: $petName'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Текущее состояние:', style: TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            Text('Уровень счастья: $happiness / 100', style: const TextStyle(fontSize: 18)),
            Text('Уровень сытости: ${100 - hunger} / 100', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 30),
            // Основные действия
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: feedPet, child: const Text('Покормить')),
                const SizedBox(width: 20),
                ElevatedButton(onPressed: playWithPet, child: const Text('Поиграть')),
                const SizedBox(width: 20),
                ElevatedButton(onPressed: washPet, child: const Text('Помыть')),
              ],
            ),
            const SizedBox(height: 40),
            const Divider(), // Разделитель
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Меню:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            // Навигация
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                OutlinedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen())),
                  child: const Text('Профиль'),
                ),
                OutlinedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen())),
                  child: const Text('Настройки'),
                ),
                OutlinedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutScreen())),
                  child: const Text('О приложении'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}