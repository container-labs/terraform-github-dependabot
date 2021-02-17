
locals {
  bot_yaml = templatefile(
    "${path.module}/files/${var.dependabot_for}/dependabot.yml.tpl",
    {
      directory = var.dependabot_directory
    }
  )
}

resource "github_repository_file" "dependabot" {
  repository          = var.repository
  branch              = "main"
  file                = ".github/dependabot.yml"
  content             = local.bot_yaml
  overwrite_on_create = true
}