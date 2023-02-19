cin = file(,open="rb")
lines = readLines(cin)
close(cin)



readBin(cin, "raw",100)
lines <- scan("test/sample1.toml", what = character(), sep = NULL, blank.lines.skip = F)
sep = "\n"
str = paste0(lines, collapse=sep)
as_toml_vector = function(value){
  class(value) = c(class(value),"toml_vector")
  return(value)
}
strseq = strsplit(str,"")[[1]]
for(i in 1:length(strs)){
  cat(strs[i])
}
#' TOML perser function
#'
#' TOML perser which read lines as much as need for create one object and return unused lines
#' @param lines A character sequence of TOML for each line
#' @return list; obj: generated object by the read, lines: unused lines.
toml_perser = function(lines){
  mode = "#"

  for(i in 1:length(strseq)){
    c = strseq[i]

    if(mode=="#"){
      if(c==0)
    }
  }
  while(nrow(lines)){
    # in case Skip
    lines = lines[-1]


    # in case Table
    perse = toml_perser(lines)
    this_obj = perse$obj
    lines = perse$lines
  }

  return(list(obj = obj, lines=lines))
}

from_toml = function(str, sep=NULL){
  if(is.null(sep)){
    if(Sys.info()[["sysname"]]=="Windows")sep="\r\n"
    else sep = "\n"
  }

  space = c("\u0009","\u0020")
  chars = strsplit(str,"")[[1]]
  mode = ""
  for(c in chars){
    if(mode==""){

    }else if(mode=="")
  }
}

to_toml = function(obj, sep=NULL){
  if(is.null(sep)){
    if(Sys.info()[["sysname"]]=="Windows")sep="\r\n"
    else sep = "\n"
  }
}

read_toml = function(file){
  from_toml(readChar(file, file.info(file)$size))
}

write_toml = function(obj, file){
  writeChar(to_toml(obj),file,eos=NULL)
}
