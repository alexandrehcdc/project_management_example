alias ProjectManagementExample.Repo
alias ProjectManagementExample.Management.Project

Repo.insert! %Project{
  title: "Super cool project!",
  description: "This project is the best project ever."
}

Repo.insert! %Project{
  title: "Okay project",
  description: "Okayish."
}

Repo.insert! %Project{
  title: "Bad project!",
  description: "This project is the worst project ever."
}