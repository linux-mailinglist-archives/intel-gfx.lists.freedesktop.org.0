Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7094799E53
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 14:44:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C52C10E19B;
	Sun, 10 Sep 2023 12:44:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B6ED10E18B
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Sep 2023 12:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694349878; x=1725885878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wNmSeEWcn6jSyicdm/03Bp6SWFAJUXqqfRGW944INxY=;
 b=W3GHTqHUSnocNXZcfZGyycG47mn92aHYJjC+SkUD7NYJg3HoXKTJaFOl
 g7G5LAM+FxxgFaIk/8d16bIY6iVkS4KrnEr8bW+KY9W2RT9capfm0hYix
 OZPnJEpT1A10jywxDlc/Pkk1NyTVPPly5ZlNxwTF8/pFpemevtsIydbLi
 30ypygvtOwxg/8MKE1zw75Vf+d6XVyLO7kWinDi5V4avf6tmZaM96yJ3h
 lnStPHVlGmRaiKh6nKiFznG1iYXvFzN5r06husJQZSCwME4Cn5SYpFYFG
 eU+WjqCPtf8us0KSEZDxyfGp0h5/eY/qi0NH6BagsyI2+JnzRvvlAAXtJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="441907102"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="441907102"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="1073815040"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="1073815040"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:35 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 10 Sep 2023 15:39:43 +0300
Message-Id: <20230910123949.1251964-5-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230910123949.1251964-1-alexander.usyskin@intel.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/spi: implement region enumeration
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

In i915-spi, there is no access to the spi controller,
the information is extracted form the descriptor region.

CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 193 ++++++++++++++++++++++-
 1 file changed, 192 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi_drv.c b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
index 15c77b4b38bb..f32ea05f4f64 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi_drv.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
@@ -2,11 +2,12 @@
 /*
  * Copyright(c) 2019-2022, Intel Corporation. All rights reserved.
  */
+
 #include <linux/module.h>
 #include <linux/types.h>
 #include <linux/kernel.h>
 #include <linux/string.h>
-#include <linux/ioport.h>
+#include <linux/io.h>
 #include <linux/device.h>
 #include <linux/slab.h>
 #include "spi/intel_spi.h"
@@ -16,14 +17,197 @@ struct i915_spi {
 	void __iomem *base;
 	size_t size;
 	unsigned int nregions;
+	u32 access_map;
 	struct {
 		const char *name;
 		u8 id;
 		u64 offset;
 		u64 size;
+		unsigned int is_readable:1;
+		unsigned int is_writable:1;
 	} regions[];
 };
 
