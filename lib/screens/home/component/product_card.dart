import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, required this.image, required this.title, required this.bgColor, required this.price, required this.press,
  }) : super(key: key);

  final String image, title;
  final Color bgColor;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: EdgeInsets.all(defaultPadding / 2),
        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius))),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(Radius.circular(defaultBorderRadius)
                )
               ),
              child: Image.asset(image,height: 132,),
            ),
            Row(
              children: [
                Expanded(child: Text(title, style: TextStyle(color: Colors.black),)),
                const SizedBox(width: defaultPadding / 4,),
                Text("\$" + price.toString(), style: Theme.of(context).textTheme.bodyMedium,)
              ],
            )
          ],
        ),
      ),
    );
  }
}