import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:list_view_assignment/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Golden Correl - Addison'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> name = <String>[
    'Celery Stalk   ',
    'Clover Sprout',
    'Cucumber      ',
    'Lettuce Liner',
    'Onions yello\t\t',
    'Tomatoes \t\t\t\t\t',
    'Celery Stalk  ',
    'Clover Sprout',
    'Cucumber      ',
    'Lettuce Liner',
    'Onions Yello\t\t',
    'Tomatoes \t\t\t\t\t',
  ];
  // final List colorpalat = [400, 600, 900];
  final List colorpalat=[
Colors.orange,
Colors.green,
Colors.brown,
Colors.orange,
Colors.green,
Colors.brown,
Colors.orange,
Colors.green,
Colors.brown,
Colors.orange,
Colors.green,
Colors.brown,
  ];
  final List imageCollection=[
     'assets/image/celery.png',
     'assets/image/clover1.png',
     'assets/image/vegetable2.png',
     'assets/image/lettuce.png',
     'assets/image/onion1.png',
     'assets/image/celery.png',
     'assets/image/clover1.png',
     'assets/image/cucumber1.png',
     'assets/image/lettuce.png',
     'assets/image/onion.png',
     'assets/image/lettuce.png',
     'assets/image/onion.png',
    //  'assets/image/celery.png',
    //  'assets/image/celery.png',
    //  'assets/image/celery.png',
    //  'assets/image/celery.png',
    //  'assets/image/onion1.png',
    //   'assets/image/celery.png',
    //  'assets/image/celery.png',
    //  'assets/image/celery.png',
    // 'assets/image/celery.png',
    // 'assets/image/celery.png',
    //  'assets/image/celery.png',
    //   'assets/image/celery.png',
  ];
  List totalamount=[0.00,
  8.99,
  17.98,
  0.00,
  8.99,
  17.98,
  0.00,
  8.99,
  17.98,
  0.00,
  8.99,
  17.98];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.green,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        actions: [
          Row(
            children: [
              Icon(Icons.filter_list),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text(
                'Filter',
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 20)),
          Icon(Icons.search_rounded),
        ],
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: ListView.builder(
              itemCount: name.length,
              padding: EdgeInsets.all(10),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 120,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(bottom: BorderSide(color: Colors.black)),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Padding(padding: EdgeInsets.only(left: 0)),
                      Container(
                        height: 90,
                        width: 80,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(3),
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: colorpalat[index]),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 75,
                                  height: 70,
                                  
                                  child: Center(child: Image(
                                    image:
                                        AssetImage(imageCollection[index]),fit: BoxFit.cover,),),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                name[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Padding(padding: EdgeInsets.only(left: 75)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.green,
                                ),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        // shape: ,
                                        backgroundColor: Colors.green,
                                        shape: OvalBorder()),
                                    onPressed: () {},
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Text(
                                        'Add',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )),
                              )
                                ],
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 25)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'VOM',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    '02',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(left: 30)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PACK SIZE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    '02',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(left: 30)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PER UNIT',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    '02',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(left: 30)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'TOTAL',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w200,
                                        fontSize: 10),
                                  ),
                                  Text(
                                    '\$${totalamount[index]}',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                );
              })),
              bottomSheet: Container(
                height: 70,
                width: double.infinity,
                color: Colors.amber,
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 120,
                      color: Colors.amber,
                      child: Center(child: Text('\$53.97',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),),
                    ),
                    InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Mycart();
                      }));
                    },
                    child: Container(
                      height: 70,
                      width: 270,
                      color: Colors.amberAccent,
                      child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('VIEW CART(08)',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w400),),
                          Padding(padding: EdgeInsets.only(left: 30)),
                          Icon(Icons.arrow_forward),
                        ],
                      )),
                    ),
                    ),
                  ],
                ),
              ),
    );
  }
}
