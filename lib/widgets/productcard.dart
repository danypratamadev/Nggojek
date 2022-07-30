import 'package:flutter/material.dart';
import 'package:nggojek/models/product.dart';

class ProductCardWidget extends StatelessWidget {

  final ProductModel product;

  const ProductCardWidget({super.key, required this.product});
  
  @override
  Widget build(BuildContext context) {

    var mediaApp = MediaQuery.of(context);
    var themeApp = Theme.of(context);

    return Container(
      width: mediaApp.size.width * 0.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: themeApp.dividerColor,
          width: 0.5
        ),
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16/9,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                  image: product.img,
                  fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '${product.distance} km',
                      style: themeApp.textTheme.caption?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    Container(
                      width: 3.0,
                      height: 3.0,
                      decoration: BoxDecoration(
                        color: themeApp.disabledColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      '${product.duration} min',
                      style: themeApp.textTheme.caption?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0,),
                Text(
                  product.title,
                  style: themeApp.textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 12.0,),
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      size: 18.0,
                      color: Colors.orange.shade700,
                    ),
                    SizedBox(width: 3.0,),
                    Text(
                      '${product.rating}',
                      style: themeApp.textTheme.caption?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    Container(
                      width: 3.0,
                      height: 3.0,
                      decoration: BoxDecoration(
                        color: themeApp.disabledColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      product.ratingtext,
                      style: themeApp.textTheme.caption?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}