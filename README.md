# kolide-aws-quickstart
## Kolide Fleet on AWS Fargate: a CloudFormation Samples Repository

This repository complements [Poka's Blog Post](https://medium.com/poka-techblog/kolide-fleet-on-aws-fargate-a-quick-start-guide-b77000025206) about installing Kolide Fleet on AWS.

You will find here everything you need in order to deploy [Kolide Fleet](https://www.kolide.co/) using AWS's Fargate service. It makes heavy use of `Fn::ImportValue`, but this is intended for the reader to replace those values with it's own. The values impoted this way are all exported in the resources located in the `prerequisites` folder.
