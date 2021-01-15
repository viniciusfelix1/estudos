
resource "aws_eks_cluster" "Teste-Vinicius" {
  name     = var.cluster-name
  role_arn = aws_iam_role.Teste-Vinicius.arn

  vpc_config {
    subnet_ids = [data.aws_subnet.get-subnet1.id, data.aws_subnet.get-subnet2.id]
  }
  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.Vinicius-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.Vinicius-AmazonEKSVPCResourceController,
  ]
}


data "aws_subnet" "get-subnet1" {
  filter {
    name = "tag:Name"
    values = ["Teste-Vinicius-1"]
   } 
}

data "aws_subnet" "get-subnet2" {
  filter {
    name = "tag:Name"
    values = ["Teste-Vinicius-2"]
   } 
}

#output "teste" {
#  value = aws_subnet.get-subnet1
#}

output "endpoint" {
  value = aws_eks_cluster.Teste-Vinicius.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.Teste-Vinicius.certificate_authority[0].data
}


resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.Teste-Vinicius.name
  node_group_name = "example"
  node_role_arn   = aws_iam_role.Teste-Vinicius.arn
  subnet_ids      = [data.aws_subnet.get-subnet1.id, data.aws_subnet.get-subnet2.id]
  instance_types = ["t3.small"]

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    aws_iam_role_policy_attachment.example-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.example-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.example-AmazonEC2ContainerRegistryReadOnly,
  ]
}
