import 'package:flutter/material.dart';

class Service extends StatelessWidget {
   Service({super.key});
  final List<String> servirceImage = ['sv1', 'sv2', 'sv3', 'sv1', 'sv2', 'sv3'];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dịch vụ gói năm',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    'Tất cả',
                    style: TextStyle(color: Colors.blue),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.blue,
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 120,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 10,
              );
            },
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    child: Container(
                      width: width * 0.35,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/${servirceImage[index]}.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: width * 0.35,
                    child: Text(
                      'Gói các dịch vụ',
                      maxLines: 2,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
