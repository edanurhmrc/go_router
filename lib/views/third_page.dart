import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThirdPage extends StatelessWidget {
  static const String route = '/';
  const ThirdPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Third Page"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Üçüncü Sayfa"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
