#!/usr/bin/env sh

minimon() {
    if [ "$1" == "n" ]; then
        `cd minimon && stack run $1 $2 && xdg-open ~/minimon/tour_res.png`
    else
        `cd minimon && stack run $1 $2`
    fi
}

music() {
    `cd markovmusic && python3 genere_musique.py`
}

hmm() {
    cd HMM/src && python3 main.py && cd -
}

monopoly() {
    python3 monopoly_markov/App/main.py
}
