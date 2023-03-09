import 'package:flutter/material.dart';
import 'package:flutter_engage/widgets/my_button.dart';

void main() {
  runApp(const MyFlutterApp());
}

// void main() => runApp(const MyApp());

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Engage',
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 100,),
              Center(child: Image.asset("images/logo.png")),
              const SizedBox(height: 50,),
              const Text("Welcome!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              const SizedBox(height: 5),
              const Text(
                'Get in touch with millions people in the world!',
                style: TextStyle(fontSize: 12, color: Colors.grey),),
              const SizedBox(height: 50),
              const Text('Continue as'),
              const SizedBox(height: 20,),
              const MyButton(text: "User GDG"),
              const SizedBox(height: 50,),
              const Text("Login to another account"),
              const SizedBox(height: 20),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: "Email address or ",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.transparent, ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  fillColor: Colors.cyan,
                  filled: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
