import 'package:cart/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("My Cart",
            style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold
        ),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.separated(itemBuilder: (context,index)=>Container(
          height:150,
          child: Row(
            children: [
              Container(
                width:150,
                child: Image.asset("assets/img/top1.jpg",fit: BoxFit.cover,),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text("PREMIUM QUALITY PRODUCT ",style: TextStyle(
                      fontSize: 12,fontWeight:FontWeight.bold
                  ),),
                  SizedBox(
                    height: 25,
                  ),
                  Text("Black -L"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("\$20.0",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            InkWell(
                            onTap: (){
                             Provider.of<CounterController>(context,listen: false).add();
                             },
                                child: Icon(Icons.add,size: 20,)),
                            SizedBox(
                              width: 30,
                            ),
                            Text(Provider.of<CounterController>(context).count.toString(),
                              style: TextStyle(
                                  fontSize:25,fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            InkWell(
                              onTap: (){
                                Provider.of<CounterController>(context,listen: false).sub();
                              },

                                child: Icon(Icons.remove,size: 20,))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ), separatorBuilder: (context,index)=>SizedBox(
          height: 20,
        ), itemCount: 3),
      ),
      bottomNavigationBar: Container(
        height: 150,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 16 ),),
                Text("2500 /-",style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 18
                ),)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text("Check Out",style: TextStyle(
                    fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white
                  ),),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
