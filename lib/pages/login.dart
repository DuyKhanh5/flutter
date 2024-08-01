import 'package:btl2/widgets/form_fields_widgets.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset(
                  'lib/images/nike.png',
                  height: 240,
                ),
              ),

              const SizedBox(height: 10),

              //title
              const Text(
                'Just do it',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                'Brand new sneaker and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              Form(
                key: _formKey,
                child: Column(
                  children: [
                    FormFields(
                      controller: _emailController,
                      data: Icons.email,
                      txtHint: 'Email',
                      obsecure: false,
                    ),
                    FormFields(
                      controller: _emailController,
                      data: Icons.email,
                      txtHint: 'Password',
                      obsecure: false,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 35),

              //button
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
