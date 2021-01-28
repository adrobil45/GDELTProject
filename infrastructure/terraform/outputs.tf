output "master_public_dns" {
    value = aws_emr_cluster.cassandra_cluster.master_public_dns
}


output "ec2_info" {
    value = aws_emr_cluster.cassandra_cluster.ec2_attributes
}

output "configurations" {
    value = aws_emr_cluster.cassandra_cluster.configurations
}


output "ip" {
    value = aws_emr_cluster.cassandra_cluster.core_instance_group.*
}