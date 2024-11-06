pipeline {
  agent any 
  tools {
    maven 'Maven' // Remplacez par le nom exact configuré dans Jenkins
  }
  stages {
    stage("Clean up") {
      steps {
        deleteDir()
      }
    }
    stage("Clone repo") {
      steps {
        sh "git clone https://github.com/SabaHm123/exBackend.git"
      }
    }
    stage("Generate backend image") {
      steps {
        dir("exBackend/backend") {
          sh "mvn clean install"
          sh "docker build -t backend ."
        }
      }
    }
    stage("Run docker compose") {
      steps {
        dir("exBackend/backend") {
          sh "docker compose up -d"
        }
      }
    }
  }
}
