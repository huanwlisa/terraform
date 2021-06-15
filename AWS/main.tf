terraform {
  backend "s3" {
    bucket  = "potevioatapnortheast2"
    key     = "terraform/terraform.tfstate"
    region  = "ap-northeast-2"
    encrypt = true
  }
  #  required_version = ""
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #     version = "3.37"
    }
  }
}
#provider "aws" {
#  region = "us-east-1"
#}
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}
provider "aws" {
  alias  = "us-west-1"
  region = "us-west-1"
}
provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}
provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"
}
provider "aws" {
  alias  = "eu-north-1"
  region = "eu-north-1"
}
provider "aws" {
  alias  = "eu-west-3"
  region = "eu-west-3"
}
provider "aws" {
  alias  = "eu-west-2"
  region = "eu-west-2"
}
provider "aws" {
  alias  = "eu-west-1"
  region = "eu-west-1"
}
provider "aws" {
  alias  = "eu-central-1"
  region = "eu-central-1"
}
provider "aws" {
  alias  = "eu-south-1"
  region = "eu-south-1"
}
provider "aws" {
  alias  = "ap-south-1"
  region = "ap-south-1"
}
provider "aws" {
  alias  = "ap-northeast-1"
  region = "ap-northeast-1"
}
provider "aws" {
  alias  = "ap-northeast-2"
  region = "ap-northeast-2"
}
provider "aws" {
  alias  = "ap-northeast-3"
  region = "ap-northeast-3"
}
provider "aws" {
  alias  = "ap-southeast-1"
  region = "ap-southeast-1"
}
provider "aws" {
  alias  = "ap-southeast-2"
  region = "ap-southeast-2"
}
provider "aws" {
  alias  = "ap-east-1"
  region = "ap-east-1"
}
provider "aws" {
  alias  = "sa-east-1"
  region = "sa-east-1"
}
provider "aws" {
  alias  = "me-south-1"
  region = "me-south-1"
}
provider "aws" {
  alias  = "af-south-1"
  region = "af-south-1"
}
#data "aws_ami" "awsami" {
#  provider = aws.af-south-1
#  most_recent = true
#  owners = ["amazon"]
#  filter {
#    name = "name"
#    values = ["amzn2-ami-hvm-2.0.20210427.0-x86_64-gp2"]
#  }
#}
resource "aws_vpc" "us-east-1" {
  provider             = aws
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

resource "aws_vpc" "us-east-2" {
  provider             = aws.us-east-2
  cidr_block           = "10.1.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

resource "aws_vpc" "us-west-1" {
  provider             = aws.us-west-1
  cidr_block           = "10.2.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "us-west-2" {
  provider             = aws.us-west-2
  cidr_block           = "10.3.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "ca-central-1" {
  provider             = aws.ca-central-1
  cidr_block           = "10.4.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "eu-north-1" {
  provider             = aws.eu-north-1
  cidr_block           = "10.5.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "eu-west-3" {
  provider             = aws.eu-west-3
  cidr_block           = "10.6.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "eu-west-2" {
  provider             = aws.eu-west-2
  cidr_block           = "10.7.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "eu-west-1" {
  provider             = aws.eu-west-1
  cidr_block           = "10.8.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "eu-central-1" {
  provider             = aws.eu-central-1
  cidr_block           = "10.9.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "eu-south-1" {
  provider             = aws.eu-south-1
  cidr_block           = "10.10.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "ap-south-1" {
  provider             = aws.ap-south-1
  cidr_block           = "10.11.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "ap-northeast-1" {
  provider             = aws.ap-northeast-1
  cidr_block           = "10.12.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "ap-northeast-2" {
  provider             = aws.ap-northeast-2
  cidr_block           = "10.13.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "ap-northeast-3" {
  provider             = aws.ap-northeast-3
  cidr_block           = "10.14.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "ap-southeast-1" {
  provider             = aws.ap-southeast-1
  cidr_block           = "10.15.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "ap-southeast-2" {
  provider             = aws.ap-southeast-2
  cidr_block           = "10.16.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "ap-east-1" {
  provider             = aws.ap-east-1
  cidr_block           = "10.17.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "sa-east-1" {
  provider             = aws.sa-east-1
  cidr_block           = "10.18.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "me-south-1" {
  provider             = aws.me-south-1
  cidr_block           = "10.19.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
resource "aws_vpc" "af-south-1" {
  provider             = aws.af-south-1
  cidr_block           = "10.20.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
}

resource "aws_subnet" "us-east-1" {
  provider                = aws
  cidr_block              = "10.0.1.0/24"
  vpc_id                  = aws_vpc.us-east-1.id
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
}

resource "aws_subnet" "us-east-2" {
  provider                = aws.us-east-2
  cidr_block              = "10.1.1.0/24"
  vpc_id                  = aws_vpc.us-east-2.id
  map_public_ip_on_launch = true
  availability_zone       = "us-east-2a"
}

resource "aws_subnet" "us-west-1" {
  provider                = aws.us-west-1
  cidr_block              = "10.2.1.0/24"
  vpc_id                  = aws_vpc.us-west-1.id
  map_public_ip_on_launch = true
  availability_zone       = "us-west-1c"
}
resource "aws_subnet" "us-west-2" {
  provider                = aws.us-west-2
  cidr_block              = "10.3.1.0/24"
  vpc_id                  = aws_vpc.us-west-2.id
  map_public_ip_on_launch = true
  availability_zone       = "us-west-2a"
}
resource "aws_subnet" "ca-central-1" {
  provider                = aws.ca-central-1
  cidr_block              = "10.4.1.0/24"
  vpc_id                  = aws_vpc.ca-central-1.id
  map_public_ip_on_launch = true
  availability_zone       = "ca-central-1a"
}
resource "aws_subnet" "eu-north-1" {
  provider                = aws.eu-north-1
  cidr_block              = "10.5.1.0/24"
  vpc_id                  = aws_vpc.eu-north-1.id
  map_public_ip_on_launch = true
  availability_zone       = "eu-north-1a"
}
resource "aws_subnet" "eu-west-3" {
  provider                = aws.eu-west-3
  cidr_block              = "10.6.1.0/24"
  vpc_id                  = aws_vpc.eu-west-3.id
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-3a"
}
resource "aws_subnet" "eu-west-2" {
  provider                = aws.eu-west-2
  cidr_block              = "10.7.1.0/24"
  vpc_id                  = aws_vpc.eu-west-2.id
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-2a"
}
resource "aws_subnet" "eu-west-1" {
  provider                = aws.eu-west-1
  cidr_block              = "10.8.1.0/24"
  vpc_id                  = aws_vpc.eu-west-1.id
  map_public_ip_on_launch = true
  availability_zone       = "eu-west-1a"
}
resource "aws_subnet" "eu-central-1" {
  provider                = aws.eu-central-1
  cidr_block              = "10.9.1.0/24"
  vpc_id                  = aws_vpc.eu-central-1.id
  map_public_ip_on_launch = true
  availability_zone       = "eu-central-1a"
}
resource "aws_subnet" "eu-south-1" {
  provider                = aws.eu-south-1
  cidr_block              = "10.10.1.0/24"
  vpc_id                  = aws_vpc.eu-south-1.id
  map_public_ip_on_launch = true
  availability_zone       = "eu-south-1a"
}
resource "aws_subnet" "ap-south-1" {
  provider                = aws.ap-south-1
  cidr_block              = "10.11.1.0/24"
  vpc_id                  = aws_vpc.ap-south-1.id
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1a"
}
resource "aws_subnet" "ap-northeast-1" {
  provider                = aws.ap-northeast-1
  cidr_block              = "10.12.1.0/24"
  vpc_id                  = aws_vpc.ap-northeast-1.id
  map_public_ip_on_launch = true
  availability_zone       = "ap-northeast-1a"
}
resource "aws_subnet" "ap-northeast-2" {
  provider                = aws.ap-northeast-2
  cidr_block              = "10.13.1.0/24"
  vpc_id                  = aws_vpc.ap-northeast-2.id
  map_public_ip_on_launch = true
  availability_zone       = "ap-northeast-2a"
}
resource "aws_subnet" "ap-northeast-3" {
  provider                = aws.ap-northeast-3
  cidr_block              = "10.14.1.0/24"
  vpc_id                  = aws_vpc.ap-northeast-3.id
  map_public_ip_on_launch = true
  availability_zone       = "ap-northeast-3a"
}
resource "aws_subnet" "ap-southeast-1" {
  provider                = aws.ap-southeast-1
  cidr_block              = "10.15.1.0/24"
  vpc_id                  = aws_vpc.ap-southeast-1.id
  map_public_ip_on_launch = true
  availability_zone       = "ap-southeast-1a"
}
resource "aws_subnet" "ap-southeast-2" {
  provider                = aws.ap-southeast-2
  cidr_block              = "10.16.1.0/24"
  vpc_id                  = aws_vpc.ap-southeast-2.id
  map_public_ip_on_launch = true
  availability_zone       = "ap-southeast-2a"
}
resource "aws_subnet" "ap-east-1" {
  provider                = aws.ap-east-1
  cidr_block              = "10.17.1.0/24"
  vpc_id                  = aws_vpc.ap-east-1.id
  map_public_ip_on_launch = true
  availability_zone       = "ap-east-1a"
}
resource "aws_subnet" "sa-east-1" {
  provider                = aws.sa-east-1
  cidr_block              = "10.18.1.0/24"
  vpc_id                  = aws_vpc.sa-east-1.id
  map_public_ip_on_launch = true
  availability_zone       = "sa-east-1a"
}
resource "aws_subnet" "me-south-1" {
  provider                = aws.me-south-1
  cidr_block              = "10.19.1.0/24"
  vpc_id                  = aws_vpc.me-south-1.id
  map_public_ip_on_launch = true
  availability_zone       = "me-south-1a"
}
resource "aws_subnet" "af-south-1" {
  provider                = aws.af-south-1
  cidr_block              = "10.20.1.0/24"
  vpc_id                  = aws_vpc.af-south-1.id
  map_public_ip_on_launch = true
  availability_zone       = "af-south-1a"
}



resource "aws_internet_gateway" "us-east-1" {
  provider = aws
  vpc_id   = aws_vpc.us-east-1.id
}

resource "aws_internet_gateway" "us-east-2" {
  provider = aws.us-east-2
  vpc_id   = aws_vpc.us-east-2.id
}

resource "aws_internet_gateway" "us-west-1" {
  provider = aws.us-west-1
  vpc_id   = aws_vpc.us-west-1.id
}
resource "aws_internet_gateway" "us-west-2" {
  provider = aws.us-west-2
  vpc_id   = aws_vpc.us-west-2.id
}
resource "aws_internet_gateway" "ca-central-1" {
  provider = aws.ca-central-1
  vpc_id   = aws_vpc.ca-central-1.id
}
resource "aws_internet_gateway" "eu-north-1" {
  provider = aws.eu-north-1
  vpc_id   = aws_vpc.eu-north-1.id
}
resource "aws_internet_gateway" "eu-west-3" {
  provider = aws.eu-west-3
  vpc_id   = aws_vpc.eu-west-3.id
}
resource "aws_internet_gateway" "eu-west-2" {
  provider = aws.eu-west-2
  vpc_id   = aws_vpc.eu-west-2.id
}
resource "aws_internet_gateway" "eu-west-1" {
  provider = aws.eu-west-1
  vpc_id   = aws_vpc.eu-west-1.id
}
resource "aws_internet_gateway" "eu-central-1" {
  provider = aws.eu-central-1
  vpc_id   = aws_vpc.eu-central-1.id
}
resource "aws_internet_gateway" "eu-south-1" {
  provider = aws.eu-south-1
  vpc_id   = aws_vpc.eu-south-1.id
}
resource "aws_internet_gateway" "ap-south-1" {
  provider = aws.ap-south-1
  vpc_id   = aws_vpc.ap-south-1.id
}
resource "aws_internet_gateway" "ap-northeast-1" {
  provider = aws.ap-northeast-1
  vpc_id   = aws_vpc.ap-northeast-1.id
}
resource "aws_internet_gateway" "ap-northeast-2" {
  provider = aws.ap-northeast-2
  vpc_id   = aws_vpc.ap-northeast-2.id
}
resource "aws_internet_gateway" "ap-northeast-3" {
  provider = aws.ap-northeast-3
  vpc_id   = aws_vpc.ap-northeast-3.id
}
resource "aws_internet_gateway" "ap-southeast-1" {
  provider = aws.ap-southeast-1
  vpc_id   = aws_vpc.ap-southeast-1.id
}
resource "aws_internet_gateway" "ap-southeast-2" {
  provider = aws.ap-southeast-2
  vpc_id   = aws_vpc.ap-southeast-2.id
}
resource "aws_internet_gateway" "ap-east-1" {
  provider = aws.ap-east-1
  vpc_id   = aws_vpc.ap-east-1.id
}
resource "aws_internet_gateway" "sa-east-1" {
  provider = aws.sa-east-1
  vpc_id   = aws_vpc.sa-east-1.id
}
resource "aws_internet_gateway" "me-south-1" {
  provider = aws.me-south-1
  vpc_id   = aws_vpc.me-south-1.id
}
resource "aws_internet_gateway" "af-south-1" {
  provider = aws.af-south-1
  vpc_id   = aws_vpc.af-south-1.id
}

######us-east-1#####
resource "aws_route_table" "us-east-1" {
  provider = aws.us-east-1
  vpc_id   = aws_vpc.us-east-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.us-east-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-us-east-2.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-us-west-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-us-west-2.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-af-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-sa-east-1.id
  }
}
######us-east-2#####
resource "aws_route_table" "us-east-2" {
  provider = aws.us-east-2
  vpc_id   = aws_vpc.us-east-2.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.us-east-2.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-us-east-2.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-us-west-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-us-west-2.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-af-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-sa-east-1.id
  }
}
######us-west-1#####
resource "aws_route_table" "us-west-1" {
  provider = aws.us-west-1
  vpc_id   = aws_vpc.us-west-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.us-west-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-us-west-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-us-west-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-us-west-2.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-af-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-sa-east-1.id
  }
}
######us-west-2#####
resource "aws_route_table" "us-west-2" {
  provider = aws.us-west-2
  vpc_id   = aws_vpc.us-west-2.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.us-west-2.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-us-west-2.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-us-west-2.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-us-west-2.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-af-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-sa-east-1.id
  }
}
######af-south-1#####
resource "aws_route_table" "af-south-1" {
  provider = aws.af-south-1
  vpc_id   = aws_vpc.af-south-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.af-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-af-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-af-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-af-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-af-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-sa-east-1.id
  }
}
######ap-east-1#####
resource "aws_route_table" "ap-east-1" {
  provider = aws.ap-east-1
  vpc_id   = aws_vpc.ap-east-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-sa-east-1.id
  }
}
######ap-south-1#####
resource "aws_route_table" "ap-south-1" {
  provider = aws.ap-south-1
  vpc_id   = aws_vpc.ap-south-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-sa-east-1.id
  }
}
######ap-northeast-3#####
resource "aws_route_table" "ap-northeast-3" {
  provider = aws.ap-northeast-3
  vpc_id   = aws_vpc.ap-northeast-3.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-northeast-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-sa-east-1.id
  }
}
######ap-northeast-2#####
resource "aws_route_table" "ap-northeast-2" {
  provider = aws.ap-northeast-2
  vpc_id   = aws_vpc.ap-northeast-2.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-northeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-sa-east-1.id
  }
}
######ap-southeast-1#####
resource "aws_route_table" "ap-southeast-1" {
  provider = aws.ap-southeast-1
  vpc_id   = aws_vpc.ap-southeast-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ap-southeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-sa-east-1.id
  }
}
######ap-southeast-2#####
resource "aws_route_table" "ap-southeast-2" {
  provider = aws.ap-southeast-2
  vpc_id   = aws_vpc.ap-southeast-2.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-ap-southeast-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-sa-east-1.id
  }
}
######ap-northeast-1#####
resource "aws_route_table" "ap-northeast-1" {
  provider = aws.ap-northeast-1
  vpc_id   = aws_vpc.ap-northeast-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-ap-northeast-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-sa-east-1.id
  }
}
######ca-central-1#####
resource "aws_route_table" "ca-central-1" {
  provider = aws.ca-central-1
  vpc_id   = aws_vpc.ca-central-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-ca-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-sa-east-1.id
  }
}
######eu-central-1#####
resource "aws_route_table" "eu-central-1" {
  provider = aws.eu-central-1
  vpc_id   = aws_vpc.eu-central-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-central-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-sa-east-1.id
  }
}
######eu-west-1#####
resource "aws_route_table" "eu-west-1" {
  provider = aws.eu-west-1
  vpc_id   = aws_vpc.eu-west-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-west-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-sa-east-1.id
  }
}
######eu-west-2#####
resource "aws_route_table" "eu-west-2" {
  provider = aws.eu-west-2
  vpc_id   = aws_vpc.eu-west-2.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-west-2.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-sa-east-1.id
  }
}
######eu-south-1#####
resource "aws_route_table" "eu-south-1" {
  provider = aws.eu-south-1
  vpc_id   = aws_vpc.eu-south-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-eu-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-sa-east-1.id
  }
}
######eu-west-3#####
resource "aws_route_table" "eu-west-3" {
  provider = aws.eu-west-3
  vpc_id   = aws_vpc.eu-west-3.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-eu-west-3.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3-sa-east-1.id
  }
}
######eu-north-1#####
resource "aws_route_table" "eu-north-1" {
  provider = aws.eu-north-1
  vpc_id   = aws_vpc.eu-north-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3-eu-north-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-north-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-north-1-sa-east-1.id
  }
}
######me-south-1#####
resource "aws_route_table" "me-south-1" {
  provider = aws.me-south-1
  vpc_id   = aws_vpc.me-south-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-north-1-me-south-1.id
  }
  route {
    cidr_block                = aws_vpc.sa-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.me-south-1-sa-east-1.id
  }
}
######sa-east-1#####
resource "aws_route_table" "sa-east-1" {
  provider = aws.sa-east-1
  vpc_id   = aws_vpc.sa-east-1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.us-east-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.us-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.af-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-east-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-southeast-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ap-northeast-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.ca-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-central-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-2.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-west-3.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.eu-north-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.eu-north-1-sa-east-1.id
  }
  route {
    cidr_block                = aws_vpc.me-south-1.cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.me-south-1-sa-east-1.id
  }
}


