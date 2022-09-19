// // import 'package:flutter/src/foundation/key.dart';
// // import 'package:flutter/src/widgets/framework.dart';

// import 'package:flutter/material.dart';
// import 'package:carousel_pro/carousel_pro.dart';

// class UserListScreen extends StatefulWidget {
//   const UserListScreen({Key? key}) : super(key: key);

//   @override
//   State<UserListScreen> createState() => _UserListScreenState();
// }

// class _UserListScreenState extends State<UserListScreen>
//     with SingleTickerProviderStateMixin {
//   final List<Map<String, dynamic>> _allUsers = [
//     {
//       "image":
//           "https://im.rediff.com/300-300/movies/2019/oct/14neeraj-madhav2.jpg",
//       "id": 1,
//       "name": "Dr. Manu Kumar",
//       "des": "Co-founder & CEO @ ",
//       "price": "15",
//       "oldPrice": "18",
//     },
//     {
//       "id": 2,
//       "name": "BL Kumawat",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png",
//       "price": "15",
//       "oldPrice": "18",
//     },
//     {
//       "id": 3,
//       "name": "Rohit Kumar",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://sa1s3optim.patientpop.com/assets/images/provider/photos/1888657.jpg",
//       "price": "15",
//       "oldPrice": "18",
//     },
//     {
//       "id": 4,
//       "name": "Mitesh Raj",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_LmG47_W3RM0QBVGI23-vodL_oOOJxLIBrg&usqp=CAU",
//       "price": "15",
//       "oldPrice": "18",
//     },
//     {
//       "id": 5,
//       "name": "Dr. Manu Kumar",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://img.freepik.com/free-photo/black-man-city_1157-17027.jpg?w=2000",
//       "price": "15",
//       "oldPrice": "18",
//     },
//     {
//       "id": 6,
//       "name": "Deno James",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://media.gettyimages.com/photos/portrait-of-smiling-mid-adult-man-wearing-tshirt-picture-id985138674?s=612x612",
//       "price": "15",
//       "oldPrice": "18",
//     },
//     {
//       "id": 7,
//       "name": "Kaviraj Patil",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://image.shutterstock.com/image-photo/handsome-young-man-running-across-260nw-587931092.jpg",
//       "price": "15",
//       "oldPrice": "18",
//     },
//     {
//       "id": 8,
//       "name": "Raja Ram",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://media.istockphoto.com/photos/portrait-of-young-happy-indian-business-man-executive-looking-at-picture-id1309489745?b=1&k=20&m=1309489745&s=170667a&w=0&h=Wo_7nESC_ePyEYfEsnOm-rP6ElkxbWqIB3Ga4W3nw8M=",
//       "price": "15",
//       "oldPrice": "18",
//     },
//     {
//       "id": 9,
//       "name": "Caversky",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://media.istockphoto.com/photos/young-man-looking-at-digital-tablet-picture-id1184382530?k=20&m=1184382530&s=612x612&w=0&h=-G67wR9BU2-XqLTR70purl0vb2PFbu3OAg0T7O_ZpiI=",
//       "price": "15",
//       "oldPrice": "18",
//     },
//     {
//       "id": 10,
//       "name": "Becky",
//       "des": "Co-founder & CEO @ ",
//       "image":
//           "https://e0.365dm.com/22/06/2048x1152/skysports-erling-haaland-man-city_5803257.jpg",
//       "price": "15",
//       "oldPrice": "18",
//     },
//   ];

//   // This list holds the data for the list view
//   List<Map<String, dynamic>> _foundUsers = [];
//   TabController? _tabController;
//   @override
//   initState() {
//     // at the beginning, all users are shown
//     _foundUsers = _allUsers;
//     _tabController = new TabController(length: 3, vsync: this);
//     super.initState();
//   }

//   // This function is called whenever the text field changes
//   void _runFilter(String enteredKeyword) {
//     List<Map<String, dynamic>> results = [];
//     if (enteredKeyword.isEmpty) {
//       // if the search field is empty or only contains white-space, we'll display all users
//       results = _allUsers;
//     } else {
//       results = _allUsers
//           .where((user) =>
//               user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
//           .toList();
//       // we use the toLowerCase() method to make it case-insensitive
//     }

