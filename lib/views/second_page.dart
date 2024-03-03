import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  final String? data;
  const SecondPage({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Second Page"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gelen veri: $data"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go("/");
              },
              child: const Text("Anasayfaya Dön"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push("/third-page");
              },
              child: const Text("Üçüncü Sayfaya Git"),
            ),
          ],
        ),
      ),
    );
  }
}
