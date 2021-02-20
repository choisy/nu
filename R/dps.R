#' dps
#'
#' @export
dps <- function(dir, ip, user, key) {
  system(paste0("ssh -i ", key, " ", user, "@", ip, " ", "'cd ", dir, "; ", "ps -u ubuntu'"))
}

dps("Marc", nu::c1, "ubuntu", "~/.ssh/GROUP-Modelling.pem")
