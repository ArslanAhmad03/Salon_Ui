import 'package:flutter/material.dart';
import 'package:frontend/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // back image

          Positioned.fill(
            child: Image.network(
              'https://img.freepik.com/free-photo/brunette-woman-getting-her-hair-done_23-2148108762.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // White box with gradient

          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.white38,
                    Colors.white,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: width / 12,
            left: width / 9,
            child: Column(
              children: [
                const Text(
                  'Transform Your Look,\nand Feel Confident\nInside and Out!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0.5,
                      ),
                      child: const Text(
                        'Log In',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: width / 4),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        elevation: 0.5,
                      ),
                      child: const Text(
                        'Join Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Continue as Guest',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            child: Opacity(
              opacity: 0.8,
              child: Container(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