resource "aws_route_table_association" "us-east-1" {
  provider       = aws
  route_table_id = aws_route_table.us-east-1.id
  subnet_id      = aws_subnet.us-east-1.id
}

resource "aws_route_table_association" "us-east-2" {
  provider       = aws.us-east-2
  route_table_id = aws_route_table.us-east-2.id
  subnet_id      = aws_subnet.us-east-2.id
}

resource "aws_route_table_association" "us-west-1" {
  provider       = aws.us-west-1
  route_table_id = aws_route_table.us-west-1.id
  subnet_id      = aws_subnet.us-west-1.id
}
resource "aws_route_table_association" "us-west-2" {
  provider       = aws.us-west-2
  route_table_id = aws_route_table.us-west-2.id
  subnet_id      = aws_subnet.us-west-2.id
}
resource "aws_route_table_association" "ca-central-1" {
  provider       = aws.ca-central-1
  route_table_id = aws_route_table.ca-central-1.id
  subnet_id      = aws_subnet.ca-central-1.id
}
resource "aws_route_table_association" "eu-north-1" {
  provider       = aws.eu-north-1
  route_table_id = aws_route_table.eu-north-1.id
  subnet_id      = aws_subnet.eu-north-1.id
}
resource "aws_route_table_association" "eu-west-3" {
  provider       = aws.eu-west-3
  route_table_id = aws_route_table.eu-west-3.id
  subnet_id      = aws_subnet.eu-west-3.id
}
resource "aws_route_table_association" "eu-west-2" {
  provider       = aws.eu-west-2
  route_table_id = aws_route_table.eu-west-2.id
  subnet_id      = aws_subnet.eu-west-2.id
}
resource "aws_route_table_association" "eu-west-1" {
  provider       = aws.eu-west-1
  route_table_id = aws_route_table.eu-west-1.id
  subnet_id      = aws_subnet.eu-west-1.id

}
resource "aws_route_table_association" "eu-central-1" {
  provider       = aws.eu-central-1
  route_table_id = aws_route_table.eu-central-1.id
  subnet_id      = aws_subnet.eu-central-1.id
}
resource "aws_route_table_association" "eu-south-1" {
  provider       = aws.eu-south-1
  route_table_id = aws_route_table.eu-south-1.id
  subnet_id      = aws_subnet.eu-south-1.id
}
resource "aws_route_table_association" "ap-south-1" {
  provider       = aws.ap-south-1
  route_table_id = aws_route_table.ap-south-1.id
  subnet_id      = aws_subnet.ap-south-1.id
}
resource "aws_route_table_association" "ap-northeast-1" {
  provider       = aws.ap-northeast-1
  route_table_id = aws_route_table.ap-northeast-1.id
  subnet_id      = aws_subnet.ap-northeast-1.id
}
resource "aws_route_table_association" "ap-northeast-2" {
  provider       = aws.ap-northeast-2
  route_table_id = aws_route_table.ap-northeast-2.id
  subnet_id      = aws_subnet.ap-northeast-2.id
}
resource "aws_route_table_association" "ap-northeast-3" {
  provider       = aws.ap-northeast-3
  route_table_id = aws_route_table.ap-northeast-3.id
  subnet_id      = aws_subnet.ap-northeast-3.id
}
resource "aws_route_table_association" "ap-southeast-1" {
  provider       = aws.ap-southeast-1
  route_table_id = aws_route_table.ap-southeast-1.id
  subnet_id      = aws_subnet.ap-southeast-1.id
}
resource "aws_route_table_association" "ap-southeast-2" {
  provider       = aws.ap-southeast-2
  route_table_id = aws_route_table.ap-southeast-2.id
  subnet_id      = aws_subnet.ap-southeast-2.id
}
resource "aws_route_table_association" "ap-east-1" {
  provider       = aws.ap-east-1
  route_table_id = aws_route_table.ap-east-1.id
  subnet_id      = aws_subnet.ap-east-1.id
}
resource "aws_route_table_association" "sa-east-1" {
  provider       = aws.sa-east-1
  route_table_id = aws_route_table.sa-east-1.id
  subnet_id      = aws_subnet.sa-east-1.id
}
resource "aws_route_table_association" "me-south-1" {
  provider       = aws.me-south-1
  route_table_id = aws_route_table.me-south-1.id
  subnet_id      = aws_subnet.me-south-1.id
}
resource "aws_route_table_association" "af-south-1" {
  provider       = aws.af-south-1
  route_table_id = aws_route_table.af-south-1.id
  subnet_id      = aws_subnet.af-south-1.id
}

