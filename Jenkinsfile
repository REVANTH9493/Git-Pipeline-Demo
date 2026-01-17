pipeline {
agent any
tools {
jdk 'jdk11' // Make sure JDK is configured in Jenkins
}
stages {
stage('Build') {
    steps {
        echo 'Building application...'
        sh '''
            chmod +x build.sh
            ./build.sh
        '''
    }
}

stage('Test') {
steps {
echo 'Running tests...'
sh 'java -cp src/main/java com.example.HelloDevOpsTest'
}
}
stage('Archive') {
steps {
echo 'Archiving artifacts...'
archiveArtifacts artifacts: 'app.jar', fingerprint: true
archiveArtifacts artifacts: 'build.sh', fingerprint: true
}
}
}
post {
always {
echo 'Pipeline completed'
cleanWs() // Clean workspace
}
}
}
