alias ProjectManagementExample.Repo
alias ProjectManagementExample.Management.Document

Repo.insert! %Document{
    name: "First Document",
    content: "Weak ass content.",
    view_count: 1,
    published: true,
    project_id: 1
  }

  Repo.insert! %Document{
    name: "Second Document",
    content: "Great content.",
    view_count: 3,
    published: false,
    project_id: 2
  }

  Repo.insert! %Document{
    name: "Third Document",
    content: "Okay content.",
    view_count: 0,
    published: true,
    project_id: 1
  }

  Repo.insert! %Document{
    name: "Fourth Document",
    content: "Nice",
    view_count: 2,
    published: true,
    project_id: 3
  }

  