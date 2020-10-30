import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import 'Movie.dart';

class HttpHelper {
  //final String uri = 'https://api.themoviedb.org/3/movie/550?api_key=89db676e08b3729fa899366e9ee46f2f&language=en-US&page=1';
  String urlDomain = 'https://api.themoviedb.org/3/movie/';
  String apiKey = 'api_key=89db676e08b3729fa899366e9ee46f2f';
  String urlLanguage = '&language=en-US';
  String urlPage = '&page=1';

  Future<List<Movie>> getPopularMovies() async{
    String typeOfQuery = 'popular?';
    String uri = urlDomain + typeOfQuery + apiKey + urlLanguage + urlPage;

    http.Response resp = await http.get(uri);

    if (resp.statusCode == 200){
      final decodedJsonMap = json.decode(resp.body);
      Movies movieList = new Movies.fromjsonList(decodedJsonMap['results']);
      return movieList.movies;
    }else{
      return null;
    }
  }

  /*Future<String> getMovieList() async {
    http.Response response = await http.get(uri);
    if(response.statusCode == HttpStatus.ok) {
      return response.body;
    }else{
      return 'Loading...';
    }
  }*/
}