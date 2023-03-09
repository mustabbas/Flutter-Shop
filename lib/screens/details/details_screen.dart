import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen ({Key? key, required this.product}) :super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Heart.svg",height: 20,)
          )
          )
          ],
      ),
      body: Column(children: [
        Image.asset(
          product.image,
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.cover,
          ),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding, defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                   topRight: Radius.circular(defaultBorderRadius * 3),
                  )
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(children: [
                    Expanded(child: Text(product.title,style: Theme.of(context).textTheme.headlineSmall,)),
                    const SizedBox(width: defaultPadding,),
                    Text("\$" + product.price.toString(),style: Theme.of(context).textTheme.headlineSmall,)
                  ],),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text("is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting",
                    
                    ),
                  ),
                  const Text(
                    "Color",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: defaultPadding/2,),
                    Row(
                      children: [
                        ColorDot(
                          color: const Color(0XFFBEE8EA),
                          isActive: false,
                          press: () {
                            
                          },
                        ),
                        ColorDot(
                          color: const Color(0XFF141B4A),
                          isActive: true,
                          press: () {
                            
                          },
                        ),
                        ColorDot(
                          color: const Color(0XFFF4E5C3),
                          isActive: true,
                          press: () {
                            
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding * 1.5),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(primary: primaryColor,shape: const StadiumBorder()),
                          child: const Text("Add to cart")),
                      ),
                    )
                ]),
              ),
            )
            )
      ]),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key, required this.color, required this.isActive, required this.press,
  }) : super(key: key);

  final Color color;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
          border: Border.all(color: isActive ? primaryColor : Colors.transparent),
          shape: BoxShape.circle
        ),
        child:  CircleAvatar(
          radius: 10,
          backgroundColor: color),
      ),
    );
  }
}
