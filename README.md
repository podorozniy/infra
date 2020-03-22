# Micorservices


Applying a startup script from bucket:
gsutil cp D:\documents\devops-otus\infra\infra\startup_script.sh gs://puma-canvas-victor-271415/
gsutil acl ch -u $SA:O gs://puma-canvas-victor-271415/startup_script.sh
gcloud compute instances create --boot-disk-size=10GB --image=ubuntu-1604-xenial-v20170815a --image-project=ubuntu-os-cloud --machine-type=g1-small --tags puma-server --restart-on-failure --zone=europe-west1-b reddit-app --metadata startup-script-url=gs://puma-canvas-victor-271415/startup_script-all.sh

Applying a startup script to running instances:
gcloud compute instances add-metadata reddit-app --zone=europe-west1-b --metadata startup-script-url=gs://puma-canvas-victor-271415/startup_script-all.sh

Add bucket to VM
gsutil mb -p canvas-victor-271415 -c NEARLINE -l europe-west1 -b on gs://puma-canvas-victor-271415/



Run inside VM:
sudo google_metadata_script_runner --script-type startup --debug
