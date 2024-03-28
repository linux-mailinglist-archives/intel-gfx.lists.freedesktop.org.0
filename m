Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 353D388FEFC
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 13:27:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8247811240C;
	Thu, 28 Mar 2024 12:26:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VjqiITPx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5537311240A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 12:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711628816; x=1743164816;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1X2jKXaU7KqqY3UOoP2nFe4T9o7++CVXSfqero4maXQ=;
 b=VjqiITPxbVQS5A2xYBY35Txx6R5AzmpF/GJJkAH8Ur4/tELkotnQvHP2
 H9V1M5Fu7suOt3KdKk8uAII3TUcepg0LRvnjaOItKqNPJNP18osK8Agvb
 ADkckmeLpJ2M2v0fViaJkRkQy5LfC0q44pN3dD0eomATosoMNQ3bx563r
 npoYXVtgj+QllTWtKWVGrrwG7qiBJjz6aO7dUPIte83QkftvGu+NiPxm+
 WUrf6Gp4FmVfiEk/0zN6lTZYn3ITdP4P/K5KggOhSEoJD7AyULsN4VD1h
 YeaUCfODgWn8yGQfs2YNTooyS/btnrMfOZ38h7sogYX2Z6ooB0WIOHGJ/ g==;
X-CSE-ConnectionGUID: XptZF5P9TqyMwrFcJy3EaA==
X-CSE-MsgGUID: lKM8jR94SXCCHj92MP1VUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17505541"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17505541"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:26:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16657605"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:26:53 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, linux-mtd@lists.infradead.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/13] drm/xe/spi: add support for access mode
Date: Thu, 28 Mar 2024 14:22:36 +0200
Message-Id: <20240328122236.1718111-14-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240328122236.1718111-1-alexander.usyskin@intel.com>
References: <20240328122236.1718111-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Check SPI access mode from GSC FW status registers
and overwrite access status read from SPI descriptor, if needed.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_gsc_regs.h |  5 +++++
 drivers/gpu/drm/xe/xe_heci_gsc.c      |  5 +----
 drivers/gpu/drm/xe/xe_spi.c           | 31 ++++++++++++++++++++++++++-
 3 files changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/xe/regs/xe_gsc_regs.h b/drivers/gpu/drm/xe/regs/xe_gsc_regs.h
index 9886ec9cb08e..ef04fab3a4b0 100644
--- a/drivers/gpu/drm/xe/regs/xe_gsc_regs.h
+++ b/drivers/gpu/drm/xe/regs/xe_gsc_regs.h
@@ -16,6 +16,11 @@
 #define MTL_GSC_HECI1_BASE	0x00116000
 #define MTL_GSC_HECI2_BASE	0x00117000
 
+#define DG1_GSC_HECI2_BASE	0x00259000
+#define PVC_GSC_HECI2_BASE	0x00285000
+#define DG2_GSC_HECI2_BASE	0x00374000
+
+
 #define HECI_H_CSR(base)	XE_REG((base) + 0x4)
 #define   HECI_H_CSR_IE		REG_BIT(0)
 #define   HECI_H_CSR_IS		REG_BIT(1)
diff --git a/drivers/gpu/drm/xe/xe_heci_gsc.c b/drivers/gpu/drm/xe/xe_heci_gsc.c
index bfdd33b9b23b..f240a3fbb507 100644
--- a/drivers/gpu/drm/xe/xe_heci_gsc.c
+++ b/drivers/gpu/drm/xe/xe_heci_gsc.c
@@ -11,14 +11,11 @@
 #include "xe_device_types.h"
 #include "xe_drv.h"
 #include "xe_heci_gsc.h"
+#include "regs/xe_gsc_regs.h"
 #include "xe_platform_types.h"
 
 #define GSC_BAR_LENGTH  0x00000FFC
 
-#define DG1_GSC_HECI2_BASE			0x259000
-#define PVC_GSC_HECI2_BASE			0x285000
-#define DG2_GSC_HECI2_BASE			0x374000
-
 static void heci_gsc_irq_mask(struct irq_data *d)
 {
 	/* generic irq handling */
diff --git a/drivers/gpu/drm/xe/xe_spi.c b/drivers/gpu/drm/xe/xe_spi.c
index 3dde2ec9c389..91632d68db8a 100644
--- a/drivers/gpu/drm/xe/xe_spi.c
+++ b/drivers/gpu/drm/xe/xe_spi.c
@@ -5,7 +5,10 @@
 
 #include <linux/intel_dg_spi_aux.h>
 #include <linux/pci.h>
+#include "xe_device.h"
 #include "xe_device_types.h"
+#include "xe_mmio.h"
+#include "regs/xe_gsc_regs.h"
 #include "xe_spi.h"
 
 #define GEN12_GUNIT_SPI_BASE 0x00102040
@@ -23,6 +26,32 @@ static void xe_spi_release_dev(struct device *dev)
 {
 }
 
+static bool xe_spi_writeable_override(struct xe_device *xe)
+{
+	struct xe_gt *gt = xe_root_mmio_gt(xe);
+	struct pci_dev *pdev = to_pci_dev(xe->drm.dev);
+	resource_size_t base;
+	bool writeable_override;
+
+	if (xe->info.platform == XE_PVC) {
+		base = PVC_GSC_HECI2_BASE;
+	} else if (xe->info.platform == XE_DG2) {
+		base = DG2_GSC_HECI2_BASE;
+	} else if (xe->info.platform == XE_DG1) {
+		base = DG1_GSC_HECI2_BASE;
+	} else {
+		dev_err(&pdev->dev, "Unknown platform\n");
+		return true;
+	}
+
+	writeable_override =
+		!(xe_mmio_read32(gt, HECI_H_GS1(base)) &
+		  HECI_FW_STATUS_2_SPI_ACCESS_MODE);
+	if (writeable_override)
+		dev_info(&pdev->dev, "SPI access overridden by jumper\n");
+	return writeable_override;
+}
+
 void xe_spi_init(struct xe_device *xe)
 {
 	struct intel_dg_spi_dev *spi = &xe->spi;
@@ -34,7 +63,7 @@ void xe_spi_init(struct xe_device *xe)
 	if (!IS_DGFX(xe))
 		return;
 
-	spi->writeable_override = false;
+	spi->writeable_override = xe_spi_writeable_override(xe);
 	spi->bar.parent = &pdev->resource[0];
 	spi->bar.start = GEN12_GUNIT_SPI_BASE + pdev->resource[0].start;
 	spi->bar.end = spi->bar.start + GEN12_GUNIT_SPI_SIZE - 1;
-- 
2.34.1

