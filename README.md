# ml-study-phys

Repository for studying [this book](https://www.amazon.co.jp/%E8%A9%B3%E8%A7%A3-%E3%83%87%E3%82%A3%E3%83%BC%E3%83%97%E3%83%A9%E3%83%BC%E3%83%8B%E3%83%B3%E3%82%B0-TensorFlow%E3%83%BBKeras%E3%81%AB%E3%82%88%E3%82%8B%E6%99%82%E7%B3%BB%E5%88%97%E3%83%87%E3%83%BC%E3%82%BF%E5%87%A6%E7%90%86-%E5%B7%A3%E7%B1%A0-%E6%82%A0%E8%BC%94/dp/4839962510).

## Environment
- Local: Mac where Google Cloud SDK is installed
- Server: Cloud Platform, Compute Engine

## Set up
- SSH login to an instance
  ```
  gcloud compute ssh --project=[project name] --zone=[region] [instance name] -- -L [host port]:localhost:[instance port]
  ```

- Basic set up in the instance
  ```
  sudo apt-get update
  sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo apt-key fingerprint 0EBFCD88
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  sudo apt-get update
  sudo apt-get install docker-ce
  ```
  Check the docker environment:
  ```
  sudo docker run hello-world
  ```

- Build a docker environment and start analysis <br>
  In the instance:
  ```
  git clone https://github.com/yoheikikuta/ml-study-phys.git
  cd ml-study-phys
  sudo docker build -t [image tag] -f ./Dockerfile .
  sudo docker run -it -p [instance port]:8888 -v $PWD:/work --name [container name] [image tag]
  ```
  Launch jupyter in the contaienr:
  ```
  bash launch-notebook.sh
  ```
  Access to `localhost:[host port]` on your local browser.
