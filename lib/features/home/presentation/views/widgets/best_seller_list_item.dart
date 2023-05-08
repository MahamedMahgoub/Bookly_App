import 'package:bookly/core/utlis/assets.dart';
import 'package:bookly/core/utlis/styles.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.4 / 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.testImage),
                  )),
            ),
          ),
          const SizedBox(width: 30),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'The Jungle Book The Jungle Book The Jungle Book ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.testStyle20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
