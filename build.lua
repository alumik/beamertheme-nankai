module = "beamerthemeNankai"

typesetexe = "xelatex"
unpackexe = "xelatex"
makeindexexe = "zhmakeindex"

typesetopts = "-shell-escape -file-line-error -halt-on-error -interaction=nonstopmode -synctex=1"

docfiles = {
  "sample.tex",
}
typesetfiles = {
  "beamerthemeNankai.dtx",
  "sample.tex",
}

checkengines = {
  "xetex",
}
checkruns = 3
