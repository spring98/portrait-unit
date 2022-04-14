import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print(';;;;;;');
                  setState(() {});
                },
                child: Container(
                  child: Text('업데이트'),
                  color: Colors.orangeAccent,
                  height: 50.w,
                  width: 50.w,
                ),
              ),
              GestureDetector(
                onTap: () {
                  SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.landscapeLeft]);
                  // SystemChrome.setPreferredOrientations(
                  //     [DeviceOrientation.landscapeLeft]).then((value) async {
                  //   await Future.delayed(Duration(seconds: 1));
                  //   setState(() {
                  //     print('이거아니냐?');
                  //   });
                  // });
                },
                child: Container(
                  child: Text('가로모드'),
                  color: Colors.yellow,
                  height: 50.w,
                  width: 50.w,
                ),
              ),
              GestureDetector(
                onTap: () {
                  SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
                },
                child: Container(
                  child: Text('세로모드'),
                  color: Colors.orange,
                  height: 50.w,
                  width: 50.w,
                ),
              ),
              OrientationBuilder(
                builder: (context, orientation) {
                  print('입장');
                  print(MediaQuery.of(context).orientation);
                  print(orientation);
                  return Row(
                    children: [
                      Container(
                        child: Text('기준왼쪽'),
                        color: Colors.indigo,
                        height: 200.h,
                        width: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 180.w
                            : 360.w,
                      ),
                      Container(
                        child: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? Text('세로')
                            : Text('가로'),
                        color: Colors.blue,
                        height: 200.h,
                        width: MediaQuery.of(context).orientation ==
                                Orientation.portrait
                            ? 180.w
                            : 360.w,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
