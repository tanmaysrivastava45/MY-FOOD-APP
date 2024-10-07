// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'container_sized.dart';
// class DrawerWidget extends StatefulWidget {
//   const DrawerWidget({super.key});

//   @override
//   State<DrawerWidget> createState() => _DrawerWidgetState();
// }

// class _DrawerWidgetState extends State<DrawerWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Drawer widget'),
//       ),
//       drawer: Drawer(
//         child: Container(
//           color: Colors.deepPurple,
//           child: ListView(
//             children: [
//               DrawerHeader(
//                 child: Container(
//                   padding: EdgeInsets.all(10),
//                   child: Center(
//                       child: Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 40,
//                         backgroundImage: NetworkImage(
//                             'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg'),
//                       ),
//                       SizedBox(width: 10),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Tanmay Srivastava',
//                             style: TextStyle(fontSize: 18),
//                           ),
//                           Text('Data Science'),
//                         ],
//                       )
//                     ],
//                   )),
//                 ),
//               ),
//                ListTile(
//                 leading: Icon(Icons.home),
//                 title: Text('Home Page'),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Container_Sized()),
//                   );
//                 },
//               ),
//               ListTile(
//                 leading: Icon(Icons.folder),
//                 title: Text('My folder'),
//               ),
//                ListTile(
//                 leading: Icon(Icons.group),
//                 title: Text('Shared with me'),
//               ),
//                ListTile(
//                 leading: Icon(Icons.star),
//                 title: Text('Starred'),
//               ),
//                ListTile(
//                 leading: Icon(Icons.delete),
//                 title: Text('Trash'),
//               ),
//                ListTile(
//                 leading: Icon(Icons.upload),
//                 title: Text('Uploads'),
//               ),
//               Divider(),
//                ListTile(
//                 leading: Icon(Icons.share),
//                 title: Text('Share'),
//               ),
//                ListTile(
//                 leading: Icon(Icons.logout),
//                 title: Text('Log out'),
//               ),
//             ],
//           ),
//         ),
//       ),

//     );
//   }
// }
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY FOOD APP'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg'),
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tanmay Srivastava',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text('Customer'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home Page'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Container_Sized()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('My Cart'),
              ),
              ListTile(
                leading: Icon(Icons.feedback_outlined),
                title: Text('Feedback'),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Favourite food'),
              ),
              ListTile(
                leading: Icon(Icons.contact_support),
                title: Text('Contact support'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log out'),
              ),
            ],
          ),
        ),
      ),
      body: Container_Sized(), // Home page body is displayed here
    );
  }
}

class Container_Sized extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Text(
            'Welcome, Tanmay!',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search for food...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Popular Food Categories',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildCategoryCard('Burgers', 'assets/burger.jpeg'),
              _buildCategoryCard('Pizza', 'assets/pizza.jpg'),
              _buildCategoryCard('Sushi', 'assets/sushi.jpeg'),
              _buildCategoryCard('Desserts', 'assets/desserts.jpeg'),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Recommended for You',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildFoodItem(
                'Food Item $index',
                'one of the finest.',
                'assets/burger.jpeg',
                10.99 + index, // Random price generation for demo
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryCard(String title, String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              backgroundColor: Colors.black45,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFoodItem(
      String title, String description, String imagePath, double price) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        height: 123,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    Spacer(),
                    Text(
                      '\$$price',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
