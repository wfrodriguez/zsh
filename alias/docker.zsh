#######################
# HELPER FUNCTIONS    #
#######################

# Docker Compose run
function fndocorun {
    docker-compose run $@
}

# Execute command in container
function fndoex {
    docker exec -it $1 ${2:-bash}
}

# Inspect container
function fndoin {
    docker inspect $1
}

# List IP address of containers
function fndoip {
    echo "Direcciones IP de todos los contenedores en ejecución"

    for DOC in `dnames-fn`
    do
        IP=`docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}} {{end}}' "$DOC"`
        OUT+=$DOC'\t'$IP'\n'
    done
    echo -e $OUT | column -t
    unset OUT
}

function fndolo {
    docker logs -f $1
}

function fndonames {
    for ID in `docker ps | awk '{print $1}' | grep -v 'CONTAINER'`
    do
        docker inspect $ID | grep Name | head -1 | awk '{print $2}' | sed 's/,//g' | sed 's%/%%g' | sed 's/"//g'
    done
}

function fndorme {
    docker rm $(docker ps --all -q -f status=exited)
}

function fndrmd {
    imgs=$(docker images -q -f dangling=true)
    [ ! -z "$imgs" ] && docker rmi "$imgs" || echo "Sin imágenes sueltas."
}

function fndorun {
    docker run -it $1 $2
}

function fndotop {
    docker stats --format "table {{.Container}}\t{{.Name}}\t{{.CPUPerc}}  {{.MemPerc}}\t{{.NetIO}}\t{{.BlockIO}}"
}

function fndostats {
    docker stats --no-stream;
}

alias dok='docker'
alias doim="docker images"
alias dops="docker ps"
alias dopsa="docker ps -a"
alias dosp="docker system --all"
alias dosa="docker stop $(docker ps -a -q)"
alias doser="docker service"
alias dovol="docker volumne"
alias doco='docker-compose'
alias docou="docker-compose up -d"
alias docod="docker-compose down"
alias dopull='docker pull'
alias doprune='docker system prune'
alias dofind='dockerFind'
alias docorun=fndocorun
alias doex=fndoex
alias doin=fndoin
alias doip=fndoip
alias dolo=fndolo
alias donames=fndonames
alias dorme=fndorme
alias drmd=fndrmd
alias dorun=fndorun
alias dotop=fndotop
alias dostats=fndostats
