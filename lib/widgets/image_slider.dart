import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final List<String> imageList = [
    'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675813400118.png',
    'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675813405511.png',
    'https://s3.ap-northeast-2.amazonaws.com/com.liveschole/common/1675813383738.png',
  ];
  int _currentPage = 0;
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: _currentPage,
      keepPage: false,
      viewportFraction: 0.8,
    );
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 155,
          child: PageView.builder(
            controller: _controller,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 275,
                height: 155,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(imageList[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            imageList.length,
            (index) => GestureDetector(
              onTap: () {
                _controller.animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              },
              child: Container(
                width: 6,
                height: 6,
                margin:
                    const EdgeInsets.symmetric(horizontal: 2.5, vertical: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index
                      ? const Color(0XFFAAADB0)
                      : const Color(0XFFD4D7DA),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
