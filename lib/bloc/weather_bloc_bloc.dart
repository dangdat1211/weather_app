import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherBlocLoading());
      try {
        WeatherFactory wf = WeatherFactory("API_KEY", language: Language.ENGLISH);
        Position pos =  await Geolocator.getCurrentPosition();
        Weather we = await wf.currentWeatherByLocation(
          pos.latitude, 
          pos.longitude
        );
        emit(WeatherBlocSuccess(we));
      }
      catch (e) {
        emit(WeatherBlocFailture());
      }
    });
  }
}





