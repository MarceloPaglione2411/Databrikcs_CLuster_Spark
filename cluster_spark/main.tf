# Criar um cluster no Databricks
resource "databricks_cluster" "mod-databricks-cluster" {
  cluster_name            = var.cluster_name
  spark_version           = "10.4.x-scala2.12" # Versão do Spark
  node_type_id            = "Standard_DS3_v2"  # Tipo de nó
  autotermination_minutes = 10                 # Encerrar o cluster após 20 minutos de inatividade

  autoscale {
    min_workers = 1
    max_workers = 2
  }
  spark_conf = {
    "spark.databricks.cluster.profile" : "serverless"
  }
  
}
