pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''
                   cd demo4
                   mvn clean install
                '''
            }
        }
    }
}

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
