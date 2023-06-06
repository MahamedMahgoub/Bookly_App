import 'package:flutter/material.dart';
import '../../../data/models/book_model/book_model.dart';
import 'books_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BooksDetailsSection(bookModel: bookModel),
                const Expanded(child: SizedBox(height: 50)),
                const SimilarBooksSection(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//  child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               children: [
//                 BooksDetailsSection(bookModel: bookModel),
//                 const Expanded(child: SizedBox(height: 50)),
//                 const SimilarBooksSection(),
//                 const SizedBox(height: 40),
//               ],
//             ),
//           ),




// CustomScrollView(
//       physics: const BouncingScrollPhysics(),
//       slivers: [
//         SliverFillRemaining(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               children: [
//                 BooksDetailsSection(bookModel: bookModel),
//                 const Expanded(child: SizedBox(height: 50)),
//                 const SimilarBooksSection(),
//                 const SizedBox(height: 40),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );