import 'package:cart/view/second_page/second_page.dart';
import 'package:flutter/material.dart';

class Product_Page extends StatelessWidget {
  var details=["Featured","Collection","Trends","Furniture","Best Collection"];
  var img=["assets/img/pic1.jpg","assets/img/pic2.jpg","assets/img/pic3.jpg","assets/img/pic4.jpg","assets/img/pic1.jpg","assets/img/pic2.jpg","assets/img/pic3.jpg","assets/img/pic4.jpg","assets/img/pic1.jpg","assets/img/pic2.jpg"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation:0,
        backgroundColor:Colors.white,
        title: Text("Decoration",
          style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold
        ),),
        actions: [
          Center(child: Text("Filters",style:TextStyle(fontSize:15 ),))
        ],
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Container(
                height: 30,
                child: ListView.separated(
                  scrollDirection:Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index)=>Text(details[index],
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    separatorBuilder: (context,index)=>SizedBox(
                      width: 20,
                    ), ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount:10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10
                ),itemBuilder: (context,index)=>
                  Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image:DecorationImage(image: AssetImage(img[index]),fit: BoxFit.cover)
                          ),
                          height: 120,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cart()));
                                  }, icon: Icon(Icons.favorite,color: Colors.black,),)

                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("PREMIUM QUALITY PRODUCT ",style: TextStyle(
                          fontSize: 15,fontWeight:FontWeight.bold
                        ),),
                        SizedBox(
                          height: 6,
                        ),
                        Text(" Brand known to create premium "),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                            child: Text("\$29"))
                      ],


                    ),
              ),
              )
        
        
        
        
            ],
          ),
        ),
      ),


    );

  }
}
