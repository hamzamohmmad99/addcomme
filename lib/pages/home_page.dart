import 'package:brforetest_app/res/all_assets.dart';
import 'package:brforetest_app/res/all_colors.dart';
import 'package:brforetest_app/service/services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List result = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorone,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: CommentsSerivceImp().getcomment(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: colortow,
                ),
              );
            } else if (snapshot.hasData) {
              result = snapshot.data!;
              return ListView.builder(
                itemCount: result.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 100),
                        Container(
                          height: 85,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(
                                rectangl,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '24 / 5 / 2024',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:  [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            result[index].name,
                                            style: const TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 60),
                                          child: Text(
                                            result[index].description,
                                            style: const TextStyle(
                                              color: Colors.blueAccent,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              return const Center(
                child: Text('No data available'),
              );
            }
          },
        ),
      ),
    );
  }
}
