import 'package:flutter/material.dart';
import 'package:navgitor_assignment/product_modle.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  final ProductModle product;

  const Details({super.key, required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 30, 30, 31),

      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
          "Restourant",
          // textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 184, 204, 9),
          ),
        ),
        centerTitle: true,

        leading: Row(
          spacing: 2,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.more_vert,
              color: const Color.fromARGB(255, 184, 204, 9),
              size: 25,
            ),
            Icon(
              Icons.delivery_dining_outlined,
              color: const Color.fromARGB(255, 184, 204, 9),
              size: 25,
            ),
          ],
        ),
      ),

      body: ListView(
        children: [
          Container(
            height: 300,
            margin: EdgeInsets.all(20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(widget.product.img),
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            margin: EdgeInsets.all(20),
            child: Text(
              widget.product.name,
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 184, 204, 9),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            margin: EdgeInsets.all(20),
            child: Text(
              widget.product.description,
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 102, 102, 100),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            margin: EdgeInsets.all(20),
            child: Text(
              widget.product.price,
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 184, 204, 9),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 184, 204, 9),
              foregroundColor: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context, "Back from ${widget.product.name} page to products view");
            },
            child: Text("Back to products view"),
          ),
        ],
      ),
    );
  }
}
