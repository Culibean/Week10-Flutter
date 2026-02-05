import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//Root Widget

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 207, 224, 107),
      ),
      home: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.deepPurple[200],
            appBar: AppBar(
              title: Text("This is our Flutter Demo"),
              backgroundColor: Colors.pink,
              elevation: 0,
              leading: Icon(Icons.home),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.logout),
                  tooltip: "Sign out",
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("You are logged out!")),
                    );
                  },
                ),
              ],
            ),
            body: Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(25),
                child: Text(
                  "This is our demo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
