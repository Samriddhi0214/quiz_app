import 'package:flutter/material.dart';
class StartScreen extends StatelessWidget {
  final Function(int) toggle;
  const StartScreen({required this.toggle, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Retro Travel",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 98, 98, 98)),
              ),
              Text(
                "Begins Here,",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.name),
              ),
              Text(
                "Voila!",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: AutofillHints.name,
                    color: Colors.blue),
              ),
              Text(
                "Fun App",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: AutofillHints.name,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    toggle(2);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF000000),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.fromLTRB(80, 15, 80, 15)),
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("have an account ? ", style: TextStyle(fontSize: 20)),
                    Text("Login",
                        style: TextStyle(color: Colors.blue, fontSize: 20))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
