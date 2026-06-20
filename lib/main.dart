import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdgeInsets Examples',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const EdgeInsetsExamplesPage(),
    );
  }
}

class EdgeInsetsExamplesPage extends StatelessWidget {
  const EdgeInsetsExamplesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EdgeInsets Examples'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // EdgeInsets.all(30)
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.red,
                child: const Text(
                  'EdgeInsets.all(30)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // EdgeInsets.symmetric(horizontal: 40, vertical: 10)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                color: Colors.yellow,
                child: const Text(
                  'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)
              Container(
                padding: const EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20),
                color: Colors.blue,
                child: const Text(
                  'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // EdgeInsets.fromLTRB(10, 20, 30, 40)
              Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                color: Colors.green,
                child: const Text(
                  'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
