# run using docker
docker build -t advanced-operating-systems-image .
docker run --name advanced-operating-systems-container -d -p 11434:11434 -p 8000:8000 -v $(pwd):/code advanced-operating-systems-image

#connect to turborepo
git subtree add --prefix=apps/advanced-operating-systems https://github.com/valiantlynx/advanced-operating-systems.git main --squash
git subtree pull --prefix=apps/advanced-operating-systems https://github.com/valiantlynx/advanced-operating-systems.git main --squash
git subtree push --prefix=apps/advanced-operating-systems https://github.com/valiantlynx/advanced-operating-systems.git main
