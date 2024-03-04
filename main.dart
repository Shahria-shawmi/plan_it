import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlanIT Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome To"),
            const Text("Plan IT",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
            const SizedBox(
              height: 200,
            ),
            const Text("Your Personal task management "),
            const Text("and planning solution"),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 40),
                  backgroundColor: Colors.black54),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: const Text(
                "Lets Get Started",
                style: TextStyle(color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Board"),
        backgroundColor: Colors.white70,
        centerTitle: true,
        shadowColor: Colors.black54,
        elevation: 3.0,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(15),
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Task 1",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Text(
                    "Your personal task management and planning solution for "),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(DateTime.now().toString().split(".")[0]),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(15),
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Task 2",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Text(
                    "Your personal task management and planning solution for "),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(DateTime.now().toString().split(".")[0]),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(15),
            margin:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Task 3",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Text(
                    "Your personal task management and planning solution for "),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(DateTime.now().toString().split(".")[0]),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black54,
        shape: const CircleBorder(eccentricity: 1),
        child: const Icon(
          Icons.add,
          color: Colors.white70,
        ),
      ),
    );
  }
}
