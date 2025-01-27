import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8.0),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Icon(
                      Icons.favorite_border_outlined,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
              const Center(
                child: ClipOval(
                  child: Image(
                    height: 140,
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjQRuI4u2pci91LS_meDxi8MkctmhTJVZ2IQ&s'),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              const Center(
                child: Text(
                  'Ashley Rose',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hair Stylist',
                      style: TextStyle(
                          fontSize: 18.0, color: Colors.grey.shade400),
                    ),
                    const SizedBox(width: 4.0),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18.0,
                    ),
                    const Text(
                      "5.0|120 Rating",
                      style: TextStyle(fontSize: 18.0),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              const Row(
                children: [
                  Chip(
                    label: Text('About'),
                    labelStyle: TextStyle(fontSize: 16.0),
                    side: BorderSide.none,
                  ),
                  Chip(
                    label: Text('Schedules'),
                    labelStyle: TextStyle(fontSize: 16.0),
                    side: BorderSide.none,
                  ),
                  Chip(
                    label: Text('Portfolio'),
                    labelStyle: TextStyle(fontSize: 16.0),
                    side: BorderSide.none,
                  ),
                  Chip(
                    label: Text('Review'),
                    labelStyle: TextStyle(fontSize: 16.0),
                    side: BorderSide.none,
                  ),
                ],
              ),
              Text(
                '''Ashley Rosa is an expert makeup artist with a perfect 5.0 rating from 120 clients. Specializing in event makeup.....More''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey.shade400,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "\$130",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Text(
                "Per Person",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey.shade400,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "Location",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              Text(
                "Jussa Beuty Salon\n1321 N Zaragosa Ro, Texas",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey.shade400,
                ),
              ),
              SizedBox(height: width / 6),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.chat,
                      color: Colors.grey.shade100,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                      ),
                      child: const Text(
                        'Book Now',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
