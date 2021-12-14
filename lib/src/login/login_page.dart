import 'package:design_system/design_system.dart';
import 'package:external_dependencies/external_dependencies.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Login page'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AmTextFormField(label: Text("Login")),
              const SizedBox(height: 8),
              const AmTextFormField(label: Text("Senha")),
              const SizedBox(height: 8),
              ElevatedButton(
                child: const Text("Login"),
                onPressed: () => Modular.to.pushNamed("/partner_list/"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
