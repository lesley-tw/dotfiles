# aws login cron job
alias reload-credentials="rm $HOME/.config/aws/credentials $HOME/.config/aws/config && \
                        launchctl unload -w $HOME/Library/LaunchAgents/com.aws.key.rotate.plist && \
                        launchctl load -w $HOME/Library/LaunchAgents/com.aws.key.rotate.plist"

alias deploy="g tag -f $tag && g push -f origin $tag"

# eks config
alias config-eks-spn-d="aws --profile spn-dev eks update-kubeconfig --name spn-eks-dev --alias spn-dev"
alias config-eks-spn-s="aws --profile spn-stg eks update-kubeconfig --name spn-eks-stg --alias spn-stg"
alias config-eks-spn-p="aws --profile spn-prod eks update-kubeconfig --name spn-eks-prod --alias spn-prod"
alias config-eks-tmcti-d="aws --profile tmcti-dev eks update-kubeconfig --name spn-dev-us-west-2-tmcti-eks --alias tmcti-dev"
alias config-eks-tmcti-s="aws --profile tmcti-stg eks update-kubeconfig --name spn-stg-us-east-1-tmcti-eks --alias tmcti-stg"
alias config-eks-tmcti-p="aws --profile tmcti-prod eks update-kubeconfig --name spn-prod-us-west-2-tmcti-eks --alias tmcti-prod"

# awscli
alias awsd="aws --profile spn-dev"
alias awss="aws --profile spn-stg"
alias awsp="aws --profile spn-prod"

# k9s
alias k9sd="k9s --context arn:aws:eks:us-west-2:137392466555:cluster/spn-eks-dev"
alias k9ss="k9s --context arn:aws:eks:us-east-1:417595665359:cluster/spn-eks-stg"
alias k9sp="k9s --context arn:aws:eks:us-west-2:037074653427:cluster/spn-eks-prod"
alias k9skd="k9s --context spn-dev-us-west-2-tmcti-eks"
alias k9sks="k9s --context arn:aws:eks:us-east-1:599734981864:cluster/spn-stg-us-east-1-tmcti-eks"
alias k9skp="k9s --context spn-prod-us-west-2-tmcti-eks"
alias k9sad="k9s --context arn:aws:eks:us-east-1:741680722506:cluster/tip-dev-us-east-1-aladdin-eks"
alias k9sai="k9s --context arn:aws:eks:us-east-1:038297113767:cluster/tip-int-us-east-1-aladdin-eks"
alias k9sas="k9s --context arn:aws:eks:us-east-1:038297113767:cluster/tip-stg-us-east-1-aladdin-eks"
alias k9saseu="k9s --context arn:aws:eks:eu-central-1:038297113767:cluster/tip-stg-eu-central-1-aladdin-eks"
alias k9sap="k9s --context arn:aws:eks:us-east-1:733158308344:cluster/tip-prod-us-east-1-aladdin-eks"
alias k9sapeu="k9s --context arn:aws:eks:eu-central-1:733158308344:cluster/tip-prod-eu-central-1-aladdin-eks"
alias k9saps="k9s --context arn:aws:eks:ap-south-1:733158308344:cluster/tip-prod-ap-south-1-aladdin-eks"
alias k9sapse1="k9s --context arn:aws:eks:ap-southeast-1:733158308344:cluster/tip-prod-ap-southeast-1-aladdin-eks"
alias k9sapse2="k9s --context arn:aws:eks:ap-southeast-2:733158308344:cluster/tip-prod-ap-southeast-2-aladdin-eks"
alias k9sapne1="k9s --context arn:aws:eks:ap-northeast-1:733158308344:cluster/tip-prod-ap-northeast-1-aladdin-eks"
alias k9sapme="k9s --context arn:aws:eks:me-central-1:733158308344:cluster/tip-prod-me-central-1-aladdin-eks"
alias k9sapuk="k9s --context arn:aws:eks:eu-west-2:733158308344:cluster/tip-prod-eu-west-2-aladdin-eks"
alias k9svd="k9s --context arn:aws:eks:us-east-1:741680722506:cluster/v1sl-dev-us-east-1-v1streamlake-eks"
alias k9svi="k9s --context arn:aws:eks:us-east-1:038297113767:cluster/v1sl-int-us-east-1-v1streamlake-eks"
alias k9svs="k9s --context arn:aws:eks:us-east-1:038297113767:cluster/v1sl-stg-us-east-1-v1streamlake-eks"
alias k9svseu="k9s --context arn:aws:eks:eu-central-1:038297113767:cluster/v1sl-stg-eu-central-1-v1streamlake-eks"
alias k9svp="k9s --context arn:aws:eks:us-east-1:733158308344:cluster/v1sl-prod-us-east-1-v1streamlake-eks"
alias k9svpeu="k9s --context arn:aws:eks:eu-central-1:733158308344:cluster/v1sl-prod-eu-central-1-v1streamlake-eks"
alias k9svps="k9s --context arn:aws:eks:ap-south-1:733158308344:cluster/v1sl-prod-ap-south-1-v1streamlake-eks"
alias k9svpse1="k9s --context arn:aws:eks:ap-southeast-1:733158308344:cluster/v1sl-prod-ap-southeast-1-v1streamlake-eks"
alias k9svpse2="k9s --context arn:aws:eks:ap-southeast-2:733158308344:cluster/v1sl-prod-ap-southeast-2-v1streamlake-eks"
alias k9svpne1="k9s --context arn:aws:eks:ap-northeast-1:733158308344:cluster/v1sl-prod-ap-northeast-1-v1streamlake-eks"
alias k9svpme="k9s --context arn:aws:eks:me-central-1:733158308344:cluster/v1sl-prod-me-central-1-v1streamlake-eks"
alias k9svpuk="k9s --context arn:aws:eks:eu-west-2:733158308344:cluster/v1sl-prod-eu-west-2-v1streamlake-eks"
alias k9stcpt="k9s --context arn:aws:eks:us-east-1:284744337008:cluster/mgcp-test-eks-default-us-east-1"
alias k9stcps="k9s --context arn:aws:eks:us-east-1:815465536043:cluster/mgcp-stag-eks-default-us-east-1"

