// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_example/views/error_page.dart';
import 'package:go_router_example/views/home_page.dart';
import 'package:go_router_example/views/second_page.dart';
import 'package:go_router_example/views/third_page.dart';

final AppRoutes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomePage());
      },
    ),
    GoRoute(
        path: '/second-page/:data',
        pageBuilder: (context, state) {
          return MaterialPage(
              child: SecondPage(
            data: state.pathParameters['data'],
          ));
        }),
    GoRoute(
        path: '/third-page',
        pageBuilder: (context, state) {
          return const MaterialPage(child: ThirdPage());
        }),
  ],
  errorPageBuilder: (context, state) {
    return MaterialPage(
      child: ErrorPage(
        error: state.error.toString(),
      ),
    );
  },
);
