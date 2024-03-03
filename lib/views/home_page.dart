import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                String data = "İkinci Sayfa için veri gönderildi.";
                GoRouter.of(context).go("/second-page/$data");
                // GoRouter.of(context).replaceNamed('second-page',
                //     pathParameters: {'data': data});
              },
              child: const Text("İkinci Sayfaya Git"),
            )
          ],
        ),
      ),
    );
  }
}
