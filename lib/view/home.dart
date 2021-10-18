import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFF0DA),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text(
                'Home',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              Text(
                'Explore food',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        actions: [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/profile.jpg'),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0XFFFFF0DA),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),

            // ListTile(),
            SizedBox(
              height: 135,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                //building each item
                itemBuilder: (BuildContext context, int itemIndex) {
                  return const CategoryCardWidget();
                },
                //seperator
                separatorBuilder: (BuildContext context, separatorIndex) {
                  return const SizedBox(
                    width: 20,
                  );
                },
                //how many items needed
                itemCount: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Noodles',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text('See all'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 302,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                //building each item
                itemBuilder: (BuildContext context, int itemIndex) {
                  return const FoodCardWidget();
                },
                //seperator
                separatorBuilder: (BuildContext context, separatorIndex) {
                  return const SizedBox(
                    width: 20,
                  );
                },
                //how many items needed
                itemCount: 10,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Popular',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text('See all'),
                ],
              ),
            ),
            SizedBox(
              height: 113,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                //building each item
                itemBuilder: (BuildContext context, int itemIndex) {
                  return const PopularCardWidget();
                },
                //seperator
                separatorBuilder: (BuildContext context, separatorIndex) {
                  return const SizedBox(
                    width: 20,
                  );
                },
                //how many items needed
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodCardWidget extends StatelessWidget {
  const FoodCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      // height: 400,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const Text(
                  'Peri-Peri Chicken',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Text('4.6'),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 14,
                        ),
                      ],
                    ),
                    const Text('(250k Reviews)'),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '\$20.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0XFFFEF7EA),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/2.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      // height: 400,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Noodles',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0XFFFEF7EA),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/7.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

class PopularCardWidget extends StatelessWidget {
  const PopularCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      // height: 400,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0XFFFFFFFF),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/4.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
