MAC_INCLUDE=/usr/local/share/latex-mk/latex.gmk
LINUX_INCLUDE=/usr/share/latex-mk/latex.gmk
NAME=proyecto
TEXSRCS= ambitoyobjetivos.tex \
analisisderequisitos.tex \
conclusiones.tex \
diseno.tex \
glosario.tex \
implementacion.tex \
introduccion.tex \
manuales.tex \
agradecimientos.tex \
portada.tex 


USE_PDFLATEX=true

ifeq (exists,$(shell [ -f $(LINUX_INCLUDE) ] && echo exists ))
include $(LINUX_INCLUDE)
endif

ifeq (exists,$(shell [ -f $(MAC_INCLUDE) ] && echo exists ))
include $(MAC_INCLUDE)
endif
