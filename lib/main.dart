import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _ukuranFont = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Stateless"),
        leading: const Icon(Icons.house),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Halo Dek",
              style: TextStyle(fontSize: _ukuranFont),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  
                }, child: Text("perkecil")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _ukuranFont = 48;
                      });
                    },
                    child: Text("Perbesar")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
