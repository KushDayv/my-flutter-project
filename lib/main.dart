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
      title: 'My Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Home Page'),
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
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String username = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),

            //image
            Center(
              child: Container(
                height: 0.3,
                width: 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('lib/Assets/bulbsd.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                  width: 1,
                )),
                label: Text(
                  'Username',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                  width: 1,
                )),
                label: Text(
                  'Password',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // if (emailController.text.isEmpty ||
                  //     passwordController.text.isEmpty) {
                  //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  //       backgroundColor: Colors.red,
                  //       content: Text("please fill in fields")));
                  // } else {
                  //   await Authentication().loginUser(
                  //     context: context,
                  //     email: emailController.text,
                  //     password: passwordController.text,
                  //   );
                  // }
                },
                child: const Text('Login'),
              ),
            ),

            // Center(
            //   child: TextButton(
            //       onPressed: () {
            //         Navigator.of(context).push(MaterialPageRoute(
            //             builder: (context) => const Register()));
            //       },
            //       child: const Text('Dont have account register')),
            // )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
