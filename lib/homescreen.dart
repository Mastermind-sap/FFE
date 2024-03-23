import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var meme =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS21LMjafCwhc7p64MMA_Sx68WbK_FvJJk9VbQ9wPUsUA&s";

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Memeify'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * .9,
            width: MediaQuery.of(context).size.width * .9,
            child: Image(image: NetworkImage(meme)),
          ),
        ),
        floatingActionButton: ElevatedButton(
            onPressed: () async {
              var res = await get(Uri.parse("https://meme-api.com/gimme"));
              print(jsonDecode(res.body)['url']);
              meme = jsonDecode(res.body)['url'];
              setState(() {});
            },
            child: Text("Laugh!!!")));
  }
}
