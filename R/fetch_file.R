#' Fetch a file from a server
#'
#' @export
fetch_file <- function(file, ip, dir, user, key) {
  system(paste0("sftp -i ", key, " ", user, "@", ip, ":", dir, " <<< $'get ", file, "'"))
}

#fetch_file("sim1.rds", nu::c1, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem")
