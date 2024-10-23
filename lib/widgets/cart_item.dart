import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/cart_model.dart';

class CartItem extends StatefulWidget {
  final CartModel cartItem;
  const CartItem({
    super.key,
    required this.cartItem;
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: size.width * 0.30,
            height: size.height * 0.13,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Image.asset(
                  widget.cartItem.product.image,
                width: 70,
                height: 70,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.cartItem.product.name,
                style: GoogleFonts.poppins(
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.w500
                ),
                ),
                SizedBox(height: size.height * 0.005),

              ],
            ),
          )
        ],
      ),
    );
  }
}
