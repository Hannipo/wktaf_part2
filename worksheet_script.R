library(icesTAF)

taf.skeleton()

draft.data(
  data.files = NULL,
  data.scripts = c("sam_data", "sam_fit"),
  originator = "WGBFAS",
  title = c("SAM input data for ...", "SAM fitted object for ..."),
  year = 2021,
  period = "1985-2020",
  file = TRUE,
  append = FALSE
)

taf.boot()
taf.boot(taf = TRUE)


### adding some software ####
taf.skeleton.sa.org("temp", stockname = "WBCod_2021_cand01")


devtools::install_github("ices-tools-prod/icesDatras")
draft.software("icesDatras")
#fetching an older version from github
devtools::install_github("ices-tools-prod/icesDatras@development")


remotes::install_github("r4ss/r4ss")
draft.software("r4ss", file = TRUE)

taf.boot()
