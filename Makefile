MAC_INCLUDE=/usr/local/share/latex-mk/latex.gmk
LINUX_INCLUDE=/usr/share/latex-mk/latex.gmk
NAME=proyecto
TEXSRCS= introduccion.tex \
agradecimientos.tex \
portada.tex \
abreviaturas.tex \
entornoHW.tex \
softwareControl.tex

USE_PDFLATEX=true

ifeq (exists,$(shell [ -f $(LINUX_INCLUDE) ] && echo exists ))
include $(LINUX_INCLUDE)
endif

ifeq (exists,$(shell [ -f $(MAC_INCLUDE) ] && echo exists ))
include $(MAC_INCLUDE)
endif
