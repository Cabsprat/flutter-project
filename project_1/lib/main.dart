import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Welcome to Flutter",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Wecome to Flutter"),
          ),
          body: const SampleColumn(),
          floatingActionButton: FloatingActionButton.extended(
              onPressed: () {},
              backgroundColor: Colors.green,
              icon: const Icon(Icons.add),
              label: const Text("Add")),
        ));
  }
}

class SampleColumn extends StatelessWidget {
  const SampleColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const <Widget>[
      Text("Sample Column 1"),
      Text("Sample Column 2"),
      Expanded(
        child: FittedBox(child: FlutterLogo()),
      )
    ]);
  }
}
