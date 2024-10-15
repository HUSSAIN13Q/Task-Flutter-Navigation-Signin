import 'package:flutter/material.dart';
import 'package:sign_in/pages/home_screen.dart';
import 'package:sign_in/pages/signed_in.dart';
import 'package:go_router/go_router.dart';

// Step 1: Main entry point of the Flutter application.
void main() {
  runApp(MyApp());
}

// Step 2: Creating a stateless widget called MyApp which is the root of the application.
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Step 4: Returning the MaterialApp with GoRouter configuration to manage routing in the app.
    return MaterialApp.router(
      routerConfig: _router,
    );
  }

  // Step 3: Defining the GoRouter instance with routes for HomeScreen and SignedIn pages.
  final _router = GoRouter(
    routes: [
      // Step 5: Defining the route for the home screen at the root path '/'.
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
      ),
      // Step 6: Defining the route for the signed_in page and passing the username as extra data.
      GoRoute(
        path: '/signed_in',
        builder: (context, state) => SignedIn(username: state.extra as String),
      ),
    ],
  );
}