//     // Refresh the UI
//     setState(() {
//       _foundUsers = results;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Column(
//           children: [
//             const SizedBox(height: 50),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                   child: TextField(
//                     onChanged: (value) => _runFilter(value),
//                     decoration: InputDecoration(
//                       contentPadding: const EdgeInsets.symmetric(
//                           vertical: 10.0, horizontal: 15),
//                       hintText: "Search",
//                       suffixIcon: const Icon(Icons.search),
//                       // prefix: Icon(Icons.search),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20.0),
//                         borderSide: const BorderSide(),
//                       ),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Image.asset('assets/images/bell_light.png'),
//                   iconSize: 50,
//                   onPressed: () {},
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             SizedBox(
//                 height: 200.0,
//                 width: double.infinity,
//                 child: Carousel(
//                   images: [
//                     Image.asset('assets/images/promo.png', fit: BoxFit.fill),
//                     Image.asset('assets/images/promo.png', fit: BoxFit.fill),
//                     Image.asset('assets/images/promo.png', fit: BoxFit.fill),
//                   ],
//                   showIndicator: false,
//                   borderRadius: false,
//                   moveIndicatorFromBottom: 180.0,
//                   noRadiusForIndicator: true,
//                   overlayShadow: true,
//                   overlayShadowColors: Colors.white,
//                   overlayShadowSize: 0.7,
//                 )),
//             TabBar(
//               unselectedLabelColor: Color(0xffCACACA),
//               labelColor: Color(0xff5D4037),
//               indicatorColor: Color(0xff5D4037),
//               indicator: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Color(0xff5D4037),
//                     Color(0xff5D4037),
//                     Color(0xff5D4037),
//                   ],
//                 ),
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(5),
//                 ),
//               ),
//               indicatorWeight: 1,
//               indicatorPadding: EdgeInsets.only(top: 40),
//               tabs: [
//                 Tab(icon: Text('Coffee')),
//                 Tab(icon: Text('Non Coffee')),
//                 Tab(icon: Text('Pastry')),
//               ],
//               controller: _tabController,
//               indicatorSize: TabBarIndicatorSize.tab,
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   Center(
//                     child: Expanded(
//                         child: Column(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.symmetric(vertical: 20.0),
//                           height: 40.0,
//                           child: ListView(
//                             // This next line does the trick.
//                             scrollDirection: Axis.horizontal,
//                             children: <Widget>[
//                               Container(
//                                 margin: const EdgeInsets.only(right: 10.0),
//                                 child: ElevatedButton.icon(
//                                   icon: Image(
//                                     image: AssetImage(
//                                       'assets/images/un_focus_filter.png',
//                                     ),
//                                   ),
//                                   label: Text('Filter'),
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     primary: Color(0xFFEFEBE9),
//                                     onPrimary: Color(0xFF3C3C3C),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 margin: const EdgeInsets.only(right: 10.0),
//                                 child: ElevatedButton.icon(
//                                   icon: Image(
//                                     image: AssetImage(
//                                       'assets/images/un_focus_star.png',
//                                     ),
//                                   ),
//                                   label: Text('Rating 4.5+'),
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     primary: Color(0xFFEFEBE9),
//                                     onPrimary: Color(0xFF3C3C3C),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 margin: const EdgeInsets.only(right: 10.0),
//                                 child: ElevatedButton.icon(
//                                   icon: Image(
//                                     image: AssetImage(
//                                       'assets/images/un_focus_discount.png',
//                                     ),
//                                   ),
//                                   label: Text('Price'),
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     primary: Color(0xFFEFEBE9),
//                                     onPrimary: Color(0xFF3C3C3C),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 margin: const EdgeInsets.only(right: 10.0),
//                                 child: ElevatedButton.icon(
//                                   icon: Image(
//                                     image: AssetImage(
//                                       'assets/images/un_focus_dollar-sign.png',
//                                     ),
//                                   ),
//                                   label: Text('Promo'),
//                                   onPressed: () {},
//                                   style: ElevatedButton.styleFrom(
//                                     primary: Color(0xFFEFEBE9),
//                                     onPrimary: Color(0xFF3C3C3C),
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(12.0),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: _foundUsers.isNotEmpty
//                               ? ListView.builder(
//                                   itemCount: _foundUsers.length,
//                                   itemBuilder: (context, index) => Card(
//                                     elevation: 1,
//                                     margin:
//                                         const EdgeInsets.symmetric(vertical: 2),
//                                     child: ListTile(
//                                       leading: CircleAvatar(
//                                         radius: 30.0,
//                                         backgroundImage: NetworkImage(
//                                             _foundUsers[index]['image']),
//                                         backgroundColor: Colors.transparent,
//                                       ),
//                                       title: Text(_foundUsers[index]['name']),
//                                       subtitle:
//                                           Text('${_foundUsers[index]["des"]}'),
//                                     ),
//                                   ),
//                                 )
//                               : const Text(
//                                   'No results found Please try with diffrent search',
//                                   style: TextStyle(fontSize: 24),
//                                 ),
//                         )
//                       ],
//                     )),
//                   ),
//                   Center(
//                     child: Text(
//                       'Screen 2',
//                     ),
//                   ),
//                   Center(
//                     child: Text(
//                       'Screen 3',
//                     ),
//                   ),
//                 ],
//                 controller: _tabController,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
