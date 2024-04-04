# Selecciona las línias de código y pulsa Run.

# Instalación de páquetes
packages <- c('DBI', 'duckdb', 'here', 'usethis', 'dplyr', 'dbplyr', 'SqlRender', 'remotes')
install.packages(packages)

# Comprobación
source('check_packages.R')
check_packages(packages)
