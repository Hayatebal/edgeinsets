import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdgeInsets',
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
      backgroundColor: const Color(0xFFFFF7FF),
      appBar: AppBar(
        title: const Text('Balila-on Edgeinsets Task4'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.red,
                child: const Text(
                  'EdgeInsets.all(30)',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
              const SizedBox(height: 22),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 10,
                ),
                alignment: Alignment.center,
                color: Colors.yellow,
                child: const Text(
                  'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
              const SizedBox(height: 22),
              Container(
                padding: const EdgeInsets.only(
                  left: 30,
                  top: 10,
                  right: 5,
                  bottom: 20,
                ),
                color: Colors.blue,
                child: const Text(
                  'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              const SizedBox(height: 22),
              Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                  color: Colors.green,
                  child: const Text(
                    'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                    style: TextStyle(color: Colors.white, fontSize: 10),
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
