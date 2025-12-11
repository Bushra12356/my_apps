import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  
  static const String termsText = 'الصفحه الثانيه'
;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('هل تقبل الانضمام للتطبيق')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),

        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
              termsText,
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