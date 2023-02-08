import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/image_slider.dart';
import 'package:flutter_components/widgets/vertical_card_list.dart';

class FeedFullScrollScreen extends StatelessWidget {
  const FeedFullScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFFF1F2F3),
      child: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          const ImageSlider(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: VerticalCardList(),
          ),
        ],
      ),
    );
    // return Container(
    //     color: const Color(0XFFF1F2F3),
    //     child: SizedBox(
    //       height: MediaQuery.of(context).size.height - 200,
    //       child: const SingleChildScrollView(
    //         child: Column(
    //           children: [
    //             SizedBox(
    //               height: 25,
    //             ),
    //             ImageSlider(),
    //             SizedBox(
    //               height: 20,
    //             ),
    //             SizedBox(
    //               height: 500,
    //               child: VerticalCardList(),
    //             )
    //           ],
    //         ),
    //       ),
    //     ));
  }
}
