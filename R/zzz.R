.onAttach <- function(lib, pkg) {
    dcf <- read.dcf(file.path(lib, pkg, "DESCRIPTION"))
    msg <- gettextf("%s (%s)", dcf[, "Title"],
                    as.character(dcf[, "Version"]))
    packageStartupMessage(paste(strwrap(msg), collapse = "\n"))
}

sadsa
