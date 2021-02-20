#' dps
#'
#' @export
dps <- function(ip, user, key) {
  system(paste0("ssh -i ", key, " ", user, "@", ip, " ps -u ubuntu'"))
}

#dps("Marc", nu::c1, "ubuntu", "~/.ssh/GROUP-Modelling.pem")
