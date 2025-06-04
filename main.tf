terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

provider "local" {
  
}

# simple file resource
# 'tasks' = the local name
resource "local_file" "tasks" {
  content = "# My Tasks\nOranges are orange\nBananas are not"
  filename = "${path.module}/my_tasks.md"
}