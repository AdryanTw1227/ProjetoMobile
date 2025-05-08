import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatelessWidget{
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Home'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'MenuIcon',
          onPressed: (){},
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints){
          return SingleChildScrollView(
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Bem Vindo', style: TextStyle(fontSize:25)),
                          ],
                        ),
                      ),
                      Expanded(
                        child:ListView(
                          children: [
                            CarouselSlider(
                              items: [
                                Container(
                                  margin:EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, .3),
                                          blurRadius: 9,
                                          offset: Offset(0, 7),
                                        ),
                                      ]
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border:Border.all(width: 1.5),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, .3),
                                          blurRadius: 9,
                                          offset: Offset(0, 7),
                                        ),
                                      ]
                                  ),
                                  child: Container(
                                    height:MediaQuery.of(context).size.height * 0.8,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.5),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, .3),
                                          blurRadius: 9,
                                          offset: Offset(0, 7),
                                        ),
                                      ]
                                  ),
                                  child: Container(
                                    height:MediaQuery.of(context).size.height * 0.8,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1.5),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  ),
                                ),
                              ],
                              options: CarouselOptions(
                                height: 220.0,
                                enlargeCenterPage: true,
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                autoPlayAnimationDuration: Duration(milliseconds: 800),
                                viewportFraction: 0.8,
                              ),
                            ),
                          ],
                        ),

                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}