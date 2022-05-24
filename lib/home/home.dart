import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_id/home/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
final List<String?> data = [];


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final getdata = Get.put(HomeController());

    print('data img : ${data}');
    return Scaffold(
      body: Obx(() {
      if(getdata.isloading.value == true){
        return const Center(child: CircularProgressIndicator());
      } else{
        for(var i = 0; i <getdata.datab.length ;i++){
          data.add(getdata.datab[i].media);
          print(getdata.datab[i].media);
        };
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: Get.height * 0.2,
                      color: Colors.green[700],
                    ),
                    Column(
                        children: [
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(Icons.food_bank, color: Colors.white,),
                              Text('FOOD.ID',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(25))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                  hintText: 'Mau Belanja Makanan Apa?',
                                  prefixIcon: Icon(
                                    Icons.search, color: Colors.white,),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(20),
                                ),
                              ),
                            ),
                          ),
                        ]
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GFCarousel(
                  items: data.map(
                        (url) {
                      return Container(
                        margin: EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          child: Image.network(
                              url!,
                              fit: BoxFit.contain,
                              width: 1000.0
                          ),
                        ),
                      );
                    },
                  ).toList(),
                  autoPlay: true,
                  onPageChanged: (index) {
                    setState(() {
                      index;
                    });
                  },
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                      width: Get.width * 1,
                      child: Text('Special di FOOD.ID',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 16 / 7,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(
                                color: Colors.green,
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10))
                          ),
                          child: Stack(
                            children: [
                              Container(
                                  height: 100,
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Food Grade ++',
                                        style: TextStyle(
                                            color: Colors.white),)))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              border: Border.all(
                                color: Colors.blueAccent,
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10))
                          ),
                          child: Stack(
                            children: [
                              Container(
                                  height: 100,
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Food Grade',
                                        style: TextStyle(
                                            color: Colors.white),)))
                            ],
                          ),
                        ),),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              border: Border.all(
                                color: Colors.brown,
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10))
                          ),
                          child: Text("", style: TextStyle(fontSize: 24.0),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border: Border.all(
                                color: Colors.orange,
                              ),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10))
                          ),
                          child: Text("", style: TextStyle(fontSize: 24.0),),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                      width: Get.width * 1,
                      child: Text('Cari Inspirasi Belanja',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),)),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))
                                ),
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    '${getdata.datab[1].media}',
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Container(
                                height: 100,
                                width: 100,
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text('Buah Segar',
                                      style: TextStyle(color: Colors.white),)))
                          ],
                        ),

                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))
                                ),
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    '${getdata.datab[3].media}',
                                    fit: BoxFit.cover,),
                                ),
                              ),
                            ),
                            Container(
                                height: 100,
                                width: 100,
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text('Sayur Segar',
                                      style: TextStyle(color: Colors.white),)))
                          ],
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 1,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10))
                              ),

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  '${getdata.datab[2].media}',
                                  fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          Container(
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text('Buah Segar',
                                    style: TextStyle(color: Colors.white),)))
                        ],
                      ),
                    )
                  ],
                )


              ],
            ),
          ),
        );
      }

    }
    ));
  }
}
