#!groovy
import jenkins.model.Jenkins

node {
  def buildNumber = env.BUILD_NUMBER
  // PRINT ENVIRONMENT TO JOB
  echo "BUILD-NUMBER: $buildNumber"

  stage ("pull code") {
    checkout scm
  }

  stage ("docker build") {
    echo("do build")
    sh 'docker build . -t build-server-sanity:1.3.0'
  }

  stage ("lint & test") {
      parallel "lint": {
        sh 'docker run -i --rm -v $PWD:/srv/package -u root build-server-sanity:1.3.0 npm run lint'
        },
        "unit": {
          sh 'docker run -i --rm -v $PWD:/srv/package -u root build-server-sanity:1.3.0 npm run test'
        }
  }
}
