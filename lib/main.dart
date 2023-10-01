import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 193, 206, 223)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Aplicación Flutter PGL'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameController=TextEditingController();
  String _message="";

  void _greeting() {
    setState(() {
      final name=_nameController.text;
      _message="Hola $name!!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 194, 237, 219),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_flutter.jpg"),
            fit:BoxFit.cover,
          ),        
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'HOLA MUNDO!!\n',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 25.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            const Text(
              'INGRESAR UN NOMBRE Y PULSAR EL BOTON INFERIOR\n',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(25),
                labelText: "Escribe tu nombre",
                labelStyle: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 23.0,
                )
              ),
            ),
            Text(
              '\n$_message',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _greeting,
        child: const Icon(Icons.ads_click_rounded),
      ),
    );
  }
}
