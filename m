Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D10BB33080E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 07:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 970DE6E51D;
	Mon,  8 Mar 2021 06:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E35E6E51D
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 06:28:05 +0000 (UTC)
IronPort-SDR: R0dOeTm8dlCu8qmF2TZZIAVOicD5mHbGA2yv6k4mLEDuZaIsgzFcojoxIf1bAbVKtZOwo3U3GN
 IqT5gTJNRo5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="249354804"
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="249354804"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:05 -0800
IronPort-SDR: KQs3aCQlzK1iwXW7swPP7kUMANTwB3lBtsP2SOeF0qtbiUruJB7WyBc+sjQoU57nNRL0wLbxTR
 I6r34H/k8m2A==
X-IronPort-AV: E=Sophos;i="5.81,231,1610438400"; d="scan'208";a="409181902"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2021 22:28:01 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon,  8 Mar 2021 08:27:39 +0200
Message-Id: <20210308062748.208017-2-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210308062748.208017-1-tomas.winkler@intel.com>
References: <20210308062748.208017-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 01/10 v2] drm/i915/spi: add spi device for
 discrete graphics
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

Enable access to internal spi on descrete devices via a child device.
The spi child device is exposed via MFD framework.


Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com> # v3
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
V2:
1. Fix header include guards name to match the file name
2. Drop intel_spi_fini() it was noop

 drivers/gpu/drm/i915/Kconfig         |  1 +
 drivers/gpu/drm/i915/Makefile        |  3 +++
 drivers/gpu/drm/i915/i915_drv.c      |  7 +++++
 drivers/gpu/drm/i915/i915_drv.h      |  4 +++
 drivers/gpu/drm/i915/i915_reg.h      |  1 +
 drivers/gpu/drm/i915/spi/intel_spi.c | 40 ++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/spi/intel_spi.h | 17 ++++++++++++
 7 files changed, 73 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.c
 create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.h

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 1e1cb245fca7..abcaa8da45ac 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -26,6 +26,7 @@ config DRM_I915
 	select SND_HDA_I915 if SND_HDA_CORE
 	select CEC_CORE if CEC_NOTIFIER
 	select VMAP_PFN
+	select MFD_CORE
 	help
 	  Choose this option if you have a system that has "Intel Graphics
 	  Media Accelerator" or "HD Graphics" integrated graphics,
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index bc6138880c67..7f504475fde7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -190,6 +190,9 @@ i915-y += gt/uc/intel_uc.o \
 	  gt/uc/intel_huc_debugfs.o \
 	  gt/uc/intel_huc_fw.o
 
+# graphics spi device (DGFX) support
+i915-y += spi/intel_spi.o
+
 # modesetting core code
 i915-y += \
 	display/intel_atomic.o \
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 3edd5e47ad68..2719a92a8dd9 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -38,6 +38,7 @@
 #include <linux/slab.h>
 #include <linux/vga_switcheroo.h>
 #include <linux/vt.h>
+#include <linux/mfd/core.h>
 
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_ioctl.h>
@@ -67,6 +68,8 @@
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
 
+#include "spi/intel_spi.h"
+
 #include "i915_debugfs.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
@@ -684,6 +687,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_gt_driver_register(&dev_priv->gt);
 
+	intel_spi_init(&dev_priv->spi, dev_priv);
+
 	intel_display_driver_register(dev_priv);
 
 	intel_power_domains_enable(dev_priv);
@@ -710,6 +715,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	intel_display_driver_unregister(dev_priv);
 
+	mfd_remove_devices(&dev_priv->drm.pdev->dev);
+
 	intel_gt_driver_unregister(&dev_priv->gt);
 
 	i915_perf_unregister(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1d45d7492d10..1a1803a84432 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -85,6 +85,8 @@
 #include "gt/intel_workarounds.h"
 #include "gt/uc/intel_uc.h"
 
+#include "spi/intel_spi.h"
+
 #include "intel_device_info.h"
 #include "intel_pch.h"
 #include "intel_runtime_pm.h"
@@ -1117,6 +1119,8 @@ struct drm_i915_private {
 
 	struct i915_perf perf;
 
+	struct intel_spi spi;
+
 	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
 	struct intel_gt gt;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e5dd0203991b..9e314393c593 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2510,6 +2510,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define VEBOX_RING_BASE		0x1a000
 #define GEN11_VEBOX_RING_BASE		0x1c8000
 #define GEN11_VEBOX2_RING_BASE		0x1d8000
+#define GEN12_GUNIT_SPI_BASE	0x00102040
 #define BLT_RING_BASE		0x22000
 #define RING_TAIL(base)		_MMIO((base) + 0x30)
 #define RING_HEAD(base)		_MMIO((base) + 0x34)
diff --git a/drivers/gpu/drm/i915/spi/intel_spi.c b/drivers/gpu/drm/i915/spi/intel_spi.c
new file mode 100644
index 000000000000..932221dff1c1
--- /dev/null
+++ b/drivers/gpu/drm/i915/spi/intel_spi.c
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2019-2021, Intel Corporation. All rights reserved.
+ */
+
+#include <linux/mfd/core.h>
+#include <linux/irq.h>
+#include "i915_reg.h"
+#include "i915_drv.h"
+#include "gt/intel_gt.h"
+#include "spi/intel_spi.h"
+
+static const struct resource spi_resources[] = {
+	DEFINE_RES_MEM_NAMED(GEN12_GUNIT_SPI_BASE, 0x80, "i915-spi-mmio"),
+};
+
+static const struct mfd_cell intel_spi_cell = {
+	.id = 2,
+	.name = "i915-spi",
+	.num_resources = ARRAY_SIZE(spi_resources),
+	.resources = spi_resources,
+};
+
+void intel_spi_init(struct intel_spi *spi, struct drm_i915_private *dev_priv)
+{
+	struct pci_dev *pdev = dev_priv->drm.pdev;
+	int ret;
+
+	/* Only the DGFX devices have internal SPI */
+	if (!IS_DGFX(dev_priv))
+		return;
+
+	ret = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO,
+			      &intel_spi_cell, 1,
+			      &pdev->resource[0], -1, NULL);
+	if (ret)
+		dev_err(&pdev->dev, "creating i915-spi cell failed\n");
+
+	spi->i915 = dev_priv;
+}
diff --git a/drivers/gpu/drm/i915/spi/intel_spi.h b/drivers/gpu/drm/i915/spi/intel_spi.h
new file mode 100644
index 000000000000..237724fe9d50
--- /dev/null
+++ b/drivers/gpu/drm/i915/spi/intel_spi.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2019-2021, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_SPI_H__
+#define __INTEL_SPI_H__
+
+struct drm_i915_private;
+
+struct intel_spi {
+	struct drm_i915_private *i915;
+};
+
+void intel_spi_init(struct intel_spi *spi, struct drm_i915_private *i915);
+
+#endif /* __INTEL_SPI_H__ */
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
