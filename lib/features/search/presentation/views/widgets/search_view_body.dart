import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomSearchTextField(),
          SizedBox(height: 24),
          Text('Search Result', style: Styles.testStyle18),
          Expanded(child: SearchResuleListView()),
        ],
      ),
    );
  }
}

class SearchResuleListView extends StatelessWidget {
  const SearchResuleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BestSellerListViewItem(),
        );
      },
    );
  }
}
