class RecommendedDoctor {
  final String name, speciality, institute, image,reviews;

  const RecommendedDoctor({
    required this.name,
    required this.speciality,
    required this.institute,
    required this.image,
    required this.reviews,
  });
}

const List<RecommendedDoctor> demo_recommended_doctor = [
  RecommendedDoctor(
    name: "Dr. Salina Zaman",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Salina_Zaman.png",
    reviews:"2.05K",
  ),
  RecommendedDoctor(
    name: "Dr. Serena Gome",
    speciality: "Medicine Specialist ",
    institute: "Good Health Clinic",
    image: "assets/images/Serena_Gome.png",
    reviews:"100K",
  ),
  RecommendedDoctor(
    name: "Dr. Salina Zaman",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Salina_Zaman.png",
    reviews:"2K",
  ),
  RecommendedDoctor(
    name: "Dr. Asma Khan",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Asma_Khan.png",
    reviews:"3.5K",
  ),
  RecommendedDoctor(
    name: "Dr. Salina Zaman",
    speciality: "Medicine & Heart Spelist",
    institute: "Good Health Clinic",
    image: "assets/images/Salina_Zaman.png",
    reviews:"2.5K",
  ),
];