# kubectl
alias kd="kubectl --context arn:aws:eks:us-west-2:137392466555:cluster/spn-eks-dev"
alias ks="kubectl --context arn:aws:eks:us-east-1:417595665359:cluster/spn-eks-stg"
alias kp="kubectl --context arn:aws:eks:us-west-2:037074653427:cluster/spn-eks-prod"
alias kkd="kubectl --context spn-dev-us-west-2-tmcti-eks"
alias kks="kubectl --context arn:aws:eks:us-east-1:599734981864:cluster/spn-stg-us-east-1-tmcti-eks"
alias kkp="kubectl --context spn-prod-us-west-2-tmcti-eks"
alias kad="kubectl --context arn:aws:eks:us-east-1:741680722506:cluster/tip-dev-us-east-1-aladdin-eks"
alias kai="kubectl --context arn:aws:eks:us-east-1:038297113767:cluster/tip-int-us-east-1-aladdin-eks"
alias kas="kubectl --context arn:aws:eks:us-east-1:038297113767:cluster/tip-stg-us-east-1-aladdin-eks"
alias kaseu="kubectl --context arn:aws:eks:eu-central-1:038297113767:cluster/tip-stg-eu-central-1-aladdin-eks"
alias kap="kubectl --context arn:aws:eks:us-east-1:733158308344:cluster/tip-prod-us-east-1-aladdin-eks"
alias kapeu="kubectl --context arn:aws:eks:eu-central-1:733158308344:cluster/tip-prod-eu-central-1-aladdin-eks"
alias kaps="kubectl --context arn:aws:eks:ap-south-1:733158308344:cluster/tip-prod-ap-south-1-aladdin-eks"
alias kapse1="kubectl --context arn:aws:eks:ap-southeast-1:733158308344:cluster/tip-prod-ap-southeast-1-aladdin-eks"
alias kapse2="kubectl --context arn:aws:eks:ap-southeast-2:733158308344:cluster/tip-prod-ap-southeast-2-aladdin-eks"
alias kapne1="kubectl --context arn:aws:eks:ap-northeast-1:733158308344:cluster/tip-prod-ap-northeast-1-aladdin-eks"
alias kapme="kubectl --context arn:aws:eks:me-central-1:733158308344:cluster/tip-prod-me-central-1-aladdin-eks"
alias kapuk="kubectl --context arn:aws:eks:eu-west-2:733158308344:cluster/tip-prod-eu-west-2-aladdin-eks"
alias kvd="kubectl --context arn:aws:eks:us-east-1:741680722506:cluster/v1sl-dev-us-east-1-v1streamlake-eks"
alias kvi="kubectl --context arn:aws:eks:us-east-1:038297113767:cluster/v1sl-int-us-east-1-v1streamlake-eks"
alias kvs="kubectl --context arn:aws:eks:us-east-1:038297113767:cluster/v1sl-stg-us-east-1-v1streamlake-eks"
alias kvseu="kubectl --context arn:aws:eks:eu-central-1:038297113767:cluster/v1sl-stg-eu-central-1-v1streamlake-eks"
alias kvp="kubectl --context arn:aws:eks:us-east-1:733158308344:cluster/v1sl-prod-us-east-1-v1streamlake-eks"
alias kvpeu="kubectl --context arn:aws:eks:eu-central-1:733158308344:cluster/v1sl-prod-eu-central-1-v1streamlake-eks"
alias kvps="kubectl --context arn:aws:eks:ap-south-1:733158308344:cluster/v1sl-prod-ap-south-1-v1streamlake-eks"
alias kvpse1="kubectl --context arn:aws:eks:ap-southeast-1:733158308344:cluster/v1sl-prod-ap-southeast-1-v1streamlake-eks"
alias kvpse2="kubectl --context arn:aws:eks:ap-southeast-2:733158308344:cluster/v1sl-prod-ap-southeast-2-v1streamlake-eks"
alias kvpne1="kubectl --context arn:aws:eks:ap-northeast-1:733158308344:cluster/v1sl-prod-ap-northeast-1-v1streamlake-eks"
alias kvpme="kubectl --context arn:aws:eks:me-central-1:733158308344:cluster/v1sl-prod-me-central-1-v1streamlake-eks"
alias kvpuk="kubectl --context arn:aws:eks:eu-west-2:733158308344:cluster/v1sl-prod-eu-west-2-v1streamlake-eks"
alias ktcpt="kubectl --context arn:aws:eks:us-east-1:284744337008:cluster/mgcp-test-eks-default-us-east-1"
alias ktcps="kubectl --context arn:aws:eks:us-east-1:815465536043:cluster/mgcp-stag-eks-default-us-east-1"

