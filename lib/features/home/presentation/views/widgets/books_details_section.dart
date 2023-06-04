import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';
import 'book_rating.dart';
import 'books_actions.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_image.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomBookDetailsAppbar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(
            imageUrl:
                'https://www.nicepng.com/ourpic/u2q8y3r5o0t4r5r5_photoshop-how-to-video-photoshop-book-cover-png/',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          'Doctor String Book',
          style: Styles.testStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.testStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 18),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BooksActions(),
      ],
    );
  }
}
