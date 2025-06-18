import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {
      'image': 'assets/50% off!.png',
      'label': 'All',
    },
    {'image': 'assets/biriyani.png', 'label': 'Biryani'},
    {'image': 'assets/pizza.png', 'label': 'Pizza'},
    {'image': 'assets/burger.png', 'label': 'Burger'},
    {'image': 'assets/chicken.png', 'label': 'Chicken'},
    {'image': 'assets/healthymix.png', 'label': 'Healthy\nMeals'},
    {'image': 'assets/thali.png', 'label': 'Veg meals'},

    // Network image URL
  ];

  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'Nandhana Palace',
      'image':
          'https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto/RX_THUMBNAIL/IMAGES/VENDOR/2024/11/21/0feef1d4-2a66-43a9-8fef-825997de330a_18974.jpg',
      'rating': 4.6,
      'time': '30–40 mins',
      'offer': 'FLAT ₹100 OFF'
    },
    {
      'name': 'Kottayam The Re...',
      'image':
          'https://b.zmtcdn.com/data/pictures/3/19155423/00d641051c8bf398c9221b39b387e7c6_featured_v2.jpg',
      'rating': 4.1,
      'time': '15–25 mins',
      'offer': 'FLAT ₹50 OFF'
    },
    {
      'name': 'Mandya Gowdr...',
      'image':
          'https://b.zmtcdn.com/data/pictures/1/21149641/df41c0767404d10991b6c51b6275fda6_o2_featured_v2.jpg',
      'rating': 3.9,
      'time': '20–30 mins',
      'offer': 'FLAT 50% OFF'
    },
    {
      'name': 'Castle Mandi And...',
      'image':
          'https://b.zmtcdn.com/data/pictures/1/19801531/eb5c5f36da9ae9302645e5416340f1a2_featured_v2.jpg?output-format=webp',
      'rating': 4.3,
      'time': '30–40 mins',
    },
    {
      'name': 'Thalassery Resta...',
      'image':
          'https://b.zmtcdn.com/data/pictures/2/19442882/360eba754728af5730a7bb3fce3e5e39_featured_v2.jpg',
      'rating': 4.6,
      'time': '35–45 mins',
      'offer': 'FLAT ₹80 OFF'
    },
    {
      'name': 'Kerala Panoor P...',
      'image':
          'https://b.zmtcdn.com/data/pictures/1/19330581/b47c99277f2c8b5ab0b070fd8a4cbf9e_featured_v2.jpg',
      'rating': 4.2,
      'time': '45–55 mins',
      'offer': '10% OFF up to ₹40'
    },
  ];

  DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_pin, color: Colors.red),
                Text('Work', style: TextStyle(color: Colors.black)),
                Icon(Icons.arrow_drop_down, color: Colors.black),
              ],
            ),
            Text(
              'Classic converge, 17th crossRd, sector 6...',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.wallet, color: Colors.black),
          SizedBox(width: 10),
          CircleAvatar(child: Text('V')),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search "bowl"',
                  suffixIcon: Icon(Icons.mic),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            SizedBox(
                height: 100, // Adjust based on your content
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          if (index == 0)
                            // For first index, display plain image instead of CircleAvatar
                            Image.asset(
                              categories[index]['image'],
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            )
                          else
                            CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage(categories[index]['image']),
                            ),
                          const SizedBox(height: 5),
                          Text(categories[index]['label']),
                        ],
                      ),
                    );
                  },
                )),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  shrinkWrap: true,
                  children: [
                    FilterChip(
                        label: const Text('Filters'), onSelected: (_) {}),
                    const SizedBox(
                      width: 10,
                    ),
                    FilterChip(
                        label: const Text('Under 30 mins'), onSelected: (_) {}),
                    const SizedBox(
                      width: 10,
                    ),
                    FilterChip(
                        label: const Text('Friends\' Recos'),
                        onSelected: (_) {}),
                    const SizedBox(
                      width: 10,
                    ),
                    FilterChip(
                        label: const Text('New to you'), onSelected: (_) {}),
                    const SizedBox(
                      width: 10,
                    ),
                    FilterChip(
                        label: const Text('Previously ordered'),
                        onSelected: (_) {}),
                    const SizedBox(
                      width: 10,
                    ),
                    FilterChip(
                        label: const Text('Rating 4.0+'), onSelected: (_) {}),
                    const SizedBox(
                      width: 10,
                    ),
                    FilterChip(
                        label: const Text('Schedule'), onSelected: (_) {}),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('RECOMMENDED FOR YOU',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: restaurants.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              padding: const EdgeInsets.all(8.0),
              itemBuilder: (context, index) {
                final res = restaurants[index];
                return Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(res['image']!,
                                fit: BoxFit.cover, width: double.infinity),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(res['name'],
                            style:
                                const TextStyle(fontWeight: FontWeight.w600)),
                        Text(res['time'],
                            style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                    if (res['offer'] != null)
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10))),
                          child: Text(
                            res['offer'],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    Positioned(
                      bottom: 35,
                      right: 5,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300, blurRadius: 4)
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star,
                                color: Colors.green, size: 14),
                            Text('${res['rating']}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.delivery_dining), label: 'Delivery'),
          BottomNavigationBarItem(icon: Icon(Icons.dining), label: 'Dining'),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore), label: 'district →'),
        ],
      ),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_pin, color: Colors.red),
                Text('Work',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Icon(Icons.arrow_drop_down, color: Colors.black),
              ],
            ),
            Text(
              'Classic converge, 17th crossRd, sector 6...',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        actions: const [
          Icon(Icons.wallet, color: Colors.black),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Colors.orangeAccent,
            child: Text('V'),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 18.0,
              right: 18,
              top: 10,
            ),
            child: TextField(
              decoration: InputDecoration(
                  prefixIconColor: Colors.red,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  hintText: "Search",
                  suffixIcon: Icon(Icons.mic),
                  suffixIconColor: Colors.red,
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
          // Container(
          //   child: Row(
          //     children: [
          //       Icon(
          //         Icons.search,
          //         color: Colors.red,
          //       ),
          //       TextField()
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
