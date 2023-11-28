import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mycart extends StatefulWidget {
  const Mycart({super.key});
  @override
  State<Mycart> createState() => _MycartPageState();
}

class _MycartPageState extends State<Mycart> {
  final List cartSize = [
    'assets/image/celery.png',
    'assets/image/clover1.png',
    'assets/image/cucumber1.png',
    'assets/image/lettuce.png',
  ];
  final List titleitem = [
    'Celery Stalk',
    'Clover Sprut',
    'Cucumber  ',
    'Lettuce Linr',
  ];
  final List colorpalat = [
    Colors.orange,
    Colors.green,
    Colors.orange,
    Colors.brown,
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.green,
        leading: Icon(Icons.arrow_back),
        title: Text('My Cart'),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '\$53.97',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ],
      ),
      body:  Column(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Padding(padding: EdgeInsets.only(left:3)),
              Text('04 ITEMS',style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.brown,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 5)),
              Text('Organic',style: TextStyle(fontSize: 10),),
              Padding(padding: EdgeInsets.only(left: 10)),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 5)),
              Text('Local',style: TextStyle(fontSize: 10),),
              Padding(padding: EdgeInsets.only(left: 10)),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 5)),
              Text('Speciality',style: TextStyle(fontSize: 10),),
              Padding(padding: EdgeInsets.only(left: 10)),
                ],
              ),
            ],
          ),
          Flexible(
            child: ListView.builder(
                  itemCount: cartSize.length,
                  padding: EdgeInsets.all(6),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 120,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(bottom: BorderSide(color: Colors.black,),),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 75,
                                      height: 70,
                                      child: Center(
                                        child: Image(
                                          image: AssetImage(cartSize[index]),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
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
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    titleitem[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 180)),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: colorpalat[index],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 25)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'VOM',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        '02',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 20)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'PACK SIZE',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        '02',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 20)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'QUANTITY',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        '02',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 20)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'PER UNIT',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        '02',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 20)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'TOTAL',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w200,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        '02',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
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
                  }),

          ),
        ],
      ),          // Padding(padding: EdgeInsets.only(top: 40)),
          // Positioned(
          //   // top: 550,
          //   child: TextField(
          //           // controller:textarea,
          //           keyboardType: TextInputType.multiline,
          //           maxLines: 4,

          //           decoration: InputDecoration(
          //              hintText: "Enter Remarks",
          //              fillColor: Colors.amber,
          //              focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(width: 1, color: Colors.redAccent)
          //              )
          //           ),

          //        ),)
        
      
      bottomSheet: Container(
        width: double.maxFinite,
        height: 300,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 35),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 3,
                decoration: InputDecoration(
                  fillColor: Colors.black,
                  border: OutlineInputBorder(),
                  hintText: 'Enter order level notes here',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(30)),
                child: Center(child: Text('CONFIRM ORDER',style: TextStyle(fontSize: 24),),),
              ),
            
          ],
        ),
      ),
    );
  }
}
