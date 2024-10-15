// HomeScreen: Another stateless widget that handles user input for login.
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sign_in/pages/signed_in.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // Step 7: Defining two TextEditingControllers to manage input for username and password.
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Step 8: Building the login screen UI.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          // Step 9: Username input field with icon and styling.
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                hintText: "Username",
                prefixIcon: Icon(
                  Icons.account_circle,
                  color: Colors.deepPurpleAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            ),
          ),
          // Step 10: Password input field with icon and styling.
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.deepPurpleAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            ),
          ),
          // Step 11: Login button that checks if the password is correct and navigates to the SignedIn page if successful.
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
            ),
            onPressed: () {
              // Step 12: Fetching user input from the TextControllers.
              String password = passwordController.text;
              String username = usernameController.text;

              // Step 13: Simple password validation (password is hardcoded as '12345').
              if (password == '12345') {
                // Step 14: If successful, navigate to the SignedIn screen and pass the username.
                GoRouter.of(context).replace('/signed_in', extra: username);
              }
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Login"),
            ),
          ),
        ],
      ),
    );
  }
}