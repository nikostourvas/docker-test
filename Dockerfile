####### Dockerfile #######
FROM hlapp/rpopgen

COPY /Data /home/rstudio/Data

# Install tinytex
RUN install2.r --error \
tinytex

# Rocker now uses TinyTex, which is quite stripped down, so we need to install extra packages
RUN tlmgr install \
  babel-english \
  psnfss \
  lineno \
  xcolor \
  preprint \
  fancyhdr \
  lastpage \
  titlesec \
  enumitem \
  microtype \
  lipsum \
  collection-fontsrecommended
