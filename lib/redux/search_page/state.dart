import 'package:shop_flutter_app/components/cart/cart_fake_data.dart';
import 'package:shop_flutter_app/components/product_card.dart';
import 'package:shop_flutter_app/models/cart_product.dart';
import 'package:shop_flutter_app/models/product.dart';

class SearchPageState {
  static SearchPageState initState = SearchPageState(
    isLoading: false,
    isError: false,
    results: [],
  );

  bool isLoading;
  bool isError;
  List<Product> results;

  SearchPageState({
    this.isLoading = false,
    this.isError = false,
    required this.results,
  });

  SearchPageState copyWith({
    bool? isLoading,
    bool? isError,
    List<Product>? results,
  }) =>
      SearchPageState(
        isLoading: isLoading ?? this.isLoading,
        isError: isError ?? this.isError,
        results: results ?? this.results,
      );
}
