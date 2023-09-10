Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 115E0799E52
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 14:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7043C10E189;
	Sun, 10 Sep 2023 12:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A15010E189
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Sep 2023 12:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694349875; x=1725885875;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u7vPpCSPJXv1pex7IzEFSkwY0xxbQodux2m3z1AGbnI=;
 b=T8HjSFnPYgV/ZR71mI1sO5PX1DmETS3RNHx3A4ZTx/m10E4X9AqEaQZG
 cEOUh6YbsRyBT6H3OtttIIBLijYKZ1cnbDlI5qZsfHIAn6NQ7KCBpha8j
 8ABFiannf0ON5jq1Eyh8xh3CkWb/oi+WVmA4g2vGdREageE8B/8pokqM6
 yG8OwblssC3oOGe1HzI+2xdTWMdQ54bV8uBBnMMCSFP/7y92Prx74N4TP
 Z8UHkK5JAbDMbYrqLbVl00fxAwq0WHsy9nLQcXs5YcD2V3iAn4Eor1+VA
 3dttStQ9/n9Zs2Rt20CD4QP6w7VdJlAFoUPrV/3zzQiKtRVkj+hPGLtqT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="441907095"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="441907095"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="1073815024"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="1073815024"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:32 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 10 Sep 2023 15:39:42 +0300
Message-Id: <20230910123949.1251964-4-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230910123949.1251964-1-alexander.usyskin@intel.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/10] drm/i915/spi: add driver for on-die spi
 device
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-mtd@lists.infradead.org, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

Add auxiliary driver for i915 on-die spi device.

CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/i915/Kconfig             |   1 +
 drivers/gpu/drm/i915/Makefile            |   3 +
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 141 +++++++++++++++++++++++
 3 files changed, 145 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi_drv.c

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index ce397a8797f7..c13d25658d87 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -39,6 +39,7 @@ config DRM_I915
 	select DRM_TTM
 	select DRM_BUDDY
 	select AUXILIARY_BUS
+	select MTD
 	help
 	  Choose this option if you have a system that has "Intel Graphics
 	  Media Accelerator" or "HD Graphics" integrated graphics,
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index f16870ad2615..544e39448c3c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -393,6 +393,9 @@ ifdef CONFIG_DRM_I915_WERROR
     cmd_checkdoc = $(srctree)/scripts/kernel-doc -none -Werror $<
 endif
 
+obj-m += i915_spi.o
+i915_spi-y := spi/intel_spi_drv.o
+
 # header test
 
 # exclude some broken headers from the test coverage
diff --git a/drivers/gpu/drm/i915/spi/intel_spi_drv.c b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
new file mode 100644
index 000000000000..15c77b4b38bb
--- /dev/null
+++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
@@ -0,0 +1,141 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2019-2022, Intel Corporation. All rights reserved.
+ */
+#include <linux/module.h>
+#include <linux/types.h>
+#include <linux/kernel.h>
+#include <linux/string.h>
+#include <linux/ioport.h>
+#include <linux/device.h>
+#include <linux/slab.h>
+#include "spi/intel_spi.h"
+
+struct i915_spi {
+	struct kref refcnt;
+	void __iomem *base;
+	size_t size;
+	unsigned int nregions;
+	struct {
+		const char *name;
+		u8 id;
+		u64 offset;
+		u64 size;
+	} regions[];
+};
+
+static void i915_spi_release(struct kref *kref)
+{
+	struct i915_spi *spi = container_of(kref, struct i915_spi, refcnt);
+	int i;
+
+	pr_debug("freeing spi memory\n");
+	for (i = 0; i < spi->nregions; i++)
+		kfree(spi->regions[i].name);
+	kfree(spi);
+}
+
+static int i915_spi_probe(struct auxiliary_device *aux_dev,
+			  const struct auxiliary_device_id *aux_dev_id)
+{
+	struct intel_spi *ispi = auxiliary_dev_to_intel_spi_dev(aux_dev);
+	struct device *device;
+	struct i915_spi *spi;
+	unsigned int nregions;
+	unsigned int i, n;
+	size_t size;
+	char *name;
+	size_t name_size;
+	int ret;
+
+	device = &aux_dev->dev;
+
+	/* count available regions */
+	for (nregions = 0, i = 0; i < I915_SPI_REGIONS; i++) {
+		if (ispi->regions[i].name)
+			nregions++;
+	}
+
+	if (!nregions) {
+		dev_err(device, "no regions defined\n");
+		return -ENODEV;
+	}
+
+	size = sizeof(*spi) + sizeof(spi->regions[0]) * nregions;
+	spi = kzalloc(size, GFP_KERNEL);
+	if (!spi)
+		return -ENOMEM;
+
+	kref_init(&spi->refcnt);
+
+	spi->nregions = nregions;
+	for (n = 0, i = 0; i < I915_SPI_REGIONS; i++) {
+		if (ispi->regions[i].name) {
+			name_size = strlen(dev_name(&aux_dev->dev)) +
+				    strlen(ispi->regions[i].name) + 2; /* for point */
+			name = kzalloc(name_size, GFP_KERNEL);
+			if (!name)
+				continue;
+			snprintf(name, name_size, "%s.%s",
+				 dev_name(&aux_dev->dev), ispi->regions[i].name);
+			spi->regions[n].name = name;
+			spi->regions[n].id = i;
+			n++;
+		}
+	}
+
+	spi->base = devm_ioremap_resource(device, &ispi->bar);
+	if (IS_ERR(spi->base)) {
+		dev_err(device, "mmio not mapped\n");
+		ret = PTR_ERR(spi->base);
+		goto err;
+	}
+
+	dev_set_drvdata(&aux_dev->dev, spi);
+
+	dev_dbg(device, "i915-spi is bound\n");
+
+	return 0;
+
+err:
+	kref_put(&spi->refcnt, i915_spi_release);
+	return ret;
+}
+
+static void i915_spi_remove(struct auxiliary_device *aux_dev)
+{
+	struct i915_spi *spi = dev_get_drvdata(&aux_dev->dev);
+
+	if (!spi)
+		return;
+
+	dev_set_drvdata(&aux_dev->dev, NULL);
+
+	kref_put(&spi->refcnt, i915_spi_release);
+}
+
+static const struct auxiliary_device_id i915_spi_id_table[] = {
+	{
+		.name = "i915.spi",
+	},
+	{
+		/* sentinel */
+	}
+};
+MODULE_DEVICE_TABLE(auxiliary, i915_spi_id_table);
+
+static struct auxiliary_driver i915_spi_driver = {
+	.probe  = i915_spi_probe,
+	.remove = i915_spi_remove,
+	.driver = {
+		/* auxiliary_driver_register() sets .name to be the modname */
+	},
+	.id_table = i915_spi_id_table
+};
+
+module_auxiliary_driver(i915_spi_driver);
+
+MODULE_ALIAS("auxiliary:i915.spi");
+MODULE_LICENSE("Dual MIT/GPL");
+MODULE_AUTHOR("Intel Corporation");
+MODULE_DESCRIPTION("Intel DGFX SPI driver");
-- 
2.34.1

