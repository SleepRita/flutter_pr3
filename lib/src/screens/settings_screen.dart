import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notificationsEnabled = true;
  bool darkModeEnabled = false;
  double soundVolume = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки'),
        backgroundColor: Colors.teal.shade200,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Включить уведомления', style: TextStyle(fontSize: 18)),
                Switch(
                  value: notificationsEnabled,
                  onChanged: (value) {
                    setState(() {
                      notificationsEnabled = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Темная тема', style: TextStyle(fontSize: 18)),
                Switch(
                  value: darkModeEnabled,
                  onChanged: (value) {
                    setState(() {
                      darkModeEnabled = value;
                    });
                  },
                ),
              ],
            ),
            Text('Громкость звуков: ${(soundVolume * 100).toStringAsFixed(0)}%',
                style: const TextStyle(fontSize: 18)),
            Slider(
              value: soundVolume,
              min: 0.0,
              max: 1.0,
              label: '${(soundVolume * 100).round()}%',
              onChanged: (double value) {
                setState(() {
                  soundVolume = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}