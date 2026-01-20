import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
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

        // Eye icon (show / hide password)
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey.shade500,
            size: 20,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Colors.indigo,
          ),
        ),
      ),
    );
  }
}
