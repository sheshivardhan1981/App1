variable "v_vpc_cidr"{
}
resource "aws_vpc" "vpc2"{
	cidr_block=var.v_vpc_cidr
	tags={
		Name="VPC1"
	}
}
resource "aws_subnet" "sn1"{
	vpc_id=aws_vpc.vpc1.id
	cidr_block="10.0.0.0/24"
	avilability_zone="ap-south-1a"
	tags={
		Name="SN1-VPC1"
	}
	
}
resource "aws_subnet" "sn2"{
	vpc_id=aws_vpc.vpc1.id
	cidr_block="10.0.1.0/24"
	avilability_zone="ap-south-1a"
	tags={
		Name="SN2-VPC1"
	}
}
	