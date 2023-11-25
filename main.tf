module "docdb" {
    source               = "./vendor/modules/docdb"
    ENV                  = var.ENV  
    DOCDB_INSTANCE_TYPE  = var.DOCDB_INSTANCE_TYPE
    DOCDB_INSTANCE_COUNT = var.DOCDB_INSTANCE_COUNT
    DOCDB_INSTANCE_PORT  = var.DOCDB_INSTANCE_PORT

}

module "redis" {
    source               = "./vendor/modules/redis"
    ENV                  = var.ENV 
    REDIS_INSTANCE_TYPE  = var.REDIS_INSTANCE_TYPE
    REDIS_ENGINE_VERSION = var.REDIS_ENGINE_VERSION
    REDIS_PORT           = var.REDIS_PORT
    REDIS_INSTANCE_COUNT = var.REDIS_INSTANCE_COUNT
 
}

module "mysql" {
    source               = "./vendor/modules/mysql"
    ENV                  = var.ENV  
    MYSQL_STORAGE        = var.MYSQL_STORAGE
    MYSQL_ENGINE_VERSION = var.MYSQL_ENGINE_VERSION
    MYSQL_INSTANCE_TYPE  = var.MYSQL_INSTANCE_TYPE
    DOCDB_INSTANCE_TYPE  = var.DOCDB_INSTANCE_TYPE
}

module "rabbitmq" {
  source                 = "./vendor/modules/rabbitmq"
  ENV                    = var.ENV
  RABBITMQ_PORT_NUMBER   = var. RABBITMQ_PORT_NUMBER
  RABBITMQ_INSTANCE_TYPE = var.RABBITMQ_INSTANCE_TYPE
}

#output "data" {
#  value = module.docdb.example
#}
