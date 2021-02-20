run_script_bg <- function(file, ip, dir, user, key) {
  dev_null <- callr::r_bg(function() run_script(file, ip, dir, user, key))
}

#run_script-bg("colocations.R", nu::c1, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem")
#parallel::mclapply(c(nu::c1, nu::c4), function(x) nu::run_script("colocations.R", x, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem"), mc.cores = 2)
