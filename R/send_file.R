send_file <- function(file, ip, dir, user, key) {
  system(paste0("sftp -i ", key, " ", user, "@", ip, ":", dir, " <<< $'put ", file, "'"))
}

#send_file("colocations.R", nu::c1, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem")
#parallel::mclapply(c(nu::c1, nu::c4), function(x) nu::send_file("colocations.R", x, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem"), mc.cores = 2)
