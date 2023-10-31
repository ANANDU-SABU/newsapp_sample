import 'package:flutter/material.dart';
import 'package:news_app_anandu/models/useremodels.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key, required this.newarticle});
  final Article newarticle;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text("read more"),
          onPressed: () {
            launchUrl(Uri.parse(widget.newarticle.url.toString()),
                mode: LaunchMode.externalApplication);
          }),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 1,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage(widget.newarticle.urlToImage.toString()),
                      fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                    child: Text(
                  widget.newarticle.title.toString(),
                  maxLines: 1,
                  style: const TextStyle(fontSize: 18),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(widget.newarticle.publishedAt.toString()
                      ),
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {
                      Share.share(widget.newarticle.url.toString());
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(widget.newarticle.content.toString()),
            )

          ],
        ),
      ),
    ));
  }
}