################################################################################
# Copyright 2020 The Magma Authors.

# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree.

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
################################################################################

module "orc8r" {
  source = "/root/magma/orc8r/cloud/deploy/terraform/orc8r-aws"

  
  cluster_name=var.cluster_name
  
  cluster_version=var.cluster_version
  
  magma_uuid=var.magma_uuid
  
  orc8r_domain_name=var.orc8r_domain_name
  
  region=var.region
  
  secretsmanager_orc8r_secret=var.secretsmanager_orc8r_secret
  

  
  deploy_elasticsearch=var.deploy_elasticsearch
  
  deploy_elasticsearch_service_linked_role=var.deploy_elasticsearch_service_linked_role
  
  elasticsearch_az_count=var.elasticsearch_az_count
  
  elasticsearch_domain_name=var.elasticsearch_domain_name
  
  elasticsearch_ebs_enabled=var.elasticsearch_ebs_enabled
  
  elasticsearch_ebs_volume_size=var.elasticsearch_ebs_volume_size
  
  elasticsearch_ebs_volume_type=var.elasticsearch_ebs_volume_type
  
  elasticsearch_instance_count=var.elasticsearch_instance_count
  
  elasticsearch_instance_type=var.elasticsearch_instance_type
  
  elasticsearch_version=var.elasticsearch_version
  
  orc8r_db_engine_version=var.orc8r_db_engine_version
  
  orc8r_db_identifier=var.orc8r_db_identifier
  
  orc8r_db_instance_class=var.orc8r_db_instance_class
  
  orc8r_db_password=var.orc8r_db_password
  

  global_tags = {
      magma-uuid = var.magma_uuid
  }
}

module "orc8r-app" {
  source = "/root/magma/orc8r/cloud/deploy/terraform/orc8r-helm-aws"

  
  cwf_orc8r_chart_version=var.cwf_orc8r_chart_version
  
  docker_pass=var.docker_pass
  
  docker_registry=var.docker_registry
  
  docker_user=var.docker_user
  
  fbinternal_orc8r_chart_version=var.fbinternal_orc8r_chart_version
  
  feg_orc8r_chart_version=var.feg_orc8r_chart_version
  
  helm_pass=var.helm_pass
  
  helm_repo=var.helm_repo
  
  helm_user=var.helm_user
  
  lte_orc8r_chart_version=var.lte_orc8r_chart_version
  
  orc8r_chart_version=var.orc8r_chart_version
  
  orc8r_tag=var.orc8r_tag
  
  wifi_orc8r_chart_version=var.wifi_orc8r_chart_version
  
  seed_certs_dir=var.seed_certs_dir
  
  prometheus_configurer_version=var.prometheus_configurer_version
  
  alertmanager_configurer_version=var.alertmanager_configurer_version
  
  external_dns_deployment_name=var.external_dns_deployment_name
  
  analytics_export_enabled=var.analytics_export_enabled
  
  fluentd_deployment_name=var.fluentd_deployment_name
  
  analytics_metrics_prefix=var.analytics_metrics_prefix
  
  analytics_app_secret=var.analytics_app_secret
  
  analytics_app_id=var.analytics_app_id
  
  analytics_metric_export_url=var.analytics_metric_export_url
  
  analytics_category_name=var.analytics_category_name
  
  elasticsearch_curator_name=var.elasticsearch_curator_name
  
  elasticsearch_curator_log_level=var.elasticsearch_curator_log_level
  
  elasticsearch_use_ssl=var.elasticsearch_use_ssl
  
  elasticsearch_port=var.elasticsearch_port
  
  thanos_enabled=var.thanos_enabled
  
  cloudwatch_exporter_enabled=var.cloudwatch_exporter_enabled
  
  thanos_store_node_selector=var.thanos_store_node_selector
  
  thanos_compact_node_selector=var.thanos_compact_node_selector
  
  thanos_query_node_selector=var.thanos_query_node_selector
  
  thanos_object_store_bucket_name=var.thanos_object_store_bucket_name
  
  efs_storage_class_name=var.efs_storage_class_name
  
  efs_provisioner_name=var.efs_provisioner_name
  
  orc8r_deployment_type=var.orc8r_deployment_type
  

  region = var.region
  magma_uuid = var.magma_uuid
  orc8r_domain_name = module.orc8r.orc8r_domain_name
  orc8r_route53_zone_id = module.orc8r.route53_zone_id
  external_dns_role_arn = module.orc8r.external_dns_role_arn
  secretsmanager_orc8r_name = module.orc8r.secretsmanager_secret_name

  orc8r_db_host = module.orc8r.orc8r_db_host
  orc8r_db_port    = module.orc8r.orc8r_db_port
  orc8r_db_name = module.orc8r.orc8r_db_name
  orc8r_db_user = module.orc8r.orc8r_db_user
  orc8r_db_pass = module.orc8r.orc8r_db_pass
  orc8r_db_dialect = module.orc8r.orc8r_db_dialect

  eks_cluster_id = module.orc8r.eks_cluster_id
  efs_file_system_id = module.orc8r.efs_file_system_id
  efs_provisioner_role_arn = module.orc8r.efs_provisioner_role_arn
  elasticsearch_endpoint = module.orc8r.es_endpoint
  elasticsearch_disk_threshold = tonumber(module.orc8r.es_volume_size * 75 / 100)
}

output "nameservers" {
  value = module.orc8r.route53_nameservers
}