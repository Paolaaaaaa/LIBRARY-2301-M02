########################################################################
######					TTDE-ADSD Main Makefile						####
######	Fredy Enrique Segura-Quijano fsegura@uniandes.edu.co		####   
######																####   
######This file includes general rules to construct course material ####
######				MODIFICADO: Julio de 2014 - FES					####   
########################################################################
#
# TTDE-ADSD
# Copyright (C) 2014 Bogotá, Colombia
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, version 3 of the License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#/
#/*
# ______ _  __    _  _  __ _ 
#  |  | | \|_ ---|_|| \(_ | \
#  |  | |_/|__   | ||_/__)|_/
# 
# http://patorjk.com/software/taag (bigfig style)
#
# ℱ®€∂¥ §€❡µ®a✏ℚµḯנaηø
#*/
#############################################################################

TEXFILES=$(wildcard *.tex)
TARGETS=$(patsubst %.tex,%.pdf,$(TEXFILES))
SRCDIR = .
MAINDOC	= main
TEXSRC	= $(MAINDOC).tex

DIRN = 1 # Default
EXN = 1 # Default

RERUN = "(There were undefined references|Rerun to get (cross-references|the bars) right|Table widths have changed. Rerun LaTeX.|Linenumber reference failed)"
RERUNBIB = "No file.*\.bbl|Citation.*undefined"

all: pdf

clean:
	@rm -f $(SRCDIR)/*.aux $(SRCDIR)/*.bbl $(SRCDIR)/*.blg $(SRCDIR)/*.log \
	$(SRCDIR)/*.dvi $(SRCDIR)/*.out $(SRCDIR)/*.nav $(SRCDIR)/*.snm *~ *backup  \
	$(SRCDIR)/*.idx $(SRCDIR)/*.ilg $(SRCDIR)/*.ind $(SRCDIR)/*.toc $(SRCDIR)/*.lot \
	$(SRCDIR)/*.lof $(MAINDOC).pdf *bak 

pdf:
	pdflatex $(TEXSRC)
	makeindex main.idx -s StyleInd.ist
	bibtex $(MAINDOC)
	pdflatex main x 2
	pdflatex main x 2

reduce:
	pdftk main.pdf cat 37-47 output main_hard2soft.pdf
