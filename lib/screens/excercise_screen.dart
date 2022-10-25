import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:muscle_magic/networking/fetch_api.dart';

class ExcerciseScreen extends StatefulWidget {
  const ExcerciseScreen({Key? key}) : super(key: key);

  @override
  State<ExcerciseScreen> createState() => _ExcerciseScreenState();
}

class _ExcerciseScreenState extends State<ExcerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Excercise")),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
              //future: fetchAPI(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: snapshot.data.length!,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        title: Container(
                          margin: const EdgeInsets.all(10.0),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              CachedNetworkImage(
                                imageUrl: snapshot.data[index]?.gifUrl,
                                height: 70,
                                width: 70,
                                // placeholder: (context, url) =>
                                //     const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              Expanded(
                                child: Text(
                                  snapshot.data[index]?.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        tileColor: const Color(0xFF243B53),
                      );
                    }),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
