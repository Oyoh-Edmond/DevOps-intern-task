# Ignite DevOps Intern Task

## Setup
1. Clone this repository
    ```
    git clone https://github.com/oyoh-edmond/Devops-intern-task.git
    ```

2. Navigate into the repo directory (folder)
    ```
    cd Devops-intern-task
    ```

3. Create a Kind cluster by exectuing the following script
    ```
    ./KIND_cluster.sh
    ```
    The result will be that a new Kind cluster has been created.


4. Grab the kubeconfig file by running the following command
    ```
    kind get kubeconfig --name ignite-app > kubeconfig.yaml
    ```
    The command above saves the kubeconfig to a file named `kubeconfig.yaml`

5. Install the node application dependencies by running the following command in the `node_application`` directory
    
    ```
    cd node_application && npm i
    ```
    `Note`: You can test the application by simply executing `node index.js` within the node_application dir

6. Build and deploy a docker image to dockerhub from the node_app dir
    ```
    docker buildx build . -t <dockerhub-username>/<image-name>
    ```
    For example: `docker buildx build . -t oyohedmond/ignite-app`
    Once that is done, login to dockerhub and verify that it exists

7. Navigate to the terraform directory and execute the following commands:
    
    a. Init 
    ```
    terraform init
    ```

    b. Plan
    ```
    terraform plan
    ```
    
    b. Apply
    ```
    terraform apply
    ```
    










### Bonus

1. Using the [kube-prometheus stack](https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/README.md), using [terraform helm provider](https://registry.terraform.io/providers/hashicorp/helm/latest/docs), setup monitoring and observability for the prometheus cluster.

### Submission

1. Create a repository with all your code in it
2. Send an email to intern.task@ignite.dev on or before 23/09/2023
   
