pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                dir('demo4') {
                    sh 'mvn clean install'
                }
            }
        }
    }
}
