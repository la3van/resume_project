FROM ubuntu:18.04
RUN apt update -y && apt install -y \
    texlive-latex-recommended \
    texlive-generic-recommended


WORKDIR /KOMARIK
RUN mkdir -p /KOMARIK/ResumeTex
COPY ResumeTex /KOMARIK/ResumeTex
CMD ["bash", "-c", "mkdir -p /KOMARIK/ResumeTex && pdflatex -interaction=nonstopmode -output-directory=ResumeTex ResumeTex/main.tex && bash"]