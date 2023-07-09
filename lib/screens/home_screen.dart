import 'package:flutter/material.dart';
import 'package:freelance_aditya/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> paragraphList = [
    '1. Develop a Solid Foundation: From understanding camera settings and equipment to mastering exposure and composition, establish a strong foundation in the technical aspects of photography.',
    '2. Master Light and Shadow: Explore the fundamental role of light and shadow in photography and learn how to manipulate them to create mood, depth, and dimension in your images',
    '3. Artistic Composition: Discover the principles of effective composition, including rule of thirds, leading lines, symmetry, and balance, to create visually compelling photographs. Creative Storytelling: Learn how to use photography as a means of storytelling, capturing the essence of a moment, event, or subject and conveying emotions and narratives through your images. Advanced Techniques: Dive into advanced techniques such as long exposure, high-speed photography, macro photography, and creative use of lenses, expanding your creative possibilities. Post-Processing and Editing: Explore the world of digital post-processing using industry-standard software, enhancing your images and giving them the final touch to achieve your artistic vision. Developing Your Style: Cultivate your unique photographic style by exploring different genres, experimenting with different subjects, and finding inspiration from master photographers.',
  ];

  @override
  Widget build(BuildContext context) {
    final double referenceWidth =
        428; // Use the width of the iPhone 13 Pro Max in Figma
    final double screenWidth = MediaQuery.of(context).size.width;
    final double convertedWidth = screenWidth / referenceWidth;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: convertedWidth * 225,
                width: convertedWidth * 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    'images/tiger2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Positioned(
                bottom: 24,
                left: 24,
                child: Text(
                  'Shoot 4K Pics like a PRO',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Satoshi',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              )
            ]),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'The photography masterclass',
              style: TextStyle(
                color: Color(0xFF1B1B1B),
                fontSize: 18,
                fontFamily: 'Satoshi',
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '12h 13m - ',
                    style: TextStyle(
                      color: Color(0xFF777777),
                      fontSize: 13,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.78,
                    ),
                  ),
                  TextSpan(
                    text: 'George Evans',
                    style: TextStyle(
                      color: Color(0xFF4285F4),
                      fontSize: 13,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text('COURSE DESCRIPTION', style: HeadingText),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Unlock the full potential of your photography skills and elevate your artistry to new heights with our comprehensive masterclass. Designed for both amateur and experienced photographers, this immersive course offers a deep dive into the world of photography, equipping you with the knowledge, techniques, and creative vision to capture captivating images.',
              style: ParaText,
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'COURSE OBJECTIVES:',
              style: HeadingText,
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: List.generate(paragraphList.length, (index) {
                return ListTile(
                  dense: true,
                  contentPadding: EdgeInsets
                      .zero, // Remove the distance between leading and content

                  // leading: Text(
                  //   (index + 1).toString() + ".",
                  //   style: TextStyle(
                  //     color: Color(0xFF6D6D6D),
                  //   ),
                  // ),
                  title: Text(
                    paragraphList[index],
                    style: const TextStyle(
                      color: Color(0xFF6D6D6D),
                      fontSize: 13,
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
