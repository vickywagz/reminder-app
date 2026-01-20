import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top -
                    MediaQuery.of(context).padding.bottom,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),

                    // Top icon container
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Title text
                    const Text(
                      "Let's get started!",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 52),

                    // Email input field
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email address',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 18,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: Colors.indigo),
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),

                    // Password input field
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 18,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: const BorderSide(color: Colors.indigo),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Sign up button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Login redirect text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account? "),
                        GestureDetector(
                          onTap: () {
                            context.go('/login');
                          },
                          child: const Text(
                            "Log in",
                            style: TextStyle(
                              color: Colors.indigo,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
