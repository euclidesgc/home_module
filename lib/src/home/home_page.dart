import 'package:external_dependencies/external_dependencies.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 32),
              ElevatedButton(
                child: const Text("Login"),
                onPressed: () => Modular.to.pushNamed("/home/login"),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                child: const Text("Criar nova conta"),
                onPressed: () => Modular.to.pushNamed("/home/register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
