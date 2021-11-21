pid_file = "/tmp/pidfile"

auto_auth {
  method "kubernetes" {
    mount_path = "auth/jwt"
    config = {
      role = "docker-compose"
    }
  }

  sink "file" {
    config = {
      path = "/tmp/token"
    }
  }
}