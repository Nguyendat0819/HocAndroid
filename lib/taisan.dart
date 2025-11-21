import 'package:flutter/material.dart';

class TaiSan extends StatefulWidget {
  const TaiSan({super.key});

  @override
  State<TaiSan> createState() => _TaiSanState();
}

class _TaiSanState extends State<TaiSan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'chi tiết tài sản ',
        ),
        backgroundColor: Colors.blue,
        // automaticallyImplyLeading: false,  nó sẽ tắt cái sinh  tự động của nút quay lại
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back
            )
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              'Đây là trang chi tiết tài sản',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
