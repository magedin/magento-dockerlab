#!/usr/bin/env bash

source ~/.bashrc

# bin/n98 sys:cron:run mimercado_miraklpayondelivery_processorder
bin/magento mimercado:miraklorderprocess "000005866"

