check_packages <-function(packages){
vector <- c(1:NROW(packages))
warn <- c(1:NROW(packages))
for(i in 1:NROW(packages)){
  dir <- system.file(package=packages[i])
  vector[i] <- dir
  if(dir!=""){
    print(paste(packages[i], "se ha instalado correctamente"))
    warn[i] <- 1}
  else{
    print(paste(packages[i], "no se ha podido instalar"))
    warn[i] <- 0}
}

if(any(warn==0)){
  print(paste0("Algun paquete no se ha instalado correctamente. Por favor, vuelve a intentarlo y/o ponte en contacto con los coordinadores del curso."), quote = FALSE, encoding = "UTF-8")
} else {
  print(paste0("Todos los paquetes se han instalado correctamente. Ya tienes el ordenador preparado para el curso!"), quote = FALSE, encoding = "UTF-8")}

}
