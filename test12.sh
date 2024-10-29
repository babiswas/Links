https://stackoverflow.com/questions/63241009/aws-sts-assume-role-in-one-command
aws configure list-profiles
eval $(aws sts assume-role --role-arn arn:aws:iam::123456789123:role/myAwesomeRole --role-session-name test | jq -r '.Credentials | "export AWS_ACCESS_KEY_ID=\(.AccessKeyId)\nexport AWS_SECRET_ACCESS_KEY=\(.SecretAccessKey)\nexport AWS_SESSION_TOKEN=\(.SessionToken)\n"')

Account1    Account2
                 Resource 
                 Role to access the resource
                 Policy attached to the role.
<--------Trust----->
https://www.youtube.com/watch?v=CnvfO12zWaY

Trust Types
===========
1.Across accounts.
2.Third party
3.Conditional(Two factor auth,ip adress)
4.Preventing across orgs and allowing services from anywhere.


