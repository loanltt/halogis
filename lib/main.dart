import 'package:flutter/material.dart';

void main() {
  //runApp(DangNhap());
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => DangNhap(),
      '/dangky': (context) => DangKy(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/thongtinnguoidung': (context) => Thongtinnguoidung(),
      // /name: (context) => NameScreen(),
    },
  ));
}

class DangNhap extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'OTO VIET',
      home: Scaffold(
        /*appBar: AppBar(
          title: Text('OTO VIET'),
        ),*/
        body: ListView(
          children: [
            textLogin,
            tfLogin,
            textPassword,
            tfPassword,
            buttonLogin,
            forgetpassword,
            //signIn
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child:GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/dangky");
                },
                child: Text(
                  'Chưa có tài khoản? Đăng ký!',
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }

  Widget textLogin = Container(
    padding: const EdgeInsets.all(16),
    child: Text(
      'Tên đăng nhập',
      softWrap: true,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 17,
          fontWeight: FontWeight.w500
      ),
    ),
  );

  Widget forgetpassword = Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(16),
    child: Text(
      'Quên mật khẩu',
      softWrap: true,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  Widget signIn = Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(16),
    child: Text(
      'Chưa có tài khoản? Đăng ký!',
      softWrap: true,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
    ),
  );


  Widget tfLogin = Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Số điện thoại hoặc email',
      ),
    ),
  );

  Widget textPassword = Container(
    padding: const EdgeInsets.all(16),
    child: Text(
      'Mật Khẩu',
      softWrap: true,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 17,
          fontWeight: FontWeight.w500
      ),
    ),
  );

  Widget tfPassword = Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Mật Khẩu',
      ),
    ),
  );

  Widget buttonLogin = Container(
    padding: const EdgeInsets.all(32),
    child: RaisedButton(
      //     disabledColor: Colors.red,
      // disabledTextColor: Colors.black,
      padding: const EdgeInsets.all(20),
      textColor: Colors.white,
      color: Colors.blue,
      onPressed: () {

      },
      child: Text('Đăng nhập'),
    ),
  );

}

class DangKy extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTO VIET',
      home: Scaffold(
        appBar: AppBar(
          title: Text('OTO VIET'),
        ),
        body: ListView(
          children: [
            //textLogin
            textSignIn,
            tfSignIn,
            textPassword,
            tfPassword,
            checkedpassword,
            tfcheckedpassword,
            RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/thongtinnguoidung');
              },
              child: Text('Tiếp tục'),
            ),

          ],
        ),
      ),
    );
  }

  Widget textSignIn = Container(
    padding: const EdgeInsets.all(16),
    child: Text(
      'Tài khoản',
      softWrap: true,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 17,
          fontWeight: FontWeight.w500
      ),
    ),
  );

  Widget tfSignIn = Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Số điện thoại hoặc email',
      ),
    ),
  );

  Widget textPassword = Container(
    padding: const EdgeInsets.all(16),
    child: Text(
      'Mật Khẩu',
      softWrap: true,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 17,
          fontWeight: FontWeight.w500
      ),
    ),
  );

  Widget tfPassword = Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Mật Khẩu',
      ),
    ),
  );

  Widget checkedpassword = Container(
    padding: const EdgeInsets.all(16),
    child: Text(
      'Nhập lại mật khẩu',
      softWrap: true,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 17,
          fontWeight: FontWeight.w500
      ),
    ),
  );

  Widget tfcheckedpassword = Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Mật Khẩu',
      ),
    ),
  );

  Widget buttonNext = Container(
    padding: const EdgeInsets.all(32),
    child: RaisedButton(
      //     disabledColor: Colors.red,
      // disabledTextColor: Colors.black,
      padding: const EdgeInsets.all(20),
      textColor: Colors.white,
      color: Colors.blue,
      onPressed: () {
        //Navigator.pushNamed(context, '/second');
      },
      child: Text('Tiếp tục'),
    ),
  );
}

class Thongtinnguoidung extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OTO VIET',
      home: Scaffold(
        appBar: AppBar(
          title: Text('OTO VIET'),
        ),
        body: ListView(
          children: [
            //textLogin
            textYourName,
            tfYourName,
            textCmnd,
            tfCmnd,
            textDate,
            tfDate,
            RaisedButton(
              //     disabledColor: Colors.red,
              // disabledTextColor: Colors.black,
              padding: const EdgeInsets.all(20),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Xong'),
            ),


          ],
        ),
      ),
    );
  }

  Widget textYourName = Container(
    padding: const EdgeInsets.all(16),
    child: Text(
      'Họ và Tên',
      softWrap: true,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 17,
          fontWeight: FontWeight.w500
      ),
    ),
  );

  Widget tfYourName = Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Họ và Tên',
      ),
    ),
  );

  Widget textCmnd = Container(
    padding: const EdgeInsets.all(16),
    child: Text(
      'Số chứng minh nhân dân',
      softWrap: true,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 17,
          fontWeight: FontWeight.w500
      ),
    ),
  );

  Widget tfCmnd = Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Nhập số chứng minh nhân dân',
      ),
    ),
  );

  Widget textDate = Container(
    padding: const EdgeInsets.all(16),
    child: Text(
      'Ngày tháng năm sinh',
      softWrap: true,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 17,
          fontWeight: FontWeight.w500
      ),
    ),
  );

  Widget tfDate = Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Nhập ngày tháng năm sinh',
      ),
    ),
  );

  Widget buttonEnter = Container(
    padding: const EdgeInsets.all(32),
    child: RaisedButton(
      //     disabledColor: Colors.red,
      // disabledTextColor: Colors.black,
      padding: const EdgeInsets.all(20),
      textColor: Colors.white,
      color: Colors.blue,
      onPressed: () {

      },
      child: Text('Xong'),
    ),
  );
}
