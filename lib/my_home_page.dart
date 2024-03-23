import 'package:flutter/material.dart';
import 'package:test_app/post.dart';
import 'package:test_app/service.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final Color red = Color(0xFFEE0033);

  final List<String> product = [
    'sanpham',
    'diendandung',
    'hethongnuoc',
    'maytinh',
    'camera',
    'dichvu',
  ];

  final List<String> servirceString = [''];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home Services',
                      style: TextStyle(
                          color: red,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('KH - Trần Văn B'),
                        Row(
                          children: [
                            Icon(Icons.search),
                            Icon(Icons.notifications),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: height * 0.3,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/banner.png'),
                                fit: BoxFit.fill)),
                      ),
                      Column(
                        children: [
                          Container(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 40, bottom: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      item(
                                        name: product[0],
                                        title: 'Điện lạnh',
                                        detail: 'Tủ lạnh',
                                      ),
                                      item(
                                        name: product[1],
                                        title: 'Điện dân dụng',
                                        detail: 'Máy giặt',
                                      ),
                                      item(
                                        name: product[2],
                                        title: 'Hệ thống nước',
                                        detail: 'Lavabo',
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      item(
                                        name: product[3],
                                        title: 'Hỗ trợ máy tính',
                                        detail: 'Laptop',
                                      ),
                                      item(
                                        name: product[4],
                                        title: 'Hệ thống camera',
                                        detail: 'Camera',
                                      ),
                                      item(
                                        name: product[5],
                                        title: 'Dịch vụ combo',
                                        detail: 'Giảm 30%',
                                      ),
                                    ],
                                  )
                                ],
                              )),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: red)),
                            child: Text(
                              'Tất cả dịch vụ',
                              style: TextStyle(color: red),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                                color: red,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: red)),
                            child: Text(
                              'Tất cả dịch vụ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.all(10),
                            width: width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.3)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lưu ý:',
                                  style: TextStyle(color: red, fontSize: 15),
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text:
                                          'Những dịch vụ, vật tư phát sinh trong quá trình sửa chữa hoặc bảo dưỡng, vui lòng xem chi tết bảng giá',
                                      style: TextStyle(fontSize: 11, color: Colors.black),
                                      children: [
                                        TextSpan(
                                            text: ' tại đây.',
                                            style:
                                                TextStyle(color: Colors.blue))
                                      ]),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 100,
                                width: width * 0.32,
                                child: Image(
                                    image: AssetImage(
                                  'assets/images/vt1.png',
                                )),
                              ),
                              SizedBox(
                                width: width * 0.32,
                                height: 120,
                                child: const Image(
                                  image: AssetImage(
                                    'assets/images/vt2.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.32,
                                height: 100,
                                child: Image(
                                    image: AssetImage(
                                  'assets/images/vt3.png',
                                )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Service(),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                                color: red,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(width: 1, color: red)),
                            child: Text(
                              'Hỗ trợ kỹ thuật',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Post()
                        ],
                      )
                    ],
                  ),
                  Positioned(
                      top: 200,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 65,
                        width: width - 40,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  offset: Offset(0, 2))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    size: 15,
                                    color: red,
                                  ),
                                  Text(
                                    ' Báo hỏng FTTH Viettel',
                                    style: TextStyle(fontSize: 11),
                                  )
                                ],
                              ),
                              Text('Hotline: 0988838030')
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 40,
                            width: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    size: 15,
                                    color: red,
                                  ),
                                  Text(
                                    ' Báo hỏng FTTH Viettel',
                                    style: TextStyle(fontSize: 11),
                                  )
                                ],
                              ),
                              Text('Hotline: 0988838030')
                            ],
                          )
                        ]),
                      )),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class item extends StatelessWidget {
  item(
      {super.key,
      required this.name,
      required this.title,
      required this.detail});
  String name;
  String title;
  String detail;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage('assets/images/$name.png')),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 13),
        ),
        Text(
          detail,
          style: TextStyle(color: Colors.grey, fontSize: 11),
        ),
      ],
    );
  }
}
