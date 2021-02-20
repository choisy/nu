
<!-- README.md is generated from README.Rmd. Please edit that file -->

# nu

<!-- badges: start -->

<!-- badges: end -->

## Installation

``` r
# install.packages("remotes")
remotes::install_github("choisy/nu")
```

## Packages

Everything below relies on the use of the `remoter` package. Load it:

``` r
library(nu)
```

## Looking at the list of files in a directory on the remote server

``` r
nu::ddir(dir = "Marc", ip = nu::c1, user = "ubuntu", key = "~/.ssh/GROUP-Modelling.pem")
```

where `dir` is the name of the directory on the remote server we want to
look at, `ip` is the IP address of the remote server, `user` is the user
name for the SSH connectionn, and `key` is the path on your local
computer to the key for the SSH connection.

## Looking at the list of running processes on the remote server

``` r
nu::dps(ip = nu::c1, user = "ubuntu", key = "~/.ssh/GROUP-Modelling.pem")
```

with the same definitions of the arguments as for `nu::ddir()`

## Sending a file to the remote server

``` r
send_file(file = "my_script.R", ip = nu::c1, dir = "Marc", user = "ubuntu", key = "~/.ssh/GROUP-Modelling.pem")
```

where `file` is the name of the file you want to send. This file has to
be in your working directory. `dir` is the name of the directory on the
remote server where you want to send this file. Note that this directory
needs to exist. The definition of the other arguments are the same as
for `nu::ddir()``nu::ddir()`.

## Running a script on the remote server

The function you should use for that is `run_script_bg()`:

``` r
run_script_bg(file = "my_script.R", ip = nu::c1, dir = "Marc", user = "ubuntu", key = "~/.ssh/GROUP-Modelling.pem")
```

`dir` indicates where you want to run your R session on the remote
server. This is important as it determines where your files
(e.g. calculations results) will be saved. The definition of the other
arguments are the same as for `nu::ddir()``nu::ddir()`.

## Bringing a file from the remote server to your local computer

``` r
fetch_file(file = "sim1.rds", ip = nu::c1, dir = "Marc", user = "ubuntu", key = "~/.ssh/GROUP-Modelling.pem")
```

where `file` is the name of the file of the `dir` directory that you
want to bring to your local computer. The definition of the other
arguments are the same as for `nu::ddir()``nu::ddir()`.
