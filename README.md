# openshift-python-sample

## Docker Image

해당 소스로 만든 Docker Image는 Docker Hub에 `/snowdeer/python-sample:latest`로 올려져 있습니다.

<br>

## OpenShift에 올리는 방법

OpenShift에 올리는 방법은 크게 2가지 방법이 있습니다.

* GitHub에서 소스를 이용해서 배포하는 방법
* `yaml` 파일을 이용해서 배포하는 방법

<br>

## GitHub에서 소스를 이용해서 배포하는 방법

소스를 이용해서 배포하는 방법은 다음과 같습니다.

~~~
$ oc new-app https://github.com/snowdeer/openshift-python-sample.git --name python-sample
~~~

이 경우 OpenShift에서 해당 경로의 소스를 가져와서 소스 안의 `Dockerfile`을 이용해서 Docker 이미지를 빌드하고, OpenShift 내의 Docker Registry에 등록을 한 다음 배포까지 해줍니다.

<br>

## yaml 파일을 이용해서 배포하는 방법

`yaml` 파일을 이용하는 경우 다음과 같이 배포할 수 있습니다.

~~~
$ oc create -f ./openshift/deployment-using-docker-image.yaml
deployment "python-sample" configured
service "python-sample" created
~~~

`-f` 옵션은 파일에서 `yaml` 파일을 불러온다는 뜻입니다. 

위 예제 코드는 `deployment-using-docker-image.yaml` 파일 내의 설정에 따라 프로젝트를 배포하게 됩니다. 예제로 `Deployment`와 `Service`를 등록해놓았습니다.