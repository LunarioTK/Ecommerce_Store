import 'package:ecommerce_store/models/produto.dart';
import 'package:ecommerce_store/services/database.dart';
import 'package:ecommerce_store/utils/clothes_box.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProdutList extends StatefulWidget {
  const ProdutList({super.key});

  @override
  State<ProdutList> createState() => _ProdutListState();
}

class _ProdutListState extends State<ProdutList> {
  DatabaseServices produto = DatabaseServices();
  late final ProdutoModel produtoModel;
  List<Reference> refs = [];
  List<String> files = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    loadingImage();
  }

  loadingImage() async {
    refs = (await produto.storage.ref('images').listAll()).items;
    for (var ref in refs) {
      files.add(await ref.getDownloadURL());
    }
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final produtProvider = Provider.of<List<ProdutoModel>?>(context) ?? [];
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : files.isEmpty
              ? const Center(
                  child: Text('No files found'),
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: produtProvider.length,
                  itemBuilder: ((context, index) {
                    return SingleChildScrollView(
                        child: ClothesCard(
                      produto: produtProvider[index],
                    ));
                  })),
    );
  }
}
