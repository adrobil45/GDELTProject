


resource "aws_emr_cluster" "cassandra_cluster" {
    name = "Cassandra cluster"
    release_label = "emr-6.2.0"
    applications = [ "Hadoop", "Spark", "Zeppelin" ]
    ebs_root_volume_size = 30
    service_role = "EMR_DefaultRole"

    master_instance_group {
        instance_type = "m5.xlarge"
        name = "Master node"
        instance_count = 1
    }

    core_instance_group {
        instance_type = "m5.xlarge"
        instance_count = 2
        name = "Worker node"
    }

    ec2_attributes {
        key_name = "admin"
        instance_profile = "EMR_EC2_DefaultRole"
        additional_slave_security_groups  = aws_default_security_group.default.id
    }

}


resource "aws_key_pair" "admin" {
    key_name   = "admin"
    public_key = file("ssh-keys/id_rsa_aws.pub")
 }


resource "aws_default_vpc" "default" {
    tags = {
        Name = "default"
    }
}


resource "aws_default_security_group" "default" {
    vpc_id = aws_default_vpc.default.id
    #revoke_rules_on_delete = true # utile pour les accès aux workers EMR
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "default"
    }
 }