pipeline {
  agent any 
  tools {
    maven 'maven' // Assurez-vous que ce nom correspond à votre configuration Maven dans Jenkins
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
        dir("exBackend/backend") { // Assurez-vous que ce chemin est correct
          sh "mvn clean install"
          sh "docker build -t backend ."
        }
      }
    }
    stage("Run docker compose") {
      steps {
        dir("exBackend/backend") { // Assurez-vous que ce chemin est correct
          sh "docker compose up -d"
        }
      }
    }
  }
}
