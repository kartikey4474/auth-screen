import 'package:flutter/material.dart';

class EllipseDesign extends StatelessWidget {
  const EllipseDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 368,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ell1.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          width: 330,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ell2.png'),
              fit: BoxFit.fill,
            ),
          ),
        )
      ],
    );
  }
}
