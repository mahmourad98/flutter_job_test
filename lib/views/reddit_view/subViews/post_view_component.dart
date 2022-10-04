import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PostViewComponent extends HookWidget{
  final String thumbnailImageUrl;
  final String title;
  final String description;
  final void Function()? onTap;

  const PostViewComponent({
    required this.thumbnailImageUrl,
    required this.title,
    required this.description, Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context,).size.width,
        height: MediaQuery.of(context,).size.height * 0.16,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0,),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2,),
              spreadRadius: 2.0,
              blurRadius: 18.0,
            ),
          ],
        ),
        margin: const EdgeInsetsDirectional.only(
          start: 14.0, end: 14.0, top: 10.0, bottom: 10.0,
        ),
        padding: const EdgeInsetsDirectional.only(
          start: 24.0, end: 24.0, top: 18.0, bottom: 18.0,
        ),
        child: SizedBox.expand(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 3,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0,),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: thumbnailImageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Spacer(),
              Flexible(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox.fromSize(size: const Size.fromHeight(10.0,),),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              description,
                              style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}