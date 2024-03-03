import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  final String error;
  const ErrorPage({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error: $error'),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go('/');
              },
              child: const Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
