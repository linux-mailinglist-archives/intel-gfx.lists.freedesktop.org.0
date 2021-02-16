Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9564031D01F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 19:20:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32216E466;
	Tue, 16 Feb 2021 18:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D69B56E46B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Feb 2021 18:20:06 +0000 (UTC)
IronPort-SDR: KZRZmzuWmgE06pE+VwCxy7DaTeW7vtgyG7yc9ioxSHJTwhzrlo/yr+44HAO5KCKh8o3MvqXMB9
 3DoFfGEOaZ5A==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="183046134"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="183046134"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 10:20:06 -0800
IronPort-SDR: Wa1O1q9EY+w++u31oNd/2qozICHOMeMxuSPt0XUDjgat1UL4brb8zwasmoLOLU8uWEwcAGUjrB
 ztF7McpA55XQ==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="399609201"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 10:20:03 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 16 Feb 2021 20:19:21 +0200
Message-Id: <20210216181925.650082-6-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210216181925.650082-1-tomas.winkler@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 5/9] drm/i915/spi: implement spi access
 functions
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

Implement spi_read() spi_erase() spi_write() functions.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
---
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 137 +++++++++++++++++++++++
 1 file changed, 137 insertions(+)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi_drv.c b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
index a1e7171d05db..df6a461d520d 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi_drv.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
@@ -9,7 +9,10 @@
 #include <linux/io.h>
 #include <linux/device.h>
 #include <linux/slab.h>
+#include <linux/sizes.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/platform_device.h>
+#include <linux/delay.h>
 #include <spi/intel_spi.h>
 
 struct i915_spi {
@@ -83,6 +86,33 @@ static inline u32 spi_read32(struct i915_spi *spi, u32 address)
 	return ioread32(base + SPI_TRIGGER_REG);
 }
 
+static inline u64 spi_read64(struct i915_spi *spi, u32 address)
+{
+	void __iomem *base = spi->base;
+
+	iowrite32(address, base + SPI_ADDRESS_REG);
+
+	return readq(base + SPI_TRIGGER_REG);
+}
+
+static void spi_write32(struct i915_spi *spi, u32 address, u32 data)
+{
+	void __iomem *base = spi->base;
+
+	iowrite32(address, base + SPI_ADDRESS_REG);
+
+	iowrite32(data, base + SPI_TRIGGER_REG);
+}
+
+static void spi_write64(struct i915_spi *spi, u32 address, u64 data)
+{
+	void __iomem *base = spi->base;
+
+	iowrite32(address, base + SPI_ADDRESS_REG);
+
+	writeq(data, base + SPI_TRIGGER_REG);
+}
+
 static int spi_get_access_map(struct i915_spi *spi)
 {
 	u32 flmap1;
@@ -139,6 +169,113 @@ static int i915_spi_is_valid(struct i915_spi *spi)
 	return 0;
 }
 
+__maybe_unused
+static unsigned int spi_get_region(const struct i915_spi *spi, loff_t from)
+{
+	unsigned int i;
+
+	for (i = 0; i < spi->nregions; i++) {
+		if ((spi->regions[i].offset + spi->regions[i].size - 1) > from &&
+		    spi->regions[i].offset <= from &&
+		    spi->regions[i].size != 0)
+			break;
+	}
+
+	return i;
+}
+
+__maybe_unused
+static ssize_t spi_write(struct i915_spi *spi, u8 region,
+			 loff_t to, size_t len, const unsigned char *buf)
+{
+	size_t i;
+	size_t len8;
+
+	spi_set_region_id(spi, region);
+
+	len8 = ALIGN_DOWN(len, sizeof(u64));
+	for (i = 0; i < len8; i += sizeof(u64)) {
+		u64 data;
+
+		memcpy(&data, &buf[i], sizeof(u64));
+		spi_write64(spi, to + i, data);
+		if (spi_error(spi))
+			return -EIO;
+	}
+
+	if (len8 != len) { /* caller ensure that write size is at least u32 */
+		u32 data;
+
+		memcpy(&data, &buf[i], sizeof(u32));
+		spi_write32(spi, to + len8, data);
+		if (spi_error(spi))
+			return -EIO;
+	}
+
+	return len;
+}
+
+__maybe_unused
+static ssize_t spi_read(struct i915_spi *spi, u8 region,
+			loff_t from, size_t len, unsigned char *buf)
+{
+	size_t i;
+	size_t len8;
+	size_t len4;
+
+	spi_set_region_id(spi, region);
+
+	len8 = ALIGN_DOWN(len, sizeof(u64));
+	for (i = 0; i < len8; i += sizeof(u64)) {
+		u64 data = spi_read64(spi, from + i);
+
+		if (spi_error(spi))
+			return -EIO;
+
+		memcpy(&buf[i], &data, sizeof(data));
+	}
+
+	len4 = len - len8;
+	if (len4 >= sizeof(u32)) {
+		u32 data = spi_read32(spi, from + i);
+
+		if (spi_error(spi))
+			return -EIO;
+		memcpy(&buf[i], &data, sizeof(data));
+		i += sizeof(u32);
+		len4 -= sizeof(u32);
+	}
+
+	if (len4 > 0) {
+		u32 data = spi_read32(spi, from + i);
+
+		if (spi_error(spi))
+			return -EIO;
+		memcpy(&buf[i], &data, len4);
+	}
+
+	return len;
+}
+
+__maybe_unused
+static ssize_t
+spi_erase(struct i915_spi *spi, u8 region, loff_t from, u64 len, u64 *fail_addr)
+{
+	u64 i;
+	const u32 block = 0x10;
+	void __iomem *base = spi->base;
+
+	for (i = 0; i < len; i += SZ_4K) {
+		iowrite32(from + i, base + SPI_ADDRESS_REG);
+		iowrite32(region << 24 | block, base + SPI_ERASE_REG);
+		/* Since the writes are via sguint
+		 * we cannot do back to back erases.
+		 */
+		msleep(50);
+	}
+	return len;
+}
+
 static int i915_spi_init(struct i915_spi *spi, struct device *device)
 {
 	int ret;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
