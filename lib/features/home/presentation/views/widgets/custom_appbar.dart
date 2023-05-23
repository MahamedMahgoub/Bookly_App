import 'package:bookly/core/utlis/app_router.dart';
import 'package:bookly/core/utlis/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 35),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.ksearchView);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18,
              )),
        ],
      ),
    );
  }
}
