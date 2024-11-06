pipeline {
  agent any 
  tools {
    maven 'maven'
  }
  stages {
    stage ("Clean up"){
      steps {
        deleteDir()
      }
    }
    stage ("Clone repo"){
      steps {
        sh "git clone https://github.com/SabaHm123/exBackend.git"
      }
    }
      stage ("Generate backend image"){
        steps {
          dir ("backend"){
            sh "mvn clean install"
            sh "docker build -t backend ."
          }
        }
      }
      stage ("Run docker compose"){
        steps {
          dir("backend"){
            sh " docker compose up -d"
          }
        }
        }
      }
    }
}