+#define SPI_TRIGGER_REG       0x00000000
+#define SPI_VALSIG_REG        0x00000010
+#define SPI_ADDRESS_REG       0x00000040
+#define SPI_REGION_ID_REG     0x00000044
+/*
+ * [15:0]-Erase size = 0x0010 4K 0x0080 32K 0x0100 64K
+ * [23:16]-Reserved
+ * [31:24]-Erase SPI RegionID
+ */
+#define SPI_ERASE_REG         0x00000048
+#define SPI_ACCESS_ERROR_REG  0x00000070
+#define SPI_ADDRESS_ERROR_REG 0x00000074
+
+/* Flash Valid Signature */
+#define SPI_FLVALSIG          0x0FF0A55A
+
+#define SPI_MAP_ADDR_MASK     0x000000FF
+#define SPI_MAP_ADDR_SHIFT    0x00000004
+
+#define REGION_ID_DESCRIPTOR  0
+/* Flash Region Base Address */
+#define FRBA      0x40
+/* Flash Region __n - Flash Descriptor Record */
+#define FLREG(__n)  (FRBA + ((__n) * 4))
+/*  Flash Map 1 Register */
+#define FLMAP1_REG  0x18
+#define FLMSTR4_OFFSET 0x00C
+
+#define SPI_ACCESS_ERROR_PCIE_MASK 0x7
+
+static inline void spi_set_region_id(struct i915_spi *spi, u8 region)
+{
+	iowrite32((u32)region, spi->base + SPI_REGION_ID_REG);
+}
+
+static inline u32 spi_error(struct i915_spi *spi)
+{
+	u32 reg = ioread32(spi->base + SPI_ACCESS_ERROR_REG) &
+		  SPI_ACCESS_ERROR_PCIE_MASK;
+
+	/* reset error bits */
+	if (reg)
+		iowrite32(reg, spi->base + SPI_ACCESS_ERROR_REG);
+
+	return reg;
+}
+
+static inline u32 spi_read32(struct i915_spi *spi, u32 address)
+{
+	void __iomem *base = spi->base;
+
+	iowrite32(address, base + SPI_ADDRESS_REG);
+
+	return ioread32(base + SPI_TRIGGER_REG);
+}
+
+static int spi_get_access_map(struct i915_spi *spi)
+{
+	u32 flmap1;
+	u32 fmba;
+	u32 fmstr4;
+	u32 fmstr4_addr;
+
+	spi_set_region_id(spi, REGION_ID_DESCRIPTOR);
+
+	flmap1 = spi_read32(spi, FLMAP1_REG);
+	if (spi_error(spi))
+		return -EIO;
+	/* Get Flash Master Baser Address (FMBA) */
+	fmba = ((flmap1 & SPI_MAP_ADDR_MASK) << SPI_MAP_ADDR_SHIFT);
+	fmstr4_addr = fmba + FLMSTR4_OFFSET;
+
+	fmstr4 = spi_read32(spi, fmstr4_addr);
+	if (spi_error(spi))
+		return -EIO;
+
+	spi->access_map = fmstr4;
+	return 0;
+}
+
+static bool spi_region_readable(struct i915_spi *spi, u8 region)
+{
+	if (region < 12)
+		return spi->access_map & (1 << (region + 8)); /* [19:8] */
+	else
+		return spi->access_map & (1 << (region - 12)); /* [3:0] */
+}
+
+static bool spi_region_writeable(struct i915_spi *spi, u8 region)
+{
+	if (region < 12)
+		return spi->access_map & (1 << (region + 20)); /* [31:20] */
+	else
+		return spi->access_map & (1 << (region - 8)); /* [7:4] */
+}
+
+static int i915_spi_is_valid(struct i915_spi *spi)
+{
+	u32 is_valid;
+
+	spi_set_region_id(spi, REGION_ID_DESCRIPTOR);
+
+	is_valid = spi_read32(spi, SPI_VALSIG_REG);
+	if (spi_error(spi))
+		return -EIO;
+
+	if (is_valid != SPI_FLVALSIG)
+		return -ENODEV;
+
+	return 0;
+}
+
+static int i915_spi_init(struct i915_spi *spi, struct device *device)
+{
+	int ret;
+	unsigned int i, n;
+
+	/* clean error register, previous errors are ignored */
+	spi_error(spi);
+
+	ret = i915_spi_is_valid(spi);
+	if (ret) {
+		dev_err(device, "The SPI is not valid %d\n", ret);
+		return ret;
+	}
+
+	if (spi_get_access_map(spi))
+		return -EIO;
+
+	for (i = 0, n = 0; i < spi->nregions; i++) {
+		u32 address, base, limit, region;
+		u8 id = spi->regions[i].id;
+
+		address = FLREG(id);
+		region = spi_read32(spi, address);
+
+		base = (region & 0x0000FFFF) << 12;
+		limit = (((region & 0xFFFF0000) >> 16) << 12) | 0xFFF;
+
+		dev_dbg(device, "[%d] %s: region: 0x%08X base: 0x%08x limit: 0x%08x\n",
+			id, spi->regions[i].name, region, base, limit);
+
+		if (base >= limit || (i > 0 && limit == 0)) {
+			dev_dbg(device, "[%d] %s: disabled\n",
+				id, spi->regions[i].name);
+			spi->regions[i].is_readable = 0;
+			continue;
+		}
+
+		if (spi->size < limit)
+			spi->size = limit;
+
+		spi->regions[i].offset = base;
+		spi->regions[i].size = limit - base + 1;
+		/* No write access to descriptor; mask it out*/
+		spi->regions[i].is_writable = spi_region_writeable(spi, id);
+
+		spi->regions[i].is_readable = spi_region_readable(spi, id);
+		dev_dbg(device, "Registered, %s id=%d offset=%lld size=%lld rd=%d wr=%d\n",
+			spi->regions[i].name,
+			spi->regions[i].id,
+			spi->regions[i].offset,
+			spi->regions[i].size,
+			spi->regions[i].is_readable,
+			spi->regions[i].is_writable);
+
+		if (spi->regions[i].is_readable)
+			n++;
+	}
+
+	dev_dbg(device, "Registered %d regions\n", n);
+
+	/* Need to add 1 to the amount of memory
+	 * so it is reported as an even block
+	 */
+	spi->size += 1;
+
+	return n;
+}
+
 static void i915_spi_release(struct kref *kref)
 {
 	struct i915_spi *spi = container_of(kref, struct i915_spi, refcnt);
@@ -91,6 +275,13 @@ static int i915_spi_probe(struct auxiliary_device *aux_dev,
 		goto err;
 	}
 
+	ret = i915_spi_init(spi, device);
+	if (ret < 0) {
+		dev_err(device, "cannot initialize spi\n");
+		ret = -ENODEV;
+		goto err;
+	}
+
 	dev_set_drvdata(&aux_dev->dev, spi);
 
 	dev_dbg(device, "i915-spi is bound\n");
-- 
2.34.1

