#' ddir
#'
#' @export
ddir <- function(dir, ip, user, key) {
  system(paste0("ssh -i ", key, " ", user, "@", ip, " ", "'cd ", dir, "; ", "dir -l'"))
}

#top("Marc", nu::c1, "ubuntu", "~/.ssh/GROUP-Modelling.pem")
