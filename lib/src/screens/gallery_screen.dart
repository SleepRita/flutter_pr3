import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Галерея'),
        backgroundColor: Colors.teal.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('Фотографии Барсика', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: _buildPhotoContainer(Colors.yellow.shade200, 'Сон')),
                  const SizedBox(width: 10),
                  Expanded(child: _buildPhotoContainer(Colors.green.shade200, 'Игра')),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  Expanded(flex: 2, child: _buildPhotoContainer(Colors.blue.shade200, 'Позирование')),
                  const SizedBox(width: 10),
                  Expanded(child: _buildPhotoContainer(Colors.purple.shade200, 'Купание')),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(child: _buildPhotoContainer(Colors.orange.shade200, 'Обед')),
                  const SizedBox(width: 10),
                  Expanded(flex: 2, child: _buildPhotoContainer(Colors.red.shade200, 'Прогулка')),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Новое фото добавлено! (на самом деле нет)')),
                    );
                  },
                  child: const Text('Добавить фото'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Пока такой функции не предусмотрено.')),
                    );
                  },
                  child: const Text('Удалить фото'),
                )
              ]
            )
          ],
        ),
      ),
    );
  }

  // Вспомогательный метод для создания "фото"
  Widget _buildPhotoContainer(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}