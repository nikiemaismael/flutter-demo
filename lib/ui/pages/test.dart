import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 400,
            width: 350,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Form(
                      child: Column(children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.person),
                            labelText: 'Login',
                            border: OutlineInputBorder()),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.lock),
                            labelText: 'Mot de passe',
                            border: OutlineInputBorder()),
                        obscureText: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size.fromHeight(50),
                          ),
                          child: const Text(
                            'Se concecter',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            // print(loginController.text);
                            // print(passwordController.text);
                            Navigator.pushNamed(context, '/home');
                          },
                        ),
                      ),
                    ),
                  ]))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
