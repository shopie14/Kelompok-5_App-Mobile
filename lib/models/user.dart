class User {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String? profileImage;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    this.profileImage,
    this.phoneNumber,
  });

  factory User.dummy() {
    return User(
      id: 2006,
      name: "Kelompok 5",
      userName: "wibuuu.is",
      email: "nim@itg.ac.id",
      profileImage:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgWmbJ3C3OaZ5R5_k5gedfywbLbuZbgsHiQuBIr2S6wCMF9Vri_DgXwIp3Cp3I4j_NQQg&usqp=CAU",
      phoneNumber: "081224501871",
    );
  }
}
