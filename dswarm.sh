docker build -t rushijadhao/demo:dock .
docker push rushijadhao/demo:dock
ssh admin@dmaster docker pull rushijadhao/demo:dock
ssh admin@dmaster docker service create -d --name dock -p 80:80 rushijadhao/demo:dock
ssh admin@dmaster docker service scale dock=3
ssh admin@dmaster docker service ps dock
