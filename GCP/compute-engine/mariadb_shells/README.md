# Instructions

# Create an instance on GCP 'Compute Engine'

Equivalent code (in process):

```
gcloud compute instances create <instance_name> --project=<project_name> --zone=us-central1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default --maintenance-policy=MIGRATE --provisioning-model=STANDARD --service-account=620836759706-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/cloud-platform --tags=http-server,https-server,lb-health-check --create-disk=auto-delete=yes,boot=yes,device-name=<instance_name>,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240515,mode=rw,size=80,type=projects/bigdata2-423718/zones/us-central1-a/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-ec-src=vm_add-gcloud --reservation-affinity=any
```

```
gcloud compute instances create <instance_name> \
    --project=<project-name> \
    --zone=us-central1-a \
    --machine-type=e2-medium \
    --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default \
    --maintenance-policy=MIGRATE \
    --provisioning-model=STANDARD \
    --service-account=<service_account>-compute@developer.gserviceaccount.com \
    --scopes=https://www.googleapis.com/auth/cloud-platform \
    --tags=http-server,https-server,lb-health-check \
    --create-disk=auto-delete=yes,boot=yes,device-name=instance-20240529-231717,image=projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20240519,mode=rw,size=10,type=projects/<project_name>/zones/us-central1-a/diskTypes/pd-balanced \
    --no-shielded-secure-boot \
    --shielded-vtpm \
    --shielded-integrity-monitoring \
    --labels=goog-ec-src=vm_add-gcloud \
    --reservation-affinity=any
```

## Cloning a Single Directory from a GitHub Repository

You can clone a single directory from a GitHub repository by using a combination of Git sparse-checkout and filter features. Follow these steps:

1. **Update and upgrade system**
    ```bash
    sudo apt get update
    sudo apt get upgrade
    ```

2. **Create filename**
    ```bash
    mkdir codes
    cd codes
    ```

3. **Initialize a new Git repository:**
    ```bash
    git init
    ```

4. **Add the remote repository::**
    ```bash
    git remote add origin https://github.com/Anonymate054/MCD-BigData.git
    ```

5. **Enable the sparse-checkout feature:**
    ```bash
    git config core.sparseCheckout true
    ```

6. **Specify the directory you want to clone:**
    ```bash
    echo "GCP/compute-engine/mariadb_shells/*" >> .git/info/sparse-checkout
    ```

7. **Pull the specified directory from the remote repository:**
    ```bash
    git pull origin main
    ```

## Instalations of mariadb

1. **Move to files:**
    ```bash
    cd GCP/compute-engine/mariadb_shells
    ```

2. **Grand persitions:**
    ```bash
    chmod +x 1_instalar_mariadb_easy.sh
    ```

3. **Run script:**
    ```bash
    sudo ./1_instalar_mariadb_easy.sh
    ```

4. **Create user root:**
    Follow instructions, for root password, press enter (since it's the first time) and then set a new one, in this case Example123, everything else `YES` or `y`.

5. **Check if the system is running:**
    ```bash
    sudo systemctl status mariadb
    ```

6. **Grand persitions:**
    ```bash
    chmod +x 2_crear_usuario.sh
    ```

7. **Run script:**
    ```bash
    sudo ./2_crear_usuario.sh
    ```

8. **Test connection**
    ```bash
    mysql -u big_data_user -p
    ```
    
9. **Grand persitions:**
    ```bash
    chmod +x 3_modificar_configuracion.sh
    ```

10. **Run script:**
    ```bash
    sudo ./3_modificar_configuracion.sh
    ```

11. **Grand persitions:**
    ```bash
    chmod +x 4_crear_regla_vpc.sh
    ```

12. **Run script:**
    ```bash
    sudo ./4_crear_regla_vpc.sh
    ```

13. **Reboot system:**
    ```bash
    sudo reboot
    ```

## MariaDB

1. **Create Database**
```sql
MariaDB [(none)]> CREATE DATABASE QQP;
```

2. **Create Table:**

```sql
MariaDB [(none)]> USE QQP;
MariaDB [QQP]> CREATE TABLE QQP.aggregated (
  `fecha` longtext DEFAULT NULL,
  `fecha_year` int(11) DEFAULT NULL,
  `fecha_month` int(11) DEFAULT NULL,
  `producto` longtext DEFAULT NULL,
  `descripcion` longtext DEFAULT NULL,
  `count_marca` bigint(20) NOT NULL,
  `count_tiendas` bigint(20) NOT NULL,
  `count_estados` bigint(20) NOT NULL,
  `count_municipios` bigint(20) NOT NULL,
  `precio_avg` decimal(22,6) DEFAULT NULL,
  `precio_desv_std` double DEFAULT NULL,
  `precio_median` decimal(18,2) DEFAULT NULL,
  `precio_max` decimal(18,2) DEFAULT NULL,
  `precio_min` decimal(18,2) DEFAULT NULL
);
```
