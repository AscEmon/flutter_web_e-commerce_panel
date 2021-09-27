import 'package:flutter/material.dart';
import 'package:futter_web_dashboard/Common/ResponsiveWidget.dart';
import 'package:futter_web_dashboard/Util/Constant.dart';

class GlobalWidget {
 static AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      
      leading: !ResponsivenessWidget.isSmallScreen(context)
          ? Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Image.asset(
                    "assets/icons/logo.png",
                    width: 28,
                  ),
                ),
              ],
            )
          : IconButton(
              icon: Icon(Icons.menu,color: Colors.white,),
              onPressed: () {
                print("Hello");
                key.currentState!.openDrawer();
              }),
              
      title: Container(
        child: Row(
          children: [
            Visibility(
                visible: !ResponsivenessWidget.isSmallScreen(context),
                child: Text("Dash")),
            Expanded(child: Container()),
            IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {}),
            Stack(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white.withOpacity(.7),
                    ),
                    onPressed: () {}),
                Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.red, width: 2)),
                  ),
                )
              ],
            ),
            Container(
              width: 1,
              height: 22,
              color: Colors.grey,
            ),
            SizedBox(
              width: 24,
            ),
            Text("Abu Sayed"),
            SizedBox(
              width: 16,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.red.withOpacity(.5),
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.all(2),
                margin: EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      backgroundColor: Colors.indigo[900],
    );

}

