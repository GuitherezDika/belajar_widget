// import 'package:belajar_widget/widgets/sample_container.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // String inkwell = '';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // wrap the widgets <- material desain
      title: 'First App',
      home: Scaffold(
        // Scaffold = widget untuk struktur dasar material desain
        // widget utama sebuah halaman

        // backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          // widget membuat AppBar
          title: const Text('Welcome to Flutter'),
          backgroundColor: Colors.deepOrange,
          // text = widget membuat teks
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('FL 1'),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('FL 2'),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('FL 3'),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text('FL 4'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('okkk--'),
          tooltip: 'Increment Counter',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
