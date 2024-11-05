import 'package:flutter/material.dart';
import 'package:route_version/Route.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  'Password',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 200), // Bottom padding
        ],
      ),
    );
  }
}
