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
        body: Container(
          // container = wrapper widget lain -> margin padding, backround dekorasi
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blueGrey[100]),
          child: Column(
            // child = nampilkan 1 data
            // children = nampilkan list data
            children: [
              // Image.network(
              //     'https://www.petanikode.com/img/flutter/flutter.png'),
              const Text(
                'Belajar Flutter untuk pemula',
                style:
                    TextStyle(fontSize: 24, fontFamily: "Serif", height: 2.0),
              ),
              const Text('oleh Petani Kode'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                      'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
                  Image.network(
                      'https://www.petanikode.com/img/flutter/flutter-sqr.png'),
                ],
              ),
              const SizedBox(height: 20),
              InkWell(
                  onTap: () {
                    print('Tap the text');
                  },
                  onLongPress: () {
                    print('Long Tap');
                  },
                  child: Container(
                    width: 140,
                    height: 40,
                    padding: const EdgeInsets.all(2),
                    color: Colors.red[50],
                    child: const Center(
                        child:
                            Text("press text", style: TextStyle(fontSize: 20))),
                  )),
              // const SizedBox(height: 20),
              const Text('Data B', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text("Data C", style: TextStyle(fontSize: 20)),
                  SizedBox(width: 20),
                  Text("Data D", style: TextStyle(fontSize: 20))
                ],
              ),
              MaterialButton(
                  color: Colors.lightGreenAccent,
                  child: const Text("Flat Button"),
                  onPressed: () {
                    print('MATERIAL BUTTON');
                  }),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  MaterialButton(
                      color: Colors.amber[100],
                      child: const Text('Login'),
                      onPressed: () => {})
                ],
              )),
              
            ],
          ),
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
