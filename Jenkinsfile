pipeline {
    //指定任务在哪个集群节点上执行
    agent any
	//声明环境变量，方便后面使用
	environment {
	    key='value'
	
	}
		
    stages {
        stage('拉取git仓库代码') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/fourierzhou/k8s-deploy.git']]])
            }
        }
		stage('docker-composte生产出镜像，提交到镜像仓库') {
            steps {
                echo '通过maven构建项目-SUCCESS'
            }
        }
		stage('开发提交的value.yaml与helm模版 组合，生成 helm制品') {
            steps {
                echo '代码质量检测-SUCCESS'
            }
        }
		stage('将helm制品保存到到制品库') {
            steps {
                echo 'docker制作自定义镜像-SUCCESS'
            }
        }
		stage('从制品库拉取 制品，与 项目代码到目标服务器/集群') {
            steps {
                echo '推送到harbor仓库-SUCCESS'
            }
        }
		stage('通知部署成功消息') {
            steps {
                echo '通知目标服务器-SUCCESS'
            }
        }
    }
}
