####### Dockerfile #######
FROM hlapp/rpopgen

COPY /Data /home/rstudio/Data

# Tinytex
#RUN wget -qO- \
#    "https://github.com/yihui/tinytex/raw/master/tools/install-unx.sh" | \
#    sh -s - --admin --no-path \
#  && mv ~/.TinyTeX /opt/TinyTeX \
#  && /opt/TinyTeX/bin/*/tlmgr path add \
#  && tlmgr install metafont mfware inconsolata tex ae parskip listings \
#  && tlmgr path add \
#  && Rscript -e "source('https://install-github.me/yihui/tinytex'); tinytex::r_texmf()" \
#  && chown -R root:staff /opt/TinyTeX \
#  && chmod -R g+w /opt/TinyTeX \
#  && chmod -R g+wx /opt/TinyTeX/bin \

# Install from github
RUN installGithub.r \
jgx65/hierfstat \
&& rm -rf /tmp/downloaded_packages/ /tmp/*.rds
