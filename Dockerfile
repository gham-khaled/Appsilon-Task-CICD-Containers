FROM rocker/shiny
COPY app.R ./
EXPOSE 3838
CMD ["Rscript", "app.R"]