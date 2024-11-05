import 'package:flutter/material.dart';
import 'package:route_version/Route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final routePage = RoutePage(); // Create an instance of RoutePage
    return Scaffold(
      appBar: AppBar(
        title: const Text('Developers'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(routePage.createRouteToPage2());
              },
              child: const Text('Go to Page 2'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(routePage.createRouteToPage3());
              },
              child: const Text('Go to Page 3'),
            ),
          ],
        ),
      ),
    );
  }
}




