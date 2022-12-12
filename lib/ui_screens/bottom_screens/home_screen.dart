import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:slider_button/slider_button.dart';

class ScreenFirst extends StatefulWidget {
  const ScreenFirst({Key? key}) : super(key: key);

  @override
  State<ScreenFirst> createState() => _ScreenFirstState();
}

bool isVisible = false;
bool isVisibleTwo = false;

class _ScreenFirstState extends State<ScreenFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        leading: Padding(
          padding: EdgeInsets.only(left: 9),
          child: Text(
            "Menu",
            style: TextStyle(fontSize: 20),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * .2,
            height: 3,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            //  height: MediaQuery.of(context).size.height * .05,
            child: Center(
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.percentage,
                    color: Colors.red,
                  ),
                  Text(
                    "Offers",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 7),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 30,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Row(
                    children: [
                      Text(
                        "Veg",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Switch(
                        value: isVisible,
                        onChanged: (value) {
                          //isvisible = vale
                          setState(() {
                            isVisible = value;
                          });
                        },
                        activeColor: Colors.grey,
                        activeTrackColor: Colors.white,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Non-Veg",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Switch(
                        value: isVisibleTwo,
                        onChanged: (value) {
                          setState(() {
                            isVisibleTwo = value;
                          });
                        },
                        activeColor: Colors.grey,
                        activeTrackColor: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.red,
            child: Column(
              children: [
                //Text("hi")
                Divider(
                  height: 2,
                  thickness: 1,
                  color: Colors.white24,
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 7, right: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "DEAL/PROMOTION",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .3,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.restaurant_menu_sharp,
                                color: Colors.white,
                              ),
                              Text(
                                "Browse Menu",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: 6,
                  itemBuilder: (ctx, index) {
                    return Column(
                      // mainAxisAlignment: MainAxisAlignment.start,

                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: MediaQuery.of(context).size.height * .2,
                                //  width: MediaQuery.of(context).size.width * .33,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk4yoGWnhaus_qDoR-kw0bjn_EkrN0TH7y-Q&usqp=CAU"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11),
                          child: Row(
                            children: [
                              Container(
                                // margin: EdgeInsets.all(5),
                                width: 20,
                                height: 10,
                                decoration: BoxDecoration(
                                    //color: Colors.green,
                                    shape: BoxShape.rectangle,
                                    // borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.green)),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 2, bottom: 2),
                                  child: CircleAvatar(
                                    radius: 2,
                                    backgroundColor: Colors.green,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "DHB Hot Deal - A",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "\$ 1190",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                              ),
                              // TextButton(
                              //     style: TextButton.styleFrom(
                              //         backgroundColor: Colors.black),
                              //     onPressed: () {},
                              //     child: Text(
                              //       "ADD",
                              //       style: TextStyle(color: Colors.white),
                              //     ))
                              Container(
                                height: 13,
                                width: 27,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.rectangle),
                                child: Center(
                                  child: Text(
                                    "ADD",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  }))
        ],
      ),
    );
  }
}
