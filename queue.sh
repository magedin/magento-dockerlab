#!/usr/bin/env bash

source ~/.bashrc

#bin/magento mimercado:orders_invoice:collect -o 5812
#bin/magento mimercado:orders_invoice:collect
bin/magento q:c:s mimercado.order.invoice.consumer

