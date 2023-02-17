cin = file("test/sample1.toml",open="r")
lines = readLines(cin)
close(cin)

sep = "\n"
str = paste0(lines, collapse=sep)

#' TOML perser function
#'
#' TOML perser which read lines as much as need for create one object and return unused lines
#' @param lines A character sequence of TOML for each line
#' @return list; obj: generated object by the read, lines: unused lines.
toml_perser = function(lines){
  obj =NULL
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

from_toml = function(str, sep="\n"){
  lines_list = strsplit(str,sep,fixed=TRUE)
  for(li in 1:length(lines_list)){
    lines = lines_list[[li]]

    eval("lines")
  }
}

to_toml = function(obj, sep="\n"){
}

read_toml = function(file){}

write_toml = function(obj, file){}
