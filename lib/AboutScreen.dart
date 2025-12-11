import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('حول التطبيق')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),

        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "بعض المعلومات حول هاذ التطبيق ومصممية....",
                  textAlign: TextAlign.justify, 
                  style: const TextStyle(
                    fontSize: 15,
                    height: 1.6, 
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
              
                    Navigator.pop(context, true);
                  },
                  child: const Text('أوافق'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text('لا أوافق'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}