# kubens/kubectx
alias kubens="kubectl config set-context --current --namespace "
alias kubectx="kubectl config use-context "

alias login-ecr-spn-dev="aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 137392466555.dkr.ecr.us-west-2.amazonaws.com"
alias login-ecr-spn-stg="aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 417595665359.dkr.ecr.us-east-1.amazonaws.com"
alias login-ecr-spn-prod="aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 037074653427.dkr.ecr.us-west-2.amazonaws.com"
alias login-ecr-aladdin-dev="aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 741680722506.dkr.ecr.us-east-1.amazonaws.com"
alias login-ecr-aladdin-stg="aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 038297113767.dkr.ecr.us-east-1.amazonaws.com"
alias login-ecr-aladdin-prod="aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 733158308344.dkr.ecr.us-east-1.amazonaws.com"

alias start-open-webui='docker run -d \
  -p 8080:8080 \
  -e WEBUI_NAME="Lesley Playground" \
  -e OPENAI_API_BASE_URLS=https://api.rdsec.trendmicro.com/prod/aiendpoint/v1/ \
  -e OPENAI_API_KEYS=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiQUktMTc0NjAwMjgwNjU0NSIsInJvbGVzIjpbIjM1Il0sInVzZXJfaWQiOjM0MjcsInVzZXJuYW1lIjoibGVzbGV5X2xpbiIsInJvbGVfbmFtZXMiOlsiUk9QLWFpZW5kcG9pbnQtVXNlciJdLCJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzUzNzc4ODA3LCJqdGkiOiJhNmE2ZGI4ZS0yNTlmLTExZjAtOGM2ZS1jNmQ0ODRmMzk0ZWIiLCJ2ZXJzaW9uIjoiMjAyNC0xMS0wMSJ9.6vUqUsFF_3QITLILTJJYTDh8VEv-9kMNgdnb5qu99z0 \
  -e ENABLE_OLLAMA_API=False \
  -e WEBUI_AUTH=False \
  -e ENABLE_SIGNUP=False \
  --name open-webui \
  -v open-webui:/app/backend/data \
  ghcr.io/open-webui/open-webui:main'
alias stop-open-webui="docker stop open-webui && docker rm open-webui"
