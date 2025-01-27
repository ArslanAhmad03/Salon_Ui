import 'package:flutter/material.dart';
import 'package:frontend/detail_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const ClipOval(
                      child: Image(
                        height: 50,
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCiZD12EU_Zm57G1wc72AaNVHGoLhQBIHPcg&s',
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    RichText(
                      text: TextSpan(
                        text: 'Good Morning',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 18.0),
                        children: const <TextSpan>[
                          TextSpan(
                            text: '\nOlivia',
                            style: TextStyle(
                                fontSize: 16.0, color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.notification_add_outlined,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.search,
                                color: Colors.grey.shade600,
                              ),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade600,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.filter_list,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: width / 2 - 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://media.istockphoto.com/id/1309538965/photo/facial-massage-beauty-treatment.jpg?s=612x612&w=0&k=20&c=Lyt-ruIFQag7qdRRiqErrsjvVE-iUSs5cOHl6XFwoa0=',
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Spacial Discount Today\nOn face facial',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: RotationTransition(
                                turns: const AlwaysStoppedAnimation(45 / 360),
                                child: Icon(
                                  Icons.arrow_upward_sharp,
                                  color: Colors.purple.shade600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const RotationTransition(
                            turns: AlwaysStoppedAnimation(15 / 360),
                            child: Text(
                              '20%\nOff',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    const Text(
                      'Our Spacilist',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const Spacer(),
                    RichText(
                      text: TextSpan(
                          text: 'See All',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12.0),
                          children: [
                            TextSpan(
                              text: " >>",
                              style: TextStyle(color: Colors.grey.shade300),
                            ),
                          ]),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),
                ourSpacilist(
                  context,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjQRuI4u2pci91LS_meDxi8MkctmhTJVZ2IQ&s',
                  'Kaitlyn Kristy',
                  '\nHair Stylist',
                  '\nAvailable',
                ),
                ourSpacilist(
                  context,
                  'https://img.freepik.com/premium-photo/highprofile-salon-celebrity-makeup-session_1204896-48809.jpg',
                  'Ashely Rosa',
                  '\nMake up Artist',
                  '\nAvailable',
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    const Text(
                      'Nearby Salon',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    const Spacer(),
                    RichText(
                      text: TextSpan(
                          text: 'See All',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 12.0),
                          children: [
                            TextSpan(
                              text: " >>",
                              style: TextStyle(color: Colors.grey.shade300),
                            ),
                          ]),
                    ),
                  ],
                ),
                nearbySalonCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ourSpacilist(BuildContext context, String imageUrl, String name, String skill, String status) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: name,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: skill,
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                  TextSpan(
                    text: status,
                    style: const TextStyle(color: Colors.green),
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
            child: const Text(
              'Book Now',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  final List<String> imageUrl = [
    'https://img.freepik.com/free-vector/flat-design-beauty-salon-twitch-background_23-2150819469.jpg',
    'https://i.pinimg.com/736x/8d/d0/0f/8dd00fe0b2a6fd3ead92a7faed214c22.jpg',
    'https://img.freepik.com/free-vector/flat-design-beauty-salon-sale-banner-template_23-2149672019.jpg?semt=ais_hybrid',
    'https://img.freepik.com/premium-vector/spa-beauty-salon-facebook-cover-social-media-banner-template-design_976179-274.jpg',
  ];

  Widget nearbySalonCard() {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrl.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: Container(
              height: 180,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    imageUrl[index],
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Container(
                      height: 50,
                      width: 50,
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
              ),
            ),
          );
        },
      ),
    );
  }
}