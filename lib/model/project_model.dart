class ProjectModel {
  final String projectTitle, projectDescription;
  final String? projectDisplayImage;

  ProjectModel(
      {required this.projectTitle,
      required this.projectDescription,
      this.projectDisplayImage});
}
