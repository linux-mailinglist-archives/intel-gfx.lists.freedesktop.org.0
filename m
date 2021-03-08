Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5153A330810
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 07:28:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B56126E7F5;
	Mon,  8 Mar 2021 06:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AA266E7F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 06:28:12 +0000 (UTC)
IronPort-SDR: SyCeOcUH7rmk9BKFXFOCx7YSbceq2vgXX34SzcMHdV9OM6L2uZ+XqyD/bwE1oaeJMC98eEP13z
 NNCPKaFA6Oag==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="249354823"
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="249354823"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:12 -0800
IronPort-SDR: B4CF5Iefunq3yJXZu0+lDtkFaUCiArcd58Uw/Q+9JuNwnzdRe4DQ0+/+o2WXMq0wrtdAsF71cn
 84YFiiKQmbmw==
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="409181924"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:08 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon,  8 Mar 2021 08:27:41 +0200
Message-Id: <20210308062748.208017-4-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210308062748.208017-1-tomas.winkler@intel.com>
References: <20210308062748.208017-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 03/10 v2] drm/i915/spi: add driver for
 on-die spi device
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add the platform driver for i915 on-die spi device, exposed via mfd
framework.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---

V2:
1. Add own Kconfig and Makefile
2. Rename intel_spi_drv.c to i915_spi.c

 drivers/gpu/drm/i915/Kconfig        |   2 +
 drivers/gpu/drm/i915/Makefile       |   1 +
 drivers/gpu/drm/i915/spi/Kconfig    |  17 ++++
 drivers/gpu/drm/i915/spi/Makefile   |   7 ++
 drivers/gpu/drm/i915/spi/i915_spi.c | 116 ++++++++++++++++++++++++++++
 5 files changed, 143 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/spi/Kconfig
 create mode 100644 drivers/gpu/drm/i915/spi/Makefile
 create mode 100644 drivers/gpu/drm/i915/spi/i915_spi.c

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index abcaa8da45ac..d5062fbb6d25 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -131,6 +131,8 @@ config DRM_I915_GVT_KVMGT
 	  Choose this option if you want to enable KVMGT support for
 	  Intel GVT-g.
 
+source "drivers/gpu/drm/i915/spi/Kconfig"
+
 menu "drm/i915 Debugging"
 depends on DRM_I915
 depends on EXPERT
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 7f504475fde7..9377a593364f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -297,6 +297,7 @@ endif
 
 obj-$(CONFIG_DRM_I915) += i915.o
 obj-$(CONFIG_DRM_I915_GVT_KVMGT) += gvt/kvmgt.o
+obj-$(CONFIG_DRM_I915_SPI) += spi/
 
 # header test
 
diff --git a/drivers/gpu/drm/i915/spi/Kconfig b/drivers/gpu/drm/i915/spi/Kconfig
new file mode 100644
index 000000000000..7e6b82f8a59b
--- /dev/null
+++ b/drivers/gpu/drm/i915/spi/Kconfig
@@ -0,0 +1,17 @@
+# SPDX-License-Identifier: GPL-2.0
+# Copyright (c) 2021, Intel Corporation. All rights reserved.
+#
+config DRM_I915_SPI
+	tristate "I915 SPI driver for discrete devices"
+	select MTD
+	select MTD_PARTITIONED_MASTER
+	depends on DRM_I915
+	help
+	  I915 SPI driver for i915 discrete devices.
+
+	  This enables support for the SPI devices present on some
+	  discrete i915 cards. This driver makes possible to
+	  flush firmware during manufacturing process directly from
+	  the operating system, and can be used by device health check
+	  applications.
+
diff --git a/drivers/gpu/drm/i915/spi/Makefile b/drivers/gpu/drm/i915/spi/Makefile
new file mode 100644
index 000000000000..0a2dab0aba03
--- /dev/null
+++ b/drivers/gpu/drm/i915/spi/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright (c) 2021, Intel Corporation. All rights reserved.
+#
+# Makefile - I915 SPI driver
+
+obj-$(CONFIG_DRM_I915_SPI) +=  i915_spi.o
diff --git a/drivers/gpu/drm/i915/spi/i915_spi.c b/drivers/gpu/drm/i915/spi/i915_spi.c
new file mode 100644
index 000000000000..23261f35b71f
--- /dev/null
+++ b/drivers/gpu/drm/i915/spi/i915_spi.c
@@ -0,0 +1,116 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2019-2021, Intel Corporation. All rights reserved.
+ */
+#include <linux/module.h>
+#include <linux/types.h>
+#include <linux/kernel.h>
+#include <linux/string.h>
+#include <linux/io.h>
+#include <linux/device.h>
+#include <linux/slab.h>
+#include <linux/platform_device.h>
+#include <spi/intel_spi.h>
+
+struct i915_spi {
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
+static int i915_spi_probe(struct platform_device *platdev)
+{
+	struct resource *bar;
+	struct device *device;
+	struct i915_spi *spi;
+	struct i915_spi_region *regions;
+	unsigned int nregions;
+	unsigned int i, n;
+	size_t size;
+	char *name;
+	size_t name_size;
+
+	device = &platdev->dev;
+
+	regions = dev_get_platdata(&platdev->dev);
+	if (!regions) {
+		dev_err(device, "no regions defined\n");
+		return -ENODEV;
+	}
+
+	/* count available regions */
+	for (nregions = 0, i = 0; i < I915_SPI_REGIONS; i++) {
+		if (regions[i].name)
+			nregions++;
+	}
+
+	if (!nregions) {
+		dev_err(device, "no regions defined\n");
+		return -ENODEV;
+	}
+
+	size = sizeof(*spi) + sizeof(spi->regions[0]) * nregions;
+	spi = devm_kzalloc(device, size, GFP_KERNEL);
+	if (!spi)
+		return -ENOMEM;
+
+	spi->nregions = nregions;
+	for (n = 0, i = 0; i < I915_SPI_REGIONS; i++) {
+		if (regions[i].name) {
+			name_size = strlen(dev_name(&platdev->dev)) +
+				    strlen(regions[i].name) + 2; /* for point */
+			name = devm_kzalloc(device, name_size, GFP_KERNEL);
+			if (!name)
+				continue;
+			snprintf(name, name_size, "%s.%s",
+				 dev_name(&platdev->dev), regions[i].name);
+			spi->regions[n].name = name;
+			spi->regions[n].id = i;
+			n++;
+		}
+	}
+
+	bar = platform_get_resource(platdev, IORESOURCE_MEM, 0);
+	if (!bar)
+		return -ENODEV;
+
+	spi->base = devm_ioremap_resource(device, bar);
+	if (IS_ERR(spi->base)) {
+		dev_err(device, "mmio not mapped\n");
+		return PTR_ERR(spi->base);
+	}
+
+	platform_set_drvdata(platdev, spi);
+
+	dev_dbg(device, "i915-spi is bound\n");
+
+	return 0;
+}
+
+static int i915_spi_remove(struct platform_device *platdev)
+{
+	platform_set_drvdata(platdev, NULL);
+
+	return 0;
+}
+
+MODULE_ALIAS("platform:i915-spi");
+static struct platform_driver i915_spi_driver = {
+	.probe  = i915_spi_probe,
+	.remove = i915_spi_remove,
+	.driver = {
+		.name = "i915-spi",
+	},
+};
+
+module_platform_driver(i915_spi_driver);
+
+MODULE_LICENSE("GPL and additional rights");
+MODULE_AUTHOR("Intel Corporation");
+MODULE_DESCRIPTION("Intel DGFX SPI driver");
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
