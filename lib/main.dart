import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const HomePage());
}

List<String> images = [
  "assets/images/pic0.jpg",
  "assets/images/pic2.jpg",
  "assets/images/pic3.jpg",
  "assets/images/pic4.jpg",
  "assets/images/pic5.jpg",
  "assets/images/pic6.jpg",
  "assets/images/pic7.jpg",
  "assets/images/pic8.jpg",
  "assets/images/pic9.jpg",
  "assets/images/pic10.jpg",
  "assets/images/pic11.jpg",
  "assets/images/pic12.jpg"
];

_randomNum() {
  Random random = Random();
  int randomNumber = random.nextInt(images.length);
  return randomNumber;
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.blue,
        title: 'Contacts',
        home: Scaffold(
          drawer: const Drawer(),
          appBar: AppBar(
            title: const Text('Images'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 400,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 1,
                            mainAxisExtent: 200),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: const BoxDecoration(
                          border: Border(
                              left: BorderSide(color: Colors.red, width: 2),
                              right: BorderSide(color: Colors.red, width: 2),
                              top: BorderSide(color: Colors.red, width: 2),
                              bottom: BorderSide(color: Colors.red, width: 2)),
                        ),
                        margin: const EdgeInsets.all(3),
                        width: 10.0,
                        child: Image.asset(
                          images[_randomNum()],
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: const Icon(Icons.add),
                        title: Text(
                          images[_randomNum()],
                          textScaleFactor: 1.5,
                        ),
                        trailing: const Icon(Icons.done),
                        subtitle: const Text('This image is displayed'),
                        selected: true,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                minimumSize: const Size(150, 50)),
                            onPressed: () {
                              setState(() {
                                _randomNum();
                              });
                            },
                            child: const Text(
                              'Shuffle Image',
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
