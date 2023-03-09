import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/home/component/product_card.dart';
import 'package:stylish/screens/home/component/section_title.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
          pressSeeAll: () {}
        ),
          SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(demo_product.length, (index) => 
          Padding(
            padding: const EdgeInsets.only(left: defaultPadding),
            child: ProductCard(
              title: demo_product[index].title,
              image: demo_product[index].image,
              price: demo_product[index].price,
              press: () {}, 
              bgColor: demo_product[index].bgColor,
            ),
          )
          )
        ,
      ),
    )
      ],
    );
  }
}