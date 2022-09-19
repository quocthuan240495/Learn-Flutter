import 'package:flutter/material.dart';
import 'package:my_app/screens/register_screen.dart';
import 'package:my_app/screens/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPage> {
  String phone = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   brightness: Brightness.light,
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       size: 20,
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Spacer(),
                Center(
                  child: Image(
                    image: AssetImage(
                      'assets/images/logo_login.png',
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        onChanged: (value) {
                          setState(() {
                            phone = value;
                          });
                        },
                        obscureText: false,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff5D4037)),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffD0D0D0)),
                              borderRadius: BorderRadius.circular(20.0),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(50),
                    //     border: Border(
                    //       bottom: BorderSide(color: Colors.black),
                    //       top: BorderSide(color: Colors.black),
                    //       left: BorderSide(color: Colors.black),
                    //       right: BorderSide(color: Colors.black),
                    //     )),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage())),
                      color:
                          phone.isEmpty ? Color(0xffCACACA) : Color(0xff5D4037),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Have an account?"),
                    TextButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage())),
                        child: Text(
                          " Register",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        )),
                  ],
                ),
                Text(
                  '',
                ),
                Text(
                  '',
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
