import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData.dark(), home: const LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 380),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white10),
                  color: Colors.white.withOpacity(0.03),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: 'E-Mail',
                        hintText: 'example@email.com',
                        labelStyle: const TextStyle(color: Colors.white70),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.04),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 14,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Password',
                        labelStyle: const TextStyle(color: Colors.white70),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.white,
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.04),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 14,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Colors.white60,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: .center,
                      children: [
                        const Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                          child: Text('or'),
                        ),
                        const Expanded(child: Divider()),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          'SignUp',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
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
