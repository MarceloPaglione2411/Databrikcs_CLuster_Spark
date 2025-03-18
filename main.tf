module "rg_module" {
  source = "./resource_group"
  rg_name = var.rg_name
  rg_location = var.rg_location
}

module "databricks_module" {
    source = "./databricks"
    rg_name = module.rg_module.mod-rg
    rg_location = module.rg_module.location
    databricks_name = var.databricks_name
    sku = var.sku
}


module "cluster_spark_module" {
    source = "./cluster_spark"
     cluster_name = var.cluster_name
}
