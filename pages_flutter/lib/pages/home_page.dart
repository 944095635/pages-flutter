import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pages_flutter/pages/vetcare/vetcare_login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demos"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 9 / 21,
        ),
        children: [
          _buildItem(
            "assets/images/vetcare/VetCare.png",
            "Vet Care 宠物护理",
            onTap: () {
              toDemo(const VetcareLoginPage());
            },
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
    String image,
    String name, {
    Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(name),
          ),
        ],
      ),
    );
  }

  /// 跳转到Demo页面
  void toDemo(Widget page) {
    Get.to(() => page);
  }
}
