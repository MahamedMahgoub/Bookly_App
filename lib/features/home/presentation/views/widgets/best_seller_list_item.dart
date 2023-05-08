import 'package:bookly/constances.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'The Doctor Strange Book',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.testStyle20.copyWith(
                    fontFamily: kGtsectraFine,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                'j.k. Rowling',
                style: Styles.testStyle14,
              ),
              const SizedBox(height: 3),
              Text(
                '19.99 €',
                style: Styles.testStyle14.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
