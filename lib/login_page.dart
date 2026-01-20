import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_app/common/password.textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                child: const Icon(Icons.check, color: Colors.white, size: 40),
              ),

              const SizedBox(height: 16),

              // Title text
              const Text(
                "Welcome back!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 52),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'EMAIL ADDRESS',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
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
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.indigo),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Password label row (label + forgot password)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'PASSWORD',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                ],
              ),

              // Password input field
              const PasswordField(),

              const SizedBox(height: 24),

              // Sign up button
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    context.go("/dashboard");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                  child: const Text(
                    'Log in',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Login redirect text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {
                      context.go('/register');
                    },
                    child: const Text(
                      "Sign up",
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
    );
  }
}
