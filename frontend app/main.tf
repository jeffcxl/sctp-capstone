
###=============Application Load Balancer=============###
#provision security group for application load balancer
resource "aws_security_group" "db_alb_sg" {
  name        = "db-alb-sg"
  description = "Allow inbound public traffic and outbound ASG"
  vpc_id      = data.aws_vpc.selected.id
  tags = {
    Name = "security_grp_alb_load_balancer"
  }

  ingress {
    description      = "TLS from outside world"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #allows traffic from internet

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]

  }
}


resource "aws_lb" "db_alb" {
  name               = "db-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.db_alb_sg.id]
  subnets            = data.aws_subnets.public.ids #expose alb to public subnets

  tags = {
    Environment = "production"
  }
}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.db_alb.arn
  port              = "80"
  protocol          = "HTTP"


  default_action {
    type = "forward"
    forward {
      target_group {
        arn = aws_lb_target_group.db.arn
      }

      stickiness { #ensure users access the same ec2 for 600s duration
        enabled  = true
        duration = 30
      }
    }
  }
}
