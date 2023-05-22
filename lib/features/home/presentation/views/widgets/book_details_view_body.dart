import 'package:bookly/core/utlis/styles.dart';
import 'package:bookly/core/widgets/custom_buttom.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'books_actions.dart';
import 'custom_book_details_appbar.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppbar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 43),
                Text(
                  'Doctor String Book',
                  style:
                      Styles.testStyle30.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.testStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 18),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 37),
                const BooksActions(),
                const Expanded(child: SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Yoy can also like',
                    style: Styles.testStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBooksListView(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
