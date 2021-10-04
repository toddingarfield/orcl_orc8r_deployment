
variable "elasticsearch_dedicated_master_type" {
    default     = {}
}
variable "existing_tiller_service_account_name" {
    default     = {}
}
variable "orc8r_db_password" {
    default     = {}
}
variable "orc8r_sns_email" {
    default     = {}
}
variable "docker_registry" {
    default     = {}
}
variable "vpc_name" {
    default     = {}
}
variable "elasticsearch_dedicated_master_enabled" {
    default     = {}
}
variable "orc8r_db_identifier" {
    default     = {}
}
variable "vpc_cidr" {
    default     = {}
}
variable "orc8r_db_backup_window" {
    default     = {}
}
variable "eks_worker_groups" {
    default     = {}
}
variable "orc8r_deployment_type" {
    default     = {}
}
variable "helm_repo" {
    default     = {}
}
variable "orc8r_db_username" {
    default     = {}
}
variable "external_dns_role_arn" {
    default     = {}
}
variable "orc8r_route53_zone_id" {
    default     = {}
}
variable "vpc_extra_tags" {
    default     = {}
}
variable "elasticsearch_domain_name" {
    default     = {}
}
variable "elasticsearch_az_count" {
    default     = {}
}
variable "elasticsearch_version" {
    default     = {}
}
variable "elasticsearch_domain_tags" {
    default     = {}
}
variable "prometheus_configurer_version" {
    default     = {}
}
variable "orc8r_sns_name" {
    default     = {}
}
variable "eks_worker_group_key" {
    default     = {}
}
variable "analytics_metric_export_url" {
    default     = {}
}
variable "eks_cluster_id" {
    default     = {}
}
variable "thanos_enabled" {
    default     = {}
}
variable "analytics_metrics_prefix" {
    default     = {}
}
variable "elasticsearch_ebs_volume_type" {
    default     = {}
}
variable "region" {
    default     = {}
}
variable "helm_user" {
    default     = {}
}
variable "magma_uuid" {
    default     = {}
}
variable "helm_deployment_name" {
    default     = {}
}
variable "elasticsearch_disk_threshold" {
    default     = {}
}
variable "analytics_category_name" {
    default     = {}
}
variable "orc8r_kubernetes_namespace" {
    default     = {}
}
variable "feg_orc8r_chart_version" {
    default     = {}
}
variable "elasticsearch_use_ssl" {
    default     = {}
}
variable "deploy_elasticsearch_service_linked_role" {
    default     = {}
}
variable "orc8r_db_engine_version" {
    default     = {}
}
variable "fbinternal_orc8r_chart_version" {
    default     = {}
}
variable "enable_aws_db_notifications" {
    default     = {}
}
variable "thanos_object_store_bucket_name" {
    default     = {}
}
variable "orc8r_chart_version" {
    default     = {}
}
variable "deploy_elasticsearch" {
    default     = {}
}
variable "cluster_name" {
    default     = {}
}
variable "thanos_query_node_selector" {
    default     = {}
}
variable "orc8r_db_instance_class" {
    default     = {}
}
variable "elasticsearch_endpoint" {
    default     = {}
}
variable "orc8r_domain_name" {
    default     = {}
}
variable "elasticsearch_port" {
    default     = {}
}
variable "orc8r_db_backup_retention" {
    default     = {}
}
variable "lte_orc8r_chart_version" {
    default     = {}
}
variable "tiller_namespace" {
    default     = {}
}
variable "seed_certs_dir" {
    default     = {}
}
variable "orc8r_db_name" {
    default     = {}
}
variable "eks_map_roles" {
    default     = {}
}
variable "elasticsearch_ebs_iops" {
    default     = {}
}
variable "cluster_version" {
    default     = {}
}
variable "vpc_private_subnets" {
    default     = {}
}
variable "deploy_openvpn" {
    default     = {}
}
variable "efs_project_name" {
    default     = {}
}
variable "efs_file_system_id" {
    default     = {}
}
variable "cloudwatch_exporter_enabled" {
    default     = {}
}
variable "elasticsearch_instance_type" {
    default     = {}
}
variable "efs_provisioner_name" {
    default     = {}
}
variable "eks_worker_additional_policy_arns" {
    default     = {}
}
variable "vpc_public_subnets" {
    default     = {}
}
variable "state_backend" {
    default     = {}
}
variable "analytics_export_enabled" {
    default     = {}
}
variable "thanos_store_node_selector" {
    default     = {}
}
variable "vpc_database_subnets" {
    default     = {}
}
variable "elasticsearch_ebs_enabled" {
    default     = {}
}
variable "deploy_nms" {
    default     = {}
}
variable "analytics_app_secret" {
    default     = {}
}
variable "wifi_orc8r_chart_version" {
    default     = {}
}
variable "cwf_orc8r_chart_version" {
    default     = {}
}
variable "elasticsearch_curator_name" {
    default     = {}
}
variable "thanos_compact_node_selector" {
    default     = {}
}
variable "thanos_worker_groups" {
    default     = {}
}
variable "global_tags" {
    default     = {}
}
variable "state_config" {
    default     = {}
}
variable "efs_storage_class_name" {
    default     = {}
}
variable "elasticsearch_instance_count" {
    default     = {}
}
variable "fluentd_deployment_name" {
    default     = {}
}
variable "orc8r_proxy_replicas" {
    default     = {}
}
variable "analytics_app_id" {
    default     = {}
}
variable "orc8r_db_event_subscription" {
    default     = {}
}
variable "helm_pass" {
    default     = {}
}
variable "eks_map_users" {
    default     = {}
}
variable "orc8r_db_storage_gb" {
    default     = {}
}
variable "elasticsearch_retention_days" {
    default     = {}
}
variable "eks_worker_additional_sg_ids" {
    default     = {}
}
variable "docker_pass" {
    default     = {}
}
variable "alertmanager_configurer_version" {
    default     = {}
}
variable "install_tiller" {
    default     = {}
}
variable "external_dns_deployment_name" {
    default     = {}
}
variable "orc8r_tag" {
    default     = {}
}
variable "secretsmanager_orc8r_name" {
    default     = {}
}
variable "elasticsearch_curator_log_level" {
    default     = {}
}
variable "docker_user" {
    default     = {}
}
variable "secretsmanager_orc8r_secret" {
    default     = {}
}
variable "elasticsearch_ebs_volume_size" {
    default     = {}
}
variable "elasticsearch_dedicated_master_count" {
    default     = {}
}
variable "orc8r_controller_replicas" {
    default     = {}
}
variable "orc8r_db_port" {
    default     = {}
}
variable "efs_provisioner_role_arn" {
    default     = {}
}
variable "monitoring_kubernetes_namespace" {
    default     = {}
}