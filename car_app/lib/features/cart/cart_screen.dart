import 'package:car_app/core/extensions/int_extension.dart';
import 'package:car_app/features/cart/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerW=context.read<CartProvider>();
    return Scaffold(
      appBar: AppBar(title: const Text('Cart'),),
      body: ListView.separated(
        itemBuilder: (context,index)=> 
        Text('$index ${providerW.cartList[index].model}   ${providerW.cartList[index].count}'),
         separatorBuilder: (context,index) => 20.verticalSape,
          itemCount: providerW.cartList.length),
    );
  }
}