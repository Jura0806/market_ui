import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Cars", style: TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: () {},
            icon: Icon(Icons.notifications_outlined), color: Colors.red,),
          IconButton(onPressed: () {},
              icon: Icon(Icons.shopping_cart, color: Colors.red,)),
        ],
        brightness: Brightness.light,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [

              // #banner
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, "All"),
                    singleTab(false, "Red"),
                    singleTab(false, "Blue"),
                    singleTab(false, "Green"),
                    singleTab(false, "Yellow"),
                    singleTab(false, "Black"),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              // #body
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car5.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car2.jpg"),
            ],
          ),
        ),
      ),
    );
  }
  // ignore: dead_code
  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: type ? Colors.red : Colors.white,
        ),

        child: Center(
          child: Text(
            text, style: TextStyle(color: type ? Colors.white : Colors.black,
            fontSize: type ? 20 : 17,
          ),
          ),
        ),
      ),
    );
  }

  Widget makeItem( String img){
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage(img),
           fit: BoxFit.cover
         ),
          borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            blurRadius: 20,
            offset: Offset(0,10),
          ),
        ]
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.1),
            ]
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start ,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("PDP Car", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text("Electric", style: TextStyle(color: Colors.redAccent, fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            Text("100\$", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
            Expanded(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Icon(Icons.favorite_border, color: Colors.white,),
                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
