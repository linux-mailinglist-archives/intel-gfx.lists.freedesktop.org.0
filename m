Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FF7799E59
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 14:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A3A10E206;
	Sun, 10 Sep 2023 12:44:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C756C10E206
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Sep 2023 12:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694349895; x=1725885895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hWnHGnqZVQiXBBnD/WTGH559CIzGPBdXyiOJTE5ldgQ=;
 b=FmCxJanPz88bxG9ACuBG51r5j1k8C7d2NIRDCZL1rMF5d0RyKIw0InPP
 5rhKd2gTDIBpHvLfw7w4H0jmYmNKry+/klqHnNVvJSg+b3KW1QiQ62zHn
 rz8nxBhhTvgSuvL/SNCQ/IN3WXcRWyN+egKKrmjXhjPuJj7c7smN4Ogin
 RPfG5vk1YE8pbu+prPyhZjwXSp+1YdR/p2fnXrphjrOa/4RWUyFmQTpZx
 UnhQ8GWkAobXJWyXOYVHRsca5E/fpcXrwfbsT8No9UkFiEbdUHKBldD0A
 VHGkpRHPsez/m1WCc5h9YMLnmXusVYtzhMyG4Q2kvzwX2yhB5KCW2xl3/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="441907142"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="441907142"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="1073815150"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="1073815150"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:52 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 10 Sep 2023 15:39:49 +0300
Message-Id: <20230910123949.1251964-11-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230910123949.1251964-1-alexander.usyskin@intel.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/10] drm/i915/spi: add support for access mode
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
Cc: linux-mtd@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Check SPI access mode from GSC FW status registers
and overwrite access status read from SPI descriptor, if needed.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/i915/spi/intel_spi.c     | 25 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/spi/intel_spi.h     |  1 +
 drivers/gpu/drm/i915/spi/intel_spi_drv.c |  6 +++---
 3 files changed, 29 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi.c b/drivers/gpu/drm/i915/spi/intel_spi.c
index c697ca226e34..aac01898169f 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi.c
@@ -9,6 +9,7 @@
 #include "spi/intel_spi.h"
 
 #define GEN12_GUNIT_SPI_SIZE 0x80
+#define HECI_FW_STATUS_2_SPI_ACCESS_MODE BIT(3)
 
 static const struct i915_spi_region regions[I915_SPI_REGIONS] = {
 	[0] = { .name = "DESCRIPTOR", },
@@ -21,6 +22,29 @@ static void i915_spi_release_dev(struct device *dev)
 {
 }
 
+static bool i915_spi_writeable_override(struct drm_i915_private *dev_priv)
+{
+	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	resource_size_t base;
+	bool writeable_override;
+
+	if (IS_DG1(dev_priv)) {
+		base = DG1_GSC_HECI2_BASE;
+	} else if (IS_DG2(dev_priv)) {
+		base = DG2_GSC_HECI2_BASE;
+	} else {
+		dev_err(&pdev->dev, "Unknown platform\n");
+		return true;
+	}
+
+	writeable_override =
+		!(intel_uncore_read(&dev_priv->uncore, HECI_FWSTS(base, 2)) &
+		  HECI_FW_STATUS_2_SPI_ACCESS_MODE);
+	if (writeable_override)
+		dev_info(&pdev->dev, "SPI access overridden by jumper\n");
+	return writeable_override;
+}
+
 void intel_spi_init(struct intel_spi *spi, struct drm_i915_private *dev_priv)
 {
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
@@ -31,6 +55,7 @@ void intel_spi_init(struct intel_spi *spi, struct drm_i915_private *dev_priv)
 	if (!IS_DGFX(dev_priv))
 		return;
 
+	spi->writeable_override = i915_spi_writeable_override(dev_priv);
 	spi->bar.parent = &pdev->resource[0];
 	spi->bar.start = GEN12_GUNIT_SPI_BASE + pdev->resource[0].start;
 	spi->bar.end = spi->bar.start + GEN12_GUNIT_SPI_SIZE - 1;
diff --git a/drivers/gpu/drm/i915/spi/intel_spi.h b/drivers/gpu/drm/i915/spi/intel_spi.h
index 1ecf1a8581b4..83588fae8c5e 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi.h
+++ b/drivers/gpu/drm/i915/spi/intel_spi.h
@@ -18,6 +18,7 @@ struct i915_spi_region {
 struct intel_spi {
 	struct auxiliary_device aux_dev;
 	struct drm_i915_private *i915;
+	bool writeable_override;
 	struct resource bar;
 	const struct i915_spi_region *regions;
 };
diff --git a/drivers/gpu/drm/i915/spi/intel_spi_drv.c b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
index 6b514b137fd0..75b6939ea93d 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi_drv.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
@@ -681,7 +681,7 @@ static void i915_spi_put_device(struct mtd_info *mtd)
 }
 
 static int i915_spi_init_mtd(struct i915_spi *spi, struct device *device,
-			     unsigned int nparts)
+			     unsigned int nparts, bool writeable_override)
 {
 	unsigned int i;
 	unsigned int n;
@@ -714,7 +714,7 @@ static int i915_spi_init_mtd(struct i915_spi *spi, struct device *device,
 		parts[n].name = spi->regions[i].name;
 		parts[n].offset  = spi->regions[i].offset;
 		parts[n].size = spi->regions[i].size;
-		if (!spi->regions[i].is_writable)
+		if (!spi->regions[i].is_writable && !writeable_override)
 			parts[n].mask_flags = MTD_WRITEABLE;
 		n++;
 	}
@@ -801,7 +801,7 @@ static int i915_spi_probe(struct auxiliary_device *aux_dev,
 		goto err;
 	}
 
-	ret = i915_spi_init_mtd(spi, device, ret);
+	ret = i915_spi_init_mtd(spi, device, ret, ispi->writeable_override);
 	if (ret) {
 		dev_err(device, "i915-spi failed init mtd %d\n", ret);
 		goto err;
-- 
2.34.1

