import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var numberOfImg = 1;
var total = 5;
var ext = "png";

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Image Caraousel'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () {
                    if (numberOfImg == 1)
                      numberOfImg = total;
                    else
                      numberOfImg--;
                    if (numberOfImg == 4)
                      ext = "gif";
                    else
                      ext = "png";
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              Container(
                  height: MediaQuery.of(context).size.width * 0.75,
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Image(
                      image: AssetImage("assets/images/img$numberOfImg.$ext"))),
              IconButton(
                  onPressed: () {
                    if (numberOfImg == total)
                      numberOfImg = 1;
                    else
                      numberOfImg++;
                    if (numberOfImg == 4)
                      ext = "gif";
                    else
                      ext = "png";
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_forward_ios))
            ],
          ),
        ));
  }
}
