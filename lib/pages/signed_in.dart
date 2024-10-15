import 'package:flutter/material.dart';
import 'package:sign_in/pages/home_screen.dart';
import 'package:sign_in/pages/signed_in.dart';
import 'package:go_router/go_router.dart';

// Step 1: Creating a stateless widget called SignedIn that takes in a username.
class SignedIn extends StatelessWidget {
  
  // Step 2: Defining the username variable, which will hold the logged-in user's name.
  final String username;

  // Step 3: Constructor for the SignedIn widget that takes the username as a required parameter.
  const SignedIn({Key? key, required this.username}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    // Step 4: Building the UI for the SignedIn screen.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Step 5: Displaying the username with a welcome message.
            Text("Welcome $username"),
            // Step 6: Displaying a green checkmark icon to indicate success.
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 140,
            ),
          ],
        ),
      ),
    );
  }
}