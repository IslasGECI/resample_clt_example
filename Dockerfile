FROM islasgeci/base:1.0.0
COPY . /workdir

RUN R -e "remotes::install_github('comprehenr', build_vignettes=FALSE, )"

