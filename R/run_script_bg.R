#' Run a script in the background
#'
#' Run a script in the background
#'
#' @importFrom callr r_bg
#'
#' @export
run_script_bg <- function(file, ip, dir, user, key) {
  r_bg(run_script, list(file = file, ip = ip, dir = dir, user = user, key = key))
}

#run_script_bg("colocations.R", nu::c1, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem")

#for (i in c(nu::c1, nu::c4)) {
#  nu::run_script_bg("colocations.R", i, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem")
#}

#parallel::mclapply(c(nu::c1, nu::c4), function(x) nu::run_script("colocations.R", x, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem"), mc.cores = 2)
