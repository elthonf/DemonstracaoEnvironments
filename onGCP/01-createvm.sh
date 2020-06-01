#$PROJECT_ID=curso-gcp-ml-tensorflow
#unset DEVSHELL_PROJECT_ID

if [ ! -z "$DEVSHELL_PROJECT_ID" ] && [ -z "$PROJECT_ID" ]
then
  PROJECT_ID=$DEVSHELL_PROJECT_ID
fi

if [ -z "$PROJECT_ID" ]
then
  read -p "Enter the project ID: "  PROJECT_ID
fi
#$PROJECT_ID=curso-gcp-ml-tensorflow

echo "Usando PROJECT_ID: $PROJECT_ID"


echo "Cria a máquina 'vm-fiap-plataformas' no projeto $PROJECT_ID"

gcloud compute --project=$PROJECT_ID instances create vm-fiap-plataformas \
  --zone=us-east1-b \
  --machine-type=n1-standard-1 --subnet=default \
  --tags=http-server,https-server,fiap-plataformas \
  --image=ubuntu-1804-bionic-v20200529 \
  --image-project=ubuntu-os-cloud \
  --boot-disk-size=20GB --boot-disk-type=pd-standard --boot-disk-device-name=vm-fiap-plataformas \
  --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring

echo "Cria a regra de firewall 'firewall-fiap-plataformas' no projeto $PROJECT_ID"

gcloud compute --project=$PROJECT_ID firewall-rules create firewall-fiap-plataformas \
   --description=Libera\ portas\ necess\árias\ para\ pr\áticas\ de\ plataformas\ cognitivas \
   --direction=INGRESS --priority=1000 --network=default --action=ALLOW \
   --rules=tcp:1234,tcp:1235,tcp:1236,tcp:1237 \
   --source-ranges=0.0.0.0/0 \
   --target-tags=fiap-plataformas

