import 'package:bookly/core/utlis/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 20,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6.3),
        const Text(
          '4.8',
          style: Styles.testStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          '(4307)',
          style: Styles.testStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}