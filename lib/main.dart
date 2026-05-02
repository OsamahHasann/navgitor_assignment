import 'package:flutter/material.dart';
import 'package:navgitor_assignment/details.dart';
import 'package:navgitor_assignment/product_modle.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ProductModle> products = [
    ProductModle(
      name: "Burger",
      price: "\$1",
      description: "Burger with crispy cheps",
      img: "asset/burger.jpg",
    ),
    ProductModle(
      name: "Pitza",
      price: "\$2",
      description: "Pitza with mozarila cheese",
      img: "asset/pitza.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 48, 48, 48),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(136, 0, 0, 0),
        title: Text(
          "Restourant",
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

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () async {
                String? resultMess = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(product: products[index]),
                  ),
                );
                if (resultMess != null) {
                  // ignore: use_build_context_synchronously
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(resultMess),
                      backgroundColor: const Color.fromARGB(255, 19, 97, 22),
                    ),
                  );
                }
              },
              title: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(products[index].img),
                  fit: BoxFit.fill,
                ),
              ),
              subtitle: Column(
                children: [
                  Text(
                    products[index].name,
                    style: TextStyle(
                      fontSize: 20,
                      color: const Color.fromARGB(255, 184, 204, 9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    products[index].description,
                    style: TextStyle(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 102, 102, 100),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    products[index].price,
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 184, 204, 9),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),

      //
    );
  }
}
