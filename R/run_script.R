#' Run a script on a server
#'
#' @export
run_script <- function(file, ip, dir, user, key) {
  system(paste0("ssh -i ", key, " ", user, "@", ip, " ", "'cd ", dir, "; ", "Rscript ", file, "'"))
}

#run_script("colocations.R", nu::c1, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem")
#parallel::mclapply(c(nu::c1, nu::c4), function(x) nu::run_script("colocations.R", x, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem"), mc.cores = 2)
