import 'package:flutter/material.dart';
import 'package:food_ordering_app/config/colors.dart';
import 'package:food_ordering_app/screens/home/drawer_side.dart';
import 'package:food_ordering_app/screens/home/single_product.dart';
import 'package:food_ordering_app/screens/product_overview/product_overview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffcbcbcb),
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: const [
          CircleAvatar(
            radius: 14,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 14,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shopping_bag, size: 17, color: Colors.black),
            ),
          )
        ],
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        backgroundColor: const Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      'assets/images/slider_image.jpg'),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 130, bottom: 10),
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Vegi',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: scaffoldBackgroundColor,
                                    shadows: const [
                                      BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 3))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '30% Off',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.green[100],
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'On all vegetables products',
                              style: TextStyle(
                                color: scaffoldBackgroundColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buildHerbsProduct(context),
            _buildFreshProduct(context),
            _buildRootProduct(context),
          ],
        ),
      ),
    );
  }

  Widget singleProduct() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 160,
      height: 230,
      decoration: BoxDecoration(
          color: const Color(0xffd9dad9),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 2,
            child: Image(
              image: AssetImage("assets/images/fresh_images.png"),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Fresh Basil",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "50₹/50 gram",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 5),
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "50 Gram",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                              Center(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.remove,
                                size: 15,
                                color: Color(0xffd0b84c),
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                    color: Color(0xffd0b84c),
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.add,
                                size: 15,
                                color: Color(0xffd0b84c),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHerbsProduct(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Herbs Seasonings'),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const ProductOverview(),
                  //   ),
                  // );
                },
                child: const Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProduct(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const ProductOverview(productImage: 'https://www.seekpng.com/png/full/19-191759_watercolor-plant-png-basil-leaves.png', productName: 'Fresh Basil',)));
                },
                productImage:
                    "https://www.seekpng.com/png/full/19-191759_watercolor-plant-png-basil-leaves.png",
                productName: "Fresh Basil",
              ),
              SingleProduct(
                  onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const ProductOverview(productImage: 'https://pngimg.com/uploads/basil/small/basil_PNG1.png', productName: 'Small Basil',)));
                },
                productImage:
                    "https://pngimg.com/uploads/basil/small/basil_PNG1.png",
                productName: "Small Basil",
              ),
              SingleProduct(
                  onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const ProductOverview(productImage: 'https://pngimg.com/uploads/basil/small/basil_PNG2.png', productName: 'leaf Basil',)));
                },
                productImage:
                    "https://pngimg.com/uploads/basil/small/basil_PNG2.png",
                productName: "leaf Basil",
              ),
              SingleProduct(
                     onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const ProductOverview(productImage: 'https://pngimg.com/uploads/basil/small/basil_PNG10.png', productName: 'Pureity Basil',)));
                },
                productImage:
                    "https://pngimg.com/uploads/basil/small/basil_PNG10.png",
                productName: "Pureity Basil",
              ),
              SingleProduct(
                  onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const ProductOverview(productImage: 'https://pngimg.com/uploads/basil/small/basil_PNG7.png', productName: 'Small Basil',)));
                },
                productImage:
                    "https://pngimg.com/uploads/basil/small/basil_PNG7.png",
                productName: "Small Basil",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRootProduct(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Root Vegetable'),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children:[
            SingleProduct(
               onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const ProductOverview(productImage:"https://freepngimg.com/thumb/beetroot/135667-beetroot-fresh-free-photo.png", productName:"beetroot-fresh")));
                },
                productImage:
                    "https://freepngimg.com/thumb/beetroot/135667-beetroot-fresh-free-photo.png",
                productName: "beetroot-fresh"),
            SingleProduct(
               onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const ProductOverview(productImage:"https://pngimg.com/uploads/carrot/carrot_PNG4988.png", productName:"Carrot")));
                },
                productImage:
                    "https://pngimg.com/uploads/carrot/carrot_PNG4988.png",
                productName: "Carrot"),
            SingleProduct(
               onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const ProductOverview(productImage:"https://png2.cleanpng.com/sh/bb6ca57141855bf6bf8e8936c7b767ac/L0KzQYm3UcI3N5dvfZH0aYP2gLBuTgJwd6UyjtdwZYTkcr3sk71ocZ9sfeQ2Z3nxd7b5TcViPpJoeak7Y3LpSLWBTsAxO2E6SaY5MUW0Roq7WMA5Omk4Tac3cH7q/kisspng-root-vegetables-ginger-ginger-5a6aca72cbf8d8.0030514015169480828355.png", productName:"Ginger")));
                },
                productImage:
                    "https://png2.cleanpng.com/sh/bb6ca57141855bf6bf8e8936c7b767ac/L0KzQYm3UcI3N5dvfZH0aYP2gLBuTgJwd6UyjtdwZYTkcr3sk71ocZ9sfeQ2Z3nxd7b5TcViPpJoeak7Y3LpSLWBTsAxO2E6SaY5MUW0Roq7WMA5Omk4Tac3cH7q/kisspng-root-vegetables-ginger-ginger-5a6aca72cbf8d8.0030514015169480828355.png",
                productName: "Ginger"),
            SingleProduct(
               onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const ProductOverview(productImage:"http://clipart-library.com/images_k/potato-png-transparent/potato-png-transparent-7.png", productName:"potato")));
                },
                productImage:
                    "http://clipart-library.com/images_k/potato-png-transparent/potato-png-transparent-7.png",
                productName: "potato"),
            SingleProduct(
                 onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder:(context)=> const ProductOverview(productImage:"https://www.clipartqueen.com/image-files/yellow-pepper-clipart.png", productName:"Yellow pepper")));
                },
                productImage:
                    "https://www.clipartqueen.com/image-files/yellow-pepper-clipart.png",
                productName: "Yellow pepper"),
          ]),
        ),
      ],
    );
  }

  Widget _buildFreshProduct(context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Fresh Fruits'),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => Search(
                //       search: productProvider.getFreshProductDataList,
                //     ),
                //   ),
                // );
              },
              child: const Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children:[
          SingleProduct(
             onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>const ProductOverview(productImage:"https://pngimg.com/uploads/pomegranate/pomegranate_PNG8653.png", productName:"pomegranate")));  
                },
              productImage:
                  "https://pngimg.com/uploads/pomegranate/pomegranate_PNG8653.png",
              productName: "pomegranate"),
          SingleProduct(
             onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>const ProductOverview(productImage:"https://pngimg.com/uploads/kiwi/small/kiwi_PNG4029.png", productName:"kiwi")));  
                },
              productImage:
                  "https://pngimg.com/uploads/kiwi/small/kiwi_PNG4029.png",
              productName: "kiwi"),
          SingleProduct(
             onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>const ProductOverview(productImage:"https://1.bp.blogspot.com/-16U6l5puvfw/YLBuF9pktaI/AAAAAAAAIPA/2WdMPtd8MB8sEASDtAq4ZpP2BJQ5g7ktgCLcBGAsYHQ/s16000/blueberry-fruit-png.png", productName:"BlueBerry_Fruit")));  
                },
              productImage:
                  "https://1.bp.blogspot.com/-16U6l5puvfw/YLBuF9pktaI/AAAAAAAAIPA/2WdMPtd8MB8sEASDtAq4ZpP2BJQ5g7ktgCLcBGAsYHQ/s16000/blueberry-fruit-png.png",
              productName: "BlueBerry_Fruit"),
          SingleProduct(
            onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>const ProductOverview(productImage:"https://cdn.picpng.com/fruit/fruit-orange-png-transparent-64893.png", productName:"orange")));  
                },
              productImage:
                  "https://cdn.picpng.com/fruit/fruit-orange-png-transparent-64893.png",
              productName: "orange"),
          SingleProduct(
            onTap: () {
                Navigator.push(context,MaterialPageRoute(builder:(context)=>const ProductOverview(productImage:"https://www.picng.com/upload/mango/png_mango_9251.png", productName:"Mango")));  
                },
              productImage:
                  "https://www.picng.com/upload/mango/png_mango_9251.png",
              productName: "Mango"),
        ]),
      ),
    ]);
  }
}
