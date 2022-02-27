docker build -t react-docker:1.0.0-dev .

docker run --rm -it --name web -p 3000:3000 react-docker:1.0.0-dev

docker run --rm -it --name web -p 3000:3000 -v $(pwd):/src react-docker:1.0.0-dev


docker build -t react-docker:1.0.0-prod .

docker run --rm -it --name web -p 3000:80 react-docker:1.0.0-prod
