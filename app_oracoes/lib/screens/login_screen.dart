import 'package:app_oracoes/screens/lista_oracoes.dart';
import 'package:flutter/material.dart';
import 'package:nhost_dart/nhost_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  void _login() async {
    final client = NhostClient(
      subdomain: Subdomain(
        subdomain: 'mndfdrqkrknemcyfsfge',
        region: 'sa-east-1',
      ),
    );
    try {
      await signInOrSignUp(
        client,
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      // Redirecionar para a tela ListOracoes após o login bem-sucedido
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ListOracoes()),
      );
    } catch (e) {
      print(e);
    }
    // Release
    client.close();
  }

  Future<void> signInOrSignUp(
    NhostClient client, {
    required String email,
    required String password,
  }) async {
    try {
      await client.auth.signInEmailPassword(email: email, password: password);
      return;
    } on ApiException catch (e) {
      print('Sign in failed, so try to register instead');
      print(e);
      await client.auth.signUp(email: email, password: password);
    } catch (e, st) {
      print(e);
      print(st);
    }
  }
}
