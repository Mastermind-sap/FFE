import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List<String> tasks = ["To learn flutter", "To code a game", "to code taskzen"];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Task Zen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) => Text(
          tasks[index],
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
      ),
      floatingActionButton: IconButton(
          style: ButtonStyle(
              iconSize: MaterialStatePropertyAll(100),
              foregroundColor: MaterialStatePropertyAll(Colors.deepOrange),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) {
                  print(states);
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.yellow;
                  } else {
                    return Colors.blue;
                  }
                },
              )),
          onPressed: () {},
          icon: Icon(Icons.add)),
    );
  }
}
