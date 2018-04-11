# Database servers

resource "aws_security_group" "db" {
  name = "vpc_db"
  description = "Allow incoming database connections."

    # MySQL
    ingress {
      from_port = 3306
      to_port =  3306
      protocol = "tcp"
      security_groups = ["${aws_security_group.web.id}"]
    }

    ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["${var.vpc_cidr}"]
    }

     ingress {
      from_port = 8
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["${var.vpc_cidr}"]
    }

    egress {
      from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
      from_port = 8
      to_port = 0
      protocol = "icmp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    vpc_id = "${aws_vpc.default.id}"
    
    tags {
      Name = "DBServer-sg"
    }
}

resource "aws_instance" "db-1" {
    ami = "ami-03adba63"

    # availability_zone = "us-west-1a"
    instance_type = "t2.micro"
    key_name = "${var.aws_key_name}"
    vpc_security_group_ids = ["${aws_security_group.db.id}"]
    subnet_id = "${aws_subnet.us-west-1a-private.id}"
    source_dest_check = false

    tags {
        Name = "DB Server 1"
    }
}
