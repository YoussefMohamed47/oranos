import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oranostask/models/experts_type_model.dart';
import 'package:oranostask/utils/app_images.dart';
import 'package:oranostask/view_model/home_controller_state.dart';

class HomeControllerCubit extends Cubit<HomeControllerState> {
  HomeControllerCubit() : super(HomeControllerInitial());
  List<String> namesList = [
    'Lance',
    'Niles',
    'Samuel',
    'Hilary',
    'Hanson',
  ];
  List<ExpertsTypesModels> expertsSectionList = [
    ExpertsTypesModels(
        imgPath: AppImages.itPictureImg,
        expertsNumber: 23,
        expertType: "Information Technology"),
    ExpertsTypesModels(
        imgPath: AppImages.supplyChainImg,
        expertsNumber: 12,
        expertType: "Supply Chain"),
    ExpertsTypesModels(
        imgPath: AppImages.securityImg,
        expertsNumber: 14,
        expertType: "Security"),
    ExpertsTypesModels(
        imgPath: AppImages.hrImg,
        expertsNumber: 8,
        expertType: "Human Resources"),
    ExpertsTypesModels(
        imgPath: AppImages.immigantionImg,
        expertsNumber: 18,
        expertType: "Immigration"),
    ExpertsTypesModels(
        imgPath: AppImages.translationImg,
        expertsNumber: 3,
        expertType: "Translation"),
  ];
}
