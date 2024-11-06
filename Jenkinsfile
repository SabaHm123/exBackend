pipeline {
  agent any 
  tools {
    maven 'Maven 3.8.6' // Remplacez par le nom exact configuré dans Jenkins
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
        dir("exBackend") { // Utilisez "exBackend" si le pom.xml est dans ce dossier
          sh "mvn clean install"
          sh "docker build -t backend ."
        }
      }
    }
    stage("Run docker compose") {
      steps {
        dir("exBackend") {
          sh "docker compose up -d"
        }
      }
    }
  }
}
