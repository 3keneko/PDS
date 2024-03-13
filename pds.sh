#!/usr/bin/env sh

minimon() {
    if [ "$1" == "simulate" ]; then
        `cd minimon/.stack-work/dist/x86_64-linux/ghc-9.6.4/build/minimon-exe && ./minimon-exe $1 $2 && xdg-open tour_res.png && cd -`
    else
        cd minimon/.stack-work/dist/x86_64-linux/ghc-9.6.4/build/minimon-exe && ./minimon-exe $1 $2 && cd -
    fi
}

music() {
    `python3 markovmusic/genere_musique.py $1 && timidity markovmusic/output.mid`
}

hmm() {
    python3 HMM/src/main.py
}

monopoly() {
    python3 monopoly_markov/App/main.py
}
