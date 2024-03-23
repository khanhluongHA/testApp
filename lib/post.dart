import 'package:flutter/material.dart';

class Post extends StatelessWidget {
   Post({super.key});
  final List<String> items = ['it1', 'it2', 'it3', 'it1', 'it2', 'it3'];

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
                'Bài viết',
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
                                  'assets/images/${items[index]}.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: width * 0.35,
                    child: Text(
                      'Tết rộn ràng - Rinh quà chất ',
                      maxLines: 2,
                    ),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
