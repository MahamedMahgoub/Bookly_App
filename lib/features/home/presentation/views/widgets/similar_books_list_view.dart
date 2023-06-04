import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 5),
                child: CustomBookImage(
                  imageUrl:
                      'https://www.nicepng.com/ourpic/u2q8y3r5o0t4r5r5_photoshop-how-to-video-photoshop-book-cover-png/',
                ),
              )),
    );
  }
}
