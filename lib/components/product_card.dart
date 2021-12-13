import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String url;
  final bool showTags;

  const ProductCard({Key? key, required this.url, this.showTags = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: NetworkImage(
              url,
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
            side: const BorderSide(
              width: 1,
              color: Colors.black,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Красивое\nописание товара",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Railway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              const SizedBox(height: 8),
              if (showTags)
                Wrap(
                  spacing: 10,
                  children: const [
                    // Сюда складывать все тэги
                    ButtonTag(),
                    ButtonTag(),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonTag extends StatelessWidget {
  const ButtonTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        "Some tag",
      ),
    );
  }
}
