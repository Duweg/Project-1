import 'package:flutter/material.dart';
//import terlebih dahulu halaman yang diperlukan
import './detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(title: Text("All Watch List")),
        //body untuk content
        //menampilkan list
        body: ListView(
          shrinkWrap: true,
          //padding
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          //anggota dari list berupa widget children
          children: <Widget>[
            //GestureDetector untuk menangani gesture pengguna
            new GestureDetector(
              //listener  berupa klik 1x
              onTap: () {
                //navigator.push  untuk berpindah halaman
                Navigator.of(context).push(new MaterialPageRoute(
                  //pemanggilan class DetailProduk beserta pengiriman detail produk
                  builder: (BuildContext context) => DetailProduk(
                    name: "Fossil FB-01 Three-Hand Date Pink Stainless Steel Watch",
                    description: "This watch is very beautifull and so stylish for women."
                    "Fossil FB-01 Three-Hand with Pink colour will make your day full with smile.",
                    
                    price: 2445000,
                    image: "fosilcewek.jpg",
                    star: 4,
                  ),
                ));
              },
              //memanggil class Productbox
              child: ProductBox(
                  //berisi parameter yang diperlukan di class ProductBox
                  name: "Fossil FB-01 Three-Hand Date Pink Stainless Steel Watch",
                  description: "Watch for Women",
                  price: 2445000,
                  image: "fosilcewek.jpg",
                  star: 4),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Townsman 48 mm Automatic Amber Leather Watch",
                      description: "With the best leather strap and cooles design in this watch will make you look like cooles man.",
        
                      price: 4685000,
                      image: "fosilpria.jpg",
                      star: 5,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Townsman 48 mm Automatic Amber Leather Watch",
                    description: "Watch for Men",
                    price: 4685000,
                    image: "fosilpria.jpg",
                    star: 5)),
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "His & Her Three-Hand Black Leather Box Set",
                      description: "His & Her Three-Hand Black Leather Fossil Couple Watches is perfect for you and your partner." 
                                   "Get this exclusive watch for both of you, a beautiful and elegant design"
                                  "This set of boxes consists of 1 Andy 42 mm diameter watch with white dial,"
                                  "analog machine movement and brown leather strap," 
                                  "and 1 Addison watch with 30 mm diameter with white dial,"
                                  "analog machine movement and brown leather strap.",
                      price: 4495000,
                      image: "fosilcouple.jpg",
                      star: 5,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "His & Her Three-Hand Black Leather Box Set",
                    description: "Couple Watch",
                    price: 4495000,
                    image: "fosilcouple.jpg",
                    star: 5)),
                        new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Lady-DateJust Oyster,28 mm,Gold",
                      description: "This Oyster Perpetual Lady-Datejust in 18 ct Everose gold features a white dial and a President bracelet." 
                      "The light reflections on the case sides and lugs highlight the elegant profile of the 28 mm Oyster case,"
                       "which is fitted with a Domed bezel. Rolex's classic feminine watch, the Lady-Datejust is in the lineage of the Datejust," 
                       "the emblematic model that has been a byword for style and accurate timekeeping.",
                      price: 401670000,
                      image: "rolexcewek.jpg",
                      star: 5,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Lady-DateJust Oyster,28 mm,Gold",
                    description: "Watch for Women",
                    price: 401670000,
                    image: "rolexcewek.jpg",
                    star: 5)),
new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "GMT-MASTER II",
                      description: "Designed to show the time in two different time zones simultaneously,"
                       "the GMT-Master, launched in 1955, was originally developed as a navigation "
                      " instrument for professionals criss-crossing the globe.",
                      
                      price: 465950000,
                      image: "rolexpria.jpg",
                      star: 5,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "GMT-MASTER II",
                    description: "Watch for Men",
                    price: 465950000,
                    image: "rolexpria.jpg",
                    star: 5)),
          ],
        ));
  }
}

//menggunakan widget StatelessWidget
class ProductBox extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyHomePage
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  //menampung variabel yang diterima untuk dapat digunakan pada class ini
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    //menggunakan widget container
    return Container(
        //padding
        padding: EdgeInsets.all(10),
        // height: 120,
        //menggunakan widget card
        child: Card(
            //membuat tampilan secara horisontal antar image dan deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children digunakan untuk menampung banyak widget
                children: <Widget>[
              Image.asset(
                "assets/" + image,
                width: 150,
              ),
              Expanded(
                  //child digunakan untuk menampung satu widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat tampilan secara vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini isi tampilan vertikal tersebut
                        children: <Widget>[
                          //menampilkan variabel menggunakan widget text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan widget icon  dibungkus dengan row
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
