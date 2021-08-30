FROM rocker/rstudio:3.6.0

# Install R packages
RUN R -e "install.packages('BiocManager')"
RUN R -e "install.packages('shiny')"
RUN R -e "install.packages('ggplot2')"
RUN R -e "install.packages('data.table')"
RUN R -e "install.packages('shinyjs')"
RUN R -e "install.packages('gtools')"
RUN R -e "install.packages('dplyr')"
RUN R -e "install.packages('DT')"


USER root
RUN apt-get update && apt-get install -y \
    libz-dev \
    libcurl4-openssl-dev \
    libpng-dev \
    zlib1g-dev \
    libjpeg-dev \
    libxml2-dev \
    libmagick++-dev \
    libudunits2-dev
# sudo apt-get install zlib1g-dev

# Needs to be run after apt-get...
RUN R -e "BiocManager::install('phyloseq')"
RUN R -e "BiocManager::install('DESeq2')"
RUN R -e "install.packages('rbiom', repos = 'http://cran.us.r-project.org')"
RUN R -e "install.packages('phytools')"
RUN R -e "install.packages('profvis')"
RUN R -e "install.packages('plotly')"



EXPOSE 8787

CMD ["/init"]