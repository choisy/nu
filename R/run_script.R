run_script <- function(file, ip, dir, user, key) {
  system(paste0("ssh -i ", key, " ", user, "@", ip, " ", "'cd ", dir, "; ", "Rscript ", file, "'"))
}


#run_script("colocations.R", nu::c1, "Marc", "ubuntu", "~/.ssh/GROUP-Modelling.pem")
