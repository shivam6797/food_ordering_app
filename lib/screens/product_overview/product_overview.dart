import 'package:flutter/material.dart';
import 'package:food_ordering_app/config/colors.dart';

enum SigninCharacter { fill, outline }

class ProductOverview extends StatefulWidget {
  final String productName;
  final String productImage;

  const ProductOverview({Key? key,required this.productImage,required this.productName}) : super(key: key);

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SigninCharacter _character = SigninCharacter.fill;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          "Product Overview",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height:100,
              width: double.infinity,
              child: Column(children: [
                 ListTile(
                  title: Text(widget.productName),
                  subtitle: const Text("₹50"),
                ),
                Container(
                  height: 240,
                  padding: const EdgeInsets.all(40),
                  child: Image.network(
                      widget.productImage),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Text(
                    "Available Options",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: textColor, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.green[700],
                          ),
                          Radio(
                            value: SigninCharacter.fill,
                            groupValue: _character,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              setState(() {
                                _character = value as dynamic;
                              });
                            },
                          )
                        ],
                      ),
                      const Text("₹50",textAlign:TextAlign.start,),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical:10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              size: 17,
                              color: primaryColor,
                            ),
                            Text(
                              "ADD",
                              style: TextStyle(color: textColor),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: ListView(
              children: [
                const Text(
                  "About this Product",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Leaves Graded, sorted and premium quality fruits and vegetables Fresh, hygienic and natural",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ))
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          bottamNavigatorBar(
              backgroundColor: textColor,
              color: Colors.white,
              iconColor: Colors.grey,
              title: "Add to Wishlist",
              iconData: Icons.favorite_outline),
          bottamNavigatorBar(
              backgroundColor: primaryColor,
              color: textColor,
              iconColor: Colors.white,
              title: "Go To Cart",
              iconData: Icons.shopping_bag)
        ],
      ),
    );
  }

  Widget bottamNavigatorBar(
      {Color? iconColor,
      Color? backgroundColor,
      Color? color,
      required String title,
      IconData? iconData}) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.all(20),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 17,
            color: iconColor,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(color: color),
          ),
        ],
      ),
    ));
  }
}