resource "aws_security_group" "us-east-1" {
  provider    = aws
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.us-east-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "us-east-2" {
  provider    = aws.us-east-2
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.us-east-2.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = [
    "0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
    "0.0.0.0/0"]
  }
}
resource "aws_security_group" "us-west-1" {
  provider    = aws.us-west-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.us-west-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "us-west-2" {
  provider    = aws.us-west-2
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.us-west-2.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ca-central-1" {
  provider    = aws.ca-central-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.ca-central-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "eu-north-1" {
  provider    = aws.eu-north-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.eu-north-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "eu-west-3" {
  provider    = aws.eu-west-3
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.eu-west-3.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "eu-west-2" {
  provider    = aws.eu-west-2
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.eu-west-2.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "eu-west-1" {
  provider    = aws.eu-west-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.eu-west-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "eu-central-1" {
  provider    = aws.eu-central-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.eu-central-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "eu-south-1" {
  provider    = aws.eu-south-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.eu-south-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ap-south-1" {
  provider    = aws.ap-south-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.ap-south-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ap-northeast-1" {
  provider    = aws.ap-northeast-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.ap-northeast-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ap-northeast-2" {
  provider    = aws.ap-northeast-2
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.ap-northeast-2.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ap-northeast-3" {
  provider    = aws.ap-northeast-3
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.ap-northeast-3.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ap-southeast-1" {
  provider    = aws.ap-southeast-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.ap-southeast-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ap-southeast-2" {
  provider    = aws.ap-southeast-2
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.ap-southeast-2.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ap-east-1" {
  provider    = aws.ap-east-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.ap-east-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "sa-east-1" {
  provider    = aws.sa-east-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.sa-east-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "me-south-1" {
  provider    = aws.me-south-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.me-south-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "af-south-1" {
  provider    = aws.af-south-1
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.af-south-1.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "ICMP from VPC"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

######us-east-1#####
resource "aws_vpc_peering_connection" "us-east-1-us-east-2" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.us-east-2.id
peer_region = "us-east-2"
}
resource "aws_vpc_peering_connection_accepter" "us-east-2-us-east-1" {
provider = aws.us-east-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-us-east-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-us-west-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.us-west-1.id
peer_region = "us-west-1"
}
resource "aws_vpc_peering_connection_accepter" "us-west-1-us-east-1" {
provider = aws.us-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-us-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-us-west-2" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.us-west-2.id
peer_region = "us-west-2"
}
resource "aws_vpc_peering_connection_accepter" "us-west-2-us-east-1" {
provider = aws.us-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-us-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-af-south-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.af-south-1.id
peer_region = "af-south-1"
}
resource "aws_vpc_peering_connection_accepter" "af-south-1-us-east-1" {
provider = aws.af-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-af-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-ap-east-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.ap-east-1.id
peer_region = "ap-east-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-east-1-us-east-1" {
provider = aws.ap-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-east-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-ap-south-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.ap-south-1.id
peer_region = "ap-south-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-south-1-us-east-1" {
provider = aws.ap-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-ap-northeast-3" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.ap-northeast-3.id
peer_region = "ap-northeast-3"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-3-us-east-1" {
provider = aws.ap-northeast-3
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-northeast-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-ap-northeast-2" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.ap-northeast-2.id
peer_region = "ap-northeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-2-us-east-1" {
provider = aws.ap-northeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-northeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-ap-southeast-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.ap-southeast-1.id
peer_region = "ap-southeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-1-us-east-1" {
provider = aws.ap-southeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-southeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-ap-southeast-2" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.ap-southeast-2.id
peer_region = "ap-southeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-2-us-east-1" {
provider = aws.ap-southeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-southeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-ap-northeast-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-us-east-1" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-ca-central-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-us-east-1" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-eu-central-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-us-east-1" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-eu-west-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-us-east-1" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-eu-west-2" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-us-east-1" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-eu-south-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-us-east-1" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-eu-west-3" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-us-east-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-eu-north-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-us-east-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-me-south-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-us-east-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-1-sa-east-1" {
provider = aws.us-east-1
vpc_id = aws_vpc.us-east-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-us-east-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1-sa-east-1.id
auto_accept = true
}
######us-east-2#####
resource "aws_vpc_peering_connection" "us-east-2-us-west-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.us-west-1.id
peer_region = "us-west-1"
}
resource "aws_vpc_peering_connection_accepter" "us-west-1-us-east-2" {
provider = aws.us-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-us-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-us-west-2" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.us-west-2.id
peer_region = "us-west-2"
}
resource "aws_vpc_peering_connection_accepter" "us-west-2-us-east-2" {
provider = aws.us-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-us-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-af-south-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.af-south-1.id
peer_region = "af-south-1"
}
resource "aws_vpc_peering_connection_accepter" "af-south-1-us-east-2" {
provider = aws.af-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-af-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-ap-east-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.ap-east-1.id
peer_region = "ap-east-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-east-1-us-east-2" {
provider = aws.ap-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-east-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-ap-south-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.ap-south-1.id
peer_region = "ap-south-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-south-1-us-east-2" {
provider = aws.ap-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-ap-northeast-3" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.ap-northeast-3.id
peer_region = "ap-northeast-3"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-3-us-east-2" {
provider = aws.ap-northeast-3
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-northeast-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-ap-northeast-2" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.ap-northeast-2.id
peer_region = "ap-northeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-2-us-east-2" {
provider = aws.ap-northeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-northeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-ap-southeast-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.ap-southeast-1.id
peer_region = "ap-southeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-1-us-east-2" {
provider = aws.ap-southeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-southeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-ap-southeast-2" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.ap-southeast-2.id
peer_region = "ap-southeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-2-us-east-2" {
provider = aws.ap-southeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-southeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-ap-northeast-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-us-east-2" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-ca-central-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-us-east-2" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-eu-central-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-us-east-2" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-eu-west-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-us-east-2" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-eu-west-2" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-us-east-2" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-eu-south-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-us-east-2" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-eu-west-3" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-us-east-2" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-eu-north-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-us-east-2" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-me-south-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-us-east-2" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-east-2-sa-east-1" {
provider = aws.us-east-2
vpc_id = aws_vpc.us-east-2.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-us-east-2" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2-sa-east-1.id
auto_accept = true
}
######us-west-1#####
resource "aws_vpc_peering_connection" "us-west-1-us-west-2" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.us-west-2.id
peer_region = "us-west-2"
}
resource "aws_vpc_peering_connection_accepter" "us-west-2-us-west-1" {
provider = aws.us-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-us-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-af-south-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.af-south-1.id
peer_region = "af-south-1"
}
resource "aws_vpc_peering_connection_accepter" "af-south-1-us-west-1" {
provider = aws.af-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-af-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-ap-east-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.ap-east-1.id
peer_region = "ap-east-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-east-1-us-west-1" {
provider = aws.ap-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-east-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-ap-south-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.ap-south-1.id
peer_region = "ap-south-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-south-1-us-west-1" {
provider = aws.ap-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-ap-northeast-3" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.ap-northeast-3.id
peer_region = "ap-northeast-3"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-3-us-west-1" {
provider = aws.ap-northeast-3
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-northeast-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-ap-northeast-2" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.ap-northeast-2.id
peer_region = "ap-northeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-2-us-west-1" {
provider = aws.ap-northeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-northeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-ap-southeast-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.ap-southeast-1.id
peer_region = "ap-southeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-1-us-west-1" {
provider = aws.ap-southeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-southeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-ap-southeast-2" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.ap-southeast-2.id
peer_region = "ap-southeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-2-us-west-1" {
provider = aws.ap-southeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-southeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-ap-northeast-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-us-west-1" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-ca-central-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-us-west-1" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-eu-central-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-us-west-1" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-eu-west-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-us-west-1" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-eu-west-2" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-us-west-1" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-eu-south-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-us-west-1" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-eu-west-3" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-us-west-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-eu-north-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-us-west-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-me-south-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-us-west-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-1-sa-east-1" {
provider = aws.us-west-1
vpc_id = aws_vpc.us-west-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-us-west-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1-sa-east-1.id
auto_accept = true
}
######us-west-2#####
resource "aws_vpc_peering_connection" "us-west-2-af-south-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.af-south-1.id
peer_region = "af-south-1"
}
resource "aws_vpc_peering_connection_accepter" "af-south-1-us-west-2" {
provider = aws.af-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-af-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-ap-east-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.ap-east-1.id
peer_region = "ap-east-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-east-1-us-west-2" {
provider = aws.ap-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-east-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-ap-south-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.ap-south-1.id
peer_region = "ap-south-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-south-1-us-west-2" {
provider = aws.ap-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-ap-northeast-3" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.ap-northeast-3.id
peer_region = "ap-northeast-3"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-3-us-west-2" {
provider = aws.ap-northeast-3
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-northeast-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-ap-northeast-2" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.ap-northeast-2.id
peer_region = "ap-northeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-2-us-west-2" {
provider = aws.ap-northeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-northeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-ap-southeast-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.ap-southeast-1.id
peer_region = "ap-southeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-1-us-west-2" {
provider = aws.ap-southeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-southeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-ap-southeast-2" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.ap-southeast-2.id
peer_region = "ap-southeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-2-us-west-2" {
provider = aws.ap-southeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-southeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-ap-northeast-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-us-west-2" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-ca-central-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-us-west-2" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-eu-central-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-us-west-2" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-eu-west-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-us-west-2" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-eu-west-2" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-us-west-2" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-eu-south-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-us-west-2" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-eu-west-3" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-us-west-2" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-eu-north-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-us-west-2" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-me-south-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-us-west-2" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "us-west-2-sa-east-1" {
provider = aws.us-west-2
vpc_id = aws_vpc.us-west-2.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-us-west-2" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2-sa-east-1.id
auto_accept = true
}
######af-south-1#####
resource "aws_vpc_peering_connection" "af-south-1-ap-east-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.ap-east-1.id
peer_region = "ap-east-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-east-1-af-south-1" {
provider = aws.ap-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-east-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-ap-south-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.ap-south-1.id
peer_region = "ap-south-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-south-1-af-south-1" {
provider = aws.ap-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-ap-northeast-3" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.ap-northeast-3.id
peer_region = "ap-northeast-3"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-3-af-south-1" {
provider = aws.ap-northeast-3
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-northeast-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-ap-northeast-2" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.ap-northeast-2.id
peer_region = "ap-northeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-2-af-south-1" {
provider = aws.ap-northeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-northeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-ap-southeast-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.ap-southeast-1.id
peer_region = "ap-southeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-1-af-south-1" {
provider = aws.ap-southeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-southeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-ap-southeast-2" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.ap-southeast-2.id
peer_region = "ap-southeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-2-af-south-1" {
provider = aws.ap-southeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-southeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-ap-northeast-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-af-south-1" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-ca-central-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-af-south-1" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-eu-central-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-af-south-1" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-eu-west-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-af-south-1" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-eu-west-2" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-af-south-1" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-eu-south-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-af-south-1" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-eu-west-3" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-af-south-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-eu-north-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-af-south-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-me-south-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-af-south-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "af-south-1-sa-east-1" {
provider = aws.af-south-1
vpc_id = aws_vpc.af-south-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-af-south-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.af-south-1-sa-east-1.id
auto_accept = true
}
######ap-east-1#####
resource "aws_vpc_peering_connection" "ap-east-1-ap-south-1" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.ap-south-1.id
peer_region = "ap-south-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-south-1-ap-east-1" {
provider = aws.ap-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-ap-northeast-3" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.ap-northeast-3.id
peer_region = "ap-northeast-3"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-3-ap-east-1" {
provider = aws.ap-northeast-3
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-northeast-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-ap-northeast-2" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.ap-northeast-2.id
peer_region = "ap-northeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-2-ap-east-1" {
provider = aws.ap-northeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-northeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-ap-southeast-1" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.ap-southeast-1.id
peer_region = "ap-southeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-1-ap-east-1" {
provider = aws.ap-southeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-southeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-ap-southeast-2" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.ap-southeast-2.id
peer_region = "ap-southeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-2-ap-east-1" {
provider = aws.ap-southeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-southeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-ap-northeast-1" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-ap-east-1" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-ca-central-1" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-ap-east-1" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-eu-central-1" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-ap-east-1" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-eu-west-1" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-ap-east-1" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-eu-west-2" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-ap-east-1" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-eu-south-1" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-ap-east-1" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-eu-west-3" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-ap-east-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-eu-north-1" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-ap-east-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-me-south-1" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-ap-east-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-east-1-sa-east-1" {
provider = aws.ap-east-1
vpc_id = aws_vpc.ap-east-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-ap-east-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1-sa-east-1.id
auto_accept = true
}
######ap-south-1#####
resource "aws_vpc_peering_connection" "ap-south-1-ap-northeast-3" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.ap-northeast-3.id
peer_region = "ap-northeast-3"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-3-ap-south-1" {
provider = aws.ap-northeast-3
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-northeast-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-ap-northeast-2" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.ap-northeast-2.id
peer_region = "ap-northeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-2-ap-south-1" {
provider = aws.ap-northeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-northeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-ap-southeast-1" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.ap-southeast-1.id
peer_region = "ap-southeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-1-ap-south-1" {
provider = aws.ap-southeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-southeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-ap-southeast-2" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.ap-southeast-2.id
peer_region = "ap-southeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-2-ap-south-1" {
provider = aws.ap-southeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-southeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-ap-northeast-1" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-ap-south-1" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-ca-central-1" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-ap-south-1" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-eu-central-1" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-ap-south-1" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-eu-west-1" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-ap-south-1" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-eu-west-2" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-ap-south-1" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-eu-south-1" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-ap-south-1" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-eu-west-3" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-ap-south-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-eu-north-1" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-ap-south-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-me-south-1" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-ap-south-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-south-1-sa-east-1" {
provider = aws.ap-south-1
vpc_id = aws_vpc.ap-south-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-ap-south-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1-sa-east-1.id
auto_accept = true
}
######ap-northeast-3#####
resource "aws_vpc_peering_connection" "ap-northeast-3-ap-northeast-2" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.ap-northeast-2.id
peer_region = "ap-northeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-2-ap-northeast-3" {
provider = aws.ap-northeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-northeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-ap-southeast-1" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.ap-southeast-1.id
peer_region = "ap-southeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-1-ap-northeast-3" {
provider = aws.ap-southeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-southeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-ap-southeast-2" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.ap-southeast-2.id
peer_region = "ap-southeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-2-ap-northeast-3" {
provider = aws.ap-southeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-southeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-ap-northeast-1" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-ap-northeast-3" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-ca-central-1" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-ap-northeast-3" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-eu-central-1" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-ap-northeast-3" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-eu-west-1" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-ap-northeast-3" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-eu-west-2" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-ap-northeast-3" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-eu-south-1" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-ap-northeast-3" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-eu-west-3" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-ap-northeast-3" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-eu-north-1" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-ap-northeast-3" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-me-south-1" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-ap-northeast-3" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-3-sa-east-1" {
provider = aws.ap-northeast-3
vpc_id = aws_vpc.ap-northeast-3.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-ap-northeast-3" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-3-sa-east-1.id
auto_accept = true
}
######ap-northeast-2#####
resource "aws_vpc_peering_connection" "ap-northeast-2-ap-southeast-1" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.ap-southeast-1.id
peer_region = "ap-southeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-1-ap-northeast-2" {
provider = aws.ap-southeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ap-southeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-ap-southeast-2" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.ap-southeast-2.id
peer_region = "ap-southeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-2-ap-northeast-2" {
provider = aws.ap-southeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ap-southeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-ap-northeast-1" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-ap-northeast-2" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-ca-central-1" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-ap-northeast-2" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-eu-central-1" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-ap-northeast-2" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-eu-west-1" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-ap-northeast-2" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-eu-west-2" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-ap-northeast-2" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-eu-south-1" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-ap-northeast-2" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-eu-west-3" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-ap-northeast-2" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-eu-north-1" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-ap-northeast-2" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-me-south-1" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-ap-northeast-2" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-2-sa-east-1" {
provider = aws.ap-northeast-2
vpc_id = aws_vpc.ap-northeast-2.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-ap-northeast-2" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2-sa-east-1.id
auto_accept = true
}
######ap-southeast-1#####
resource "aws_vpc_peering_connection" "ap-southeast-1-ap-southeast-2" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.ap-southeast-2.id
peer_region = "ap-southeast-2"
}
resource "aws_vpc_peering_connection_accepter" "ap-southeast-2-ap-southeast-1" {
provider = aws.ap-southeast-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-ap-southeast-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-1-ap-northeast-1" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-ap-southeast-1" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-1-ca-central-1" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-ap-southeast-1" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-1-eu-central-1" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-ap-southeast-1" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-1-eu-west-1" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-ap-southeast-1" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-1-eu-west-2" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-ap-southeast-1" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-1-eu-south-1" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-ap-southeast-1" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-1-eu-west-3" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-ap-southeast-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-1-eu-north-1" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-ap-southeast-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-1-me-south-1" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-ap-southeast-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-1-sa-east-1" {
provider = aws.ap-southeast-1
vpc_id = aws_vpc.ap-southeast-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-ap-southeast-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1-sa-east-1.id
auto_accept = true
}
######ap-southeast-2#####
resource "aws_vpc_peering_connection" "ap-southeast-2-ap-northeast-1" {
provider = aws.ap-southeast-2
vpc_id = aws_vpc.ap-southeast-2.id
peer_vpc_id = aws_vpc.ap-northeast-1.id
peer_region = "ap-northeast-1"
}
resource "aws_vpc_peering_connection_accepter" "ap-northeast-1-ap-southeast-2" {
provider = aws.ap-northeast-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-ap-northeast-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-2-ca-central-1" {
provider = aws.ap-southeast-2
vpc_id = aws_vpc.ap-southeast-2.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-ap-southeast-2" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-2-eu-central-1" {
provider = aws.ap-southeast-2
vpc_id = aws_vpc.ap-southeast-2.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-ap-southeast-2" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-2-eu-west-1" {
provider = aws.ap-southeast-2
vpc_id = aws_vpc.ap-southeast-2.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-ap-southeast-2" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-2-eu-west-2" {
provider = aws.ap-southeast-2
vpc_id = aws_vpc.ap-southeast-2.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-ap-southeast-2" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-2-eu-south-1" {
provider = aws.ap-southeast-2
vpc_id = aws_vpc.ap-southeast-2.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-ap-southeast-2" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-2-eu-west-3" {
provider = aws.ap-southeast-2
vpc_id = aws_vpc.ap-southeast-2.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-ap-southeast-2" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-2-eu-north-1" {
provider = aws.ap-southeast-2
vpc_id = aws_vpc.ap-southeast-2.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-ap-southeast-2" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-2-me-south-1" {
provider = aws.ap-southeast-2
vpc_id = aws_vpc.ap-southeast-2.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-ap-southeast-2" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-southeast-2-sa-east-1" {
provider = aws.ap-southeast-2
vpc_id = aws_vpc.ap-southeast-2.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-ap-southeast-2" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2-sa-east-1.id
auto_accept = true
}
######ap-northeast-1#####
resource "aws_vpc_peering_connection" "ap-northeast-1-ca-central-1" {
provider = aws.ap-northeast-1
vpc_id = aws_vpc.ap-northeast-1.id
peer_vpc_id = aws_vpc.ca-central-1.id
peer_region = "ca-central-1"
}
resource "aws_vpc_peering_connection_accepter" "ca-central-1-ap-northeast-1" {
provider = aws.ca-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-ca-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-1-eu-central-1" {
provider = aws.ap-northeast-1
vpc_id = aws_vpc.ap-northeast-1.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-ap-northeast-1" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-1-eu-west-1" {
provider = aws.ap-northeast-1
vpc_id = aws_vpc.ap-northeast-1.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-ap-northeast-1" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-1-eu-west-2" {
provider = aws.ap-northeast-1
vpc_id = aws_vpc.ap-northeast-1.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-ap-northeast-1" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-1-eu-south-1" {
provider = aws.ap-northeast-1
vpc_id = aws_vpc.ap-northeast-1.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-ap-northeast-1" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-1-eu-west-3" {
provider = aws.ap-northeast-1
vpc_id = aws_vpc.ap-northeast-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-ap-northeast-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-1-eu-north-1" {
provider = aws.ap-northeast-1
vpc_id = aws_vpc.ap-northeast-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-ap-northeast-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-1-me-south-1" {
provider = aws.ap-northeast-1
vpc_id = aws_vpc.ap-northeast-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-ap-northeast-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ap-northeast-1-sa-east-1" {
provider = aws.ap-northeast-1
vpc_id = aws_vpc.ap-northeast-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-ap-northeast-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1-sa-east-1.id
auto_accept = true
}
######ca-central-1#####
resource "aws_vpc_peering_connection" "ca-central-1-eu-central-1" {
provider = aws.ca-central-1
vpc_id = aws_vpc.ca-central-1.id
peer_vpc_id = aws_vpc.eu-central-1.id
peer_region = "eu-central-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-central-1-ca-central-1" {
provider = aws.eu-central-1
vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-central-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ca-central-1-eu-west-1" {
provider = aws.ca-central-1
vpc_id = aws_vpc.ca-central-1.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-ca-central-1" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ca-central-1-eu-west-2" {
provider = aws.ca-central-1
vpc_id = aws_vpc.ca-central-1.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-ca-central-1" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ca-central-1-eu-south-1" {
provider = aws.ca-central-1
vpc_id = aws_vpc.ca-central-1.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-ca-central-1" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ca-central-1-eu-west-3" {
provider = aws.ca-central-1
vpc_id = aws_vpc.ca-central-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-ca-central-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ca-central-1-eu-north-1" {
provider = aws.ca-central-1
vpc_id = aws_vpc.ca-central-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-ca-central-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ca-central-1-me-south-1" {
provider = aws.ca-central-1
vpc_id = aws_vpc.ca-central-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-ca-central-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "ca-central-1-sa-east-1" {
provider = aws.ca-central-1
vpc_id = aws_vpc.ca-central-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-ca-central-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1-sa-east-1.id
auto_accept = true
}
######eu-central-1#####
resource "aws_vpc_peering_connection" "eu-central-1-eu-west-1" {
provider = aws.eu-central-1
vpc_id = aws_vpc.eu-central-1.id
peer_vpc_id = aws_vpc.eu-west-1.id
peer_region = "eu-west-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-1-eu-central-1" {
provider = aws.eu-west-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-west-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-central-1-eu-west-2" {
provider = aws.eu-central-1
vpc_id = aws_vpc.eu-central-1.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-eu-central-1" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-central-1-eu-south-1" {
provider = aws.eu-central-1
vpc_id = aws_vpc.eu-central-1.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-eu-central-1" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-central-1-eu-west-3" {
provider = aws.eu-central-1
vpc_id = aws_vpc.eu-central-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-eu-central-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-central-1-eu-north-1" {
provider = aws.eu-central-1
vpc_id = aws_vpc.eu-central-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-eu-central-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-central-1-me-south-1" {
provider = aws.eu-central-1
vpc_id = aws_vpc.eu-central-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-eu-central-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-central-1-sa-east-1" {
provider = aws.eu-central-1
vpc_id = aws_vpc.eu-central-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-eu-central-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1-sa-east-1.id
auto_accept = true
}
######eu-west-1#####
resource "aws_vpc_peering_connection" "eu-west-1-eu-west-2" {
provider = aws.eu-west-1
vpc_id = aws_vpc.eu-west-1.id
peer_vpc_id = aws_vpc.eu-west-2.id
peer_region = "eu-west-2"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-2-eu-west-1" {
provider = aws.eu-west-2
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-west-2.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-1-eu-south-1" {
provider = aws.eu-west-1
vpc_id = aws_vpc.eu-west-1.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-eu-west-1" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-1-eu-west-3" {
provider = aws.eu-west-1
vpc_id = aws_vpc.eu-west-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-eu-west-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-1-eu-north-1" {
provider = aws.eu-west-1
vpc_id = aws_vpc.eu-west-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-eu-west-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-1-me-south-1" {
provider = aws.eu-west-1
vpc_id = aws_vpc.eu-west-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-eu-west-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-1-sa-east-1" {
provider = aws.eu-west-1
vpc_id = aws_vpc.eu-west-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-eu-west-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1-sa-east-1.id
auto_accept = true
}
######eu-west-2#####
resource "aws_vpc_peering_connection" "eu-west-2-eu-south-1" {
provider = aws.eu-west-2
vpc_id = aws_vpc.eu-west-2.id
peer_vpc_id = aws_vpc.eu-south-1.id
peer_region = "eu-south-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-south-1-eu-west-2" {
provider = aws.eu-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-eu-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-2-eu-west-3" {
provider = aws.eu-west-2
vpc_id = aws_vpc.eu-west-2.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-eu-west-2" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-2-eu-north-1" {
provider = aws.eu-west-2
vpc_id = aws_vpc.eu-west-2.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-eu-west-2" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-2-me-south-1" {
provider = aws.eu-west-2
vpc_id = aws_vpc.eu-west-2.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-eu-west-2" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-2-sa-east-1" {
provider = aws.eu-west-2
vpc_id = aws_vpc.eu-west-2.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-eu-west-2" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2-sa-east-1.id
auto_accept = true
}
######eu-south-1#####
resource "aws_vpc_peering_connection" "eu-south-1-eu-west-3" {
provider = aws.eu-south-1
vpc_id = aws_vpc.eu-south-1.id
peer_vpc_id = aws_vpc.eu-west-3.id
peer_region = "eu-west-3"
}
resource "aws_vpc_peering_connection_accepter" "eu-west-3-eu-south-1" {
provider = aws.eu-west-3
vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-eu-west-3.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-south-1-eu-north-1" {
provider = aws.eu-south-1
vpc_id = aws_vpc.eu-south-1.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-eu-south-1" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-south-1-me-south-1" {
provider = aws.eu-south-1
vpc_id = aws_vpc.eu-south-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-eu-south-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-south-1-sa-east-1" {
provider = aws.eu-south-1
vpc_id = aws_vpc.eu-south-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-eu-south-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-south-1-sa-east-1.id
auto_accept = true
}
######eu-west-3#####
resource "aws_vpc_peering_connection" "eu-west-3-eu-north-1" {
provider = aws.eu-west-3
vpc_id = aws_vpc.eu-west-3.id
peer_vpc_id = aws_vpc.eu-north-1.id
peer_region = "eu-north-1"
}
resource "aws_vpc_peering_connection_accepter" "eu-north-1-eu-west-3" {
provider = aws.eu-north-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3-eu-north-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-3-me-south-1" {
provider = aws.eu-west-3
vpc_id = aws_vpc.eu-west-3.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-eu-west-3" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-west-3-sa-east-1" {
provider = aws.eu-west-3
vpc_id = aws_vpc.eu-west-3.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-eu-west-3" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3-sa-east-1.id
auto_accept = true
}
######eu-north-1#####
resource "aws_vpc_peering_connection" "eu-north-1-me-south-1" {
provider = aws.eu-north-1
vpc_id = aws_vpc.eu-north-1.id
peer_vpc_id = aws_vpc.me-south-1.id
peer_region = "me-south-1"
}
resource "aws_vpc_peering_connection_accepter" "me-south-1-eu-north-1" {
provider = aws.me-south-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-north-1-me-south-1.id
auto_accept = true
}
resource "aws_vpc_peering_connection" "eu-north-1-sa-east-1" {
provider = aws.eu-north-1
vpc_id = aws_vpc.eu-north-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-eu-north-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.eu-north-1-sa-east-1.id
auto_accept = true
}
######me-south-1#####
resource "aws_vpc_peering_connection" "me-south-1-sa-east-1" {
provider = aws.me-south-1
vpc_id = aws_vpc.me-south-1.id
peer_vpc_id = aws_vpc.sa-east-1.id
peer_region = "sa-east-1"
}
resource "aws_vpc_peering_connection_accepter" "sa-east-1-me-south-1" {
provider = aws.sa-east-1
vpc_peering_connection_id = aws_vpc_peering_connection.me-south-1-sa-east-1.id
auto_accept = true
}


#
resource "aws_instance" "us-east-1" {
  provider        = aws
  ami             = "ami-0d5eff06f840b45e9"
  instance_type   = "t2.micro"
  key_name        = "us-east-1-nvirginia"
  subnet_id       = aws_subnet.us-east-1.id
  security_groups = [aws_security_group.us-east-1.id]
  user_data       = ""
}

resource "aws_instance" "us-east-2" {
  provider        = aws.us-east-2
  ami             = "ami-077e31c4939f6a2f3"
  instance_type   = "t2.micro"
  key_name        = "us-east-2-ohio"
  subnet_id       = aws_subnet.us-east-2.id
  security_groups = [aws_security_group.us-east-2.id]
  user_data       = ""
}

resource "aws_instance" "us-west-1" {
  provider        = aws.us-west-1
  ami             = "ami-04468e03c37242e1e"
  instance_type   = "t2.micro"
  key_name        = "us-west-1-ncalifornia"
  subnet_id       = aws_subnet.us-west-1.id
  security_groups = [aws_security_group.us-west-1.id]
  user_data       = ""
}

resource "aws_instance" "us-west-2" {
  provider        = aws.us-west-2
  ami             = "ami-0cf6f5c8a62fa5da6"
  instance_type   = "t2.micro"
  key_name        = "us-west-2-oregon"
  subnet_id       = aws_subnet.us-west-2.id
  security_groups = [aws_security_group.us-west-2.id]
  user_data       = ""
}
resource "aws_instance" "af-south-1" {
  provider        = aws.af-south-1
  ami             = "ami-0936d2754993c364e"
  instance_type   = "t3.micro"
  key_name        = "af-south-1-capetown"
  subnet_id       = aws_subnet.af-south-1.id
  security_groups = [aws_security_group.af-south-1.id]
  user_data       = ""
}
resource "aws_instance" "ap-east-1" {
  provider        = aws.ap-east-1
  ami             = "ami-0aca22cb23f122f27"
  instance_type   = "t3.micro"
  key_name        = "ap-east-1-hongkong"
  subnet_id       = aws_subnet.ap-east-1.id
  security_groups = [aws_security_group.ap-east-1.id]
  user_data       = ""
}
resource "aws_instance" "ap-south-1" {
  provider        = aws.ap-south-1
  ami             = "ami-010aff33ed5991201"
  instance_type   = "t2.micro"
  key_name        = "ap-south-1-mumbai"
  subnet_id       = aws_subnet.ap-south-1.id
  security_groups = [aws_security_group.ap-south-1.id]
  user_data       = ""
}
resource "aws_instance" "ap-northeast-3" {
  provider        = aws.ap-northeast-3
  ami             = "ami-056314235f4f5d523"
  instance_type   = "t2.micro"
  key_name        = "ap-northeast-3-osaka"
  subnet_id       = aws_subnet.ap-northeast-3.id
  security_groups = [aws_security_group.ap-northeast-3.id]
  user_data       = ""
}
resource "aws_instance" "ap-northeast-2" {
  provider        = aws.ap-northeast-2
  ami             = "ami-0f2c95e9fe3f8f80e"
  instance_type   = "t2.micro"
  key_name        = "ap-northeast-2-seoul"
  subnet_id       = aws_subnet.ap-northeast-2.id
  security_groups = [aws_security_group.ap-northeast-2.id]
  user_data       = ""
}
resource "aws_instance" "ap-southeast-1" {
  provider        = aws.ap-southeast-1
  ami             = "ami-02f26adf094f51167"
  instance_type   = "t2.micro"
  key_name        = "ap-southeast-1-singapore"
  subnet_id       = aws_subnet.ap-southeast-1.id
  security_groups = [aws_security_group.ap-southeast-1.id]
  user_data       = ""
}
resource "aws_instance" "ap-southeast-2" {
  provider        = aws.ap-southeast-2
  ami             = "ami-0186908e2fdeea8f3"
  instance_type   = "t2.micro"
  key_name        = "ap-southeast-2-sydney"
  subnet_id       = aws_subnet.ap-southeast-2.id
  security_groups = [aws_security_group.ap-southeast-2.id]
  user_data       = ""
}
resource "aws_instance" "ap-northeast-1" {
  provider        = aws.ap-northeast-1
  ami             = "ami-0ca38c7440de1749a"
  instance_type   = "t2.micro"
  key_name        = "ap-northeast-1-tokyo"
  subnet_id       = aws_subnet.ap-northeast-1.id
  security_groups = [aws_security_group.ap-northeast-1.id]
  user_data       = ""
}
resource "aws_instance" "ca-central-1" {
  provider        = aws.ca-central-1
  ami             = "ami-0101734ab73bd9e15"
  instance_type   = "t2.micro"
  key_name        = "ca-central-1-central"
  subnet_id       = aws_subnet.ca-central-1.id
  security_groups = [aws_security_group.ca-central-1.id]
  user_data       = ""
}
resource "aws_instance" "eu-central-1" {
  provider        = aws.eu-central-1
  ami             = "ami-043097594a7df80ec"
  instance_type   = "t2.micro"
  key_name        = "eu-central-1-frankfurt"
  subnet_id       = aws_subnet.eu-central-1.id
  security_groups = [aws_security_group.eu-central-1.id]
  user_data       = ""
}
resource "aws_instance" "eu-west-1" {
  provider        = aws.eu-west-1
  ami             = "ami-063d4ab14480ac177"
  instance_type   = "t2.micro"
  key_name        = "eu-west-1-ireland"
  subnet_id       = aws_subnet.eu-west-1.id
  security_groups = [aws_security_group.eu-west-1.id]
  user_data       = ""
}
resource "aws_instance" "eu-west-2" {
  provider        = aws.eu-west-2
  ami             = "ami-06dc09bb8854cbde3"
  instance_type   = "t2.micro"
  key_name        = "eu-west-2-london"
  subnet_id       = aws_subnet.eu-west-2.id
  security_groups = [aws_security_group.eu-west-2.id]
  user_data       = ""
}
resource "aws_instance" "eu-south-1" {
  provider        = aws.eu-south-1
  ami             = "ami-0f447354763f0eaac"
  instance_type   = "t3.micro"
  key_name        = "eu-south-1-milan"
  subnet_id       = aws_subnet.eu-south-1.id
  security_groups = [aws_security_group.eu-south-1.id]
  user_data       = ""
}
resource "aws_instance" "eu-west-3" {
  provider        = aws.eu-west-3
  ami             = "ami-0b3e57ee3b63dd76b"
  instance_type   = "t2.micro"
  key_name        = "eu-west-3-pairs"
  subnet_id       = aws_subnet.eu-west-3.id
  security_groups = [aws_security_group.eu-west-3.id]
  user_data       = ""
}
resource "aws_instance" "eu-north-1" {
  provider        = aws.eu-north-1
  ami             = "ami-050fdc53cf6ba8f7f"
  instance_type   = "t3.micro"
  key_name        = "eu-north-1-stockholm"
  subnet_id       = aws_subnet.eu-north-1.id
  security_groups = [aws_security_group.eu-north-1.id]
  user_data       = ""
}
resource "aws_instance" "me-south-1" {
  provider        = aws.me-south-1
  ami             = "ami-0880769bc15eeec4f"
  instance_type   = "t3.micro"
  key_name        = "me-south-1-bahrain"
  subnet_id       = aws_subnet.me-south-1.id
  security_groups = [aws_security_group.me-south-1.id]
  user_data       = ""
}
resource "aws_instance" "sa-east-1" {
  provider        = aws.sa-east-1
  ami             = "ami-05373777d08895384"
  instance_type   = "t2.micro"
  key_name        = "sa-east-1-SaoPaulo"
  subnet_id       = aws_subnet.sa-east-1.id
  security_groups = [aws_security_group.sa-east-1.id]
  user_data       = ""
}
