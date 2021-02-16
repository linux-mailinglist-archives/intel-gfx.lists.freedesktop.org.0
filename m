Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD62E31D023
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 19:20:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 236E16E479;
	Tue, 16 Feb 2021 18:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B7236E47B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Feb 2021 18:20:13 +0000 (UTC)
IronPort-SDR: 8bSPicxjbk2WD5aPKeqVRl1+AQSh29SN6pVQoeLlot43hdIIEQvnH0QjJXYmtba4Uluhfpbb6H
 MNDTp2NbbvDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="183046171"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="183046171"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 10:20:13 -0800
IronPort-SDR: g/eKOjsFxE37QzNpXe0HQnRPCQY/VYOgYLlBmykUlc49jFJkoAIMQUQU8moCqgZpvaA7WpDWx8
 eQ+to+EDqwsQ==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="399609261"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 10:20:10 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 16 Feb 2021 20:19:23 +0200
Message-Id: <20210216181925.650082-8-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210216181925.650082-1-tomas.winkler@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 7/9] drm/i915/spi: mtd: implement access
 handlers
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

Implement mtd read, erase, and write handlers.
For erase operation address and size should be 4K aligned.
For write operation address and size has to be 4bytes aligned.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
---
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 138 +++++++++++++++++++++--
 1 file changed, 131 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi_drv.c b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
index bdf58e14fd6b..1e8a40339e6d 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi_drv.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
@@ -173,7 +173,6 @@ static int i915_spi_is_valid(struct i915_spi *spi)
 	return 0;
 }
 
-__maybe_unused
 static unsigned int spi_get_region(const struct i915_spi *spi, loff_t from)
 {
 	unsigned int i;
@@ -188,7 +187,6 @@ static unsigned int spi_get_region(const struct i915_spi *spi, loff_t from)
 	return i;
 }
 
-__maybe_unused
 static ssize_t spi_write(struct i915_spi *spi, u8 region,
 			 loff_t to, size_t len, const unsigned char *buf)
 {
@@ -219,7 +217,6 @@ static ssize_t spi_write(struct i915_spi *spi, u8 region,
 	return len;
 }
 
-__maybe_unused
 static ssize_t spi_read(struct i915_spi *spi, u8 region,
 			loff_t from, size_t len, unsigned char *buf)
 {
@@ -261,7 +258,6 @@ static ssize_t spi_read(struct i915_spi *spi, u8 region,
 	return len;
 }
 
-__maybe_unused
 static ssize_t
 spi_erase(struct i915_spi *spi, u8 region, loff_t from, u64 len, u64 *fail_addr)
 {
@@ -350,7 +346,63 @@ static int i915_spi_init(struct i915_spi *spi, struct device *device)
 
 static int i915_spi_erase(struct mtd_info *mtd, struct erase_info *info)
 {
-	dev_err(&mtd->dev, "erasing %lld %lld\n", info->addr, info->len);
+	struct i915_spi *spi;
+	unsigned int idx;
+	u8 region;
+	u64 addr;
+	ssize_t bytes;
+	loff_t from;
+	size_t len;
+	size_t total_len;
+
+	if (!mtd || !info)
+		return -EINVAL;
+
+	spi = mtd->priv;
+
+	if (!IS_ALIGNED(info->addr, SZ_4K) || !IS_ALIGNED(info->len, SZ_4K)) {
+		dev_err(&mtd->dev, "unaligned erase %llx %llx\n",
+			info->addr, info->len);
+		info->fail_addr = MTD_FAIL_ADDR_UNKNOWN;
+		return -EINVAL;
+	}
+
+	total_len = info->len;
+	addr = info->addr;
+
+	while (total_len > 0) {
+		if (!IS_ALIGNED(addr, SZ_4K) || !IS_ALIGNED(total_len, SZ_4K)) {
+			dev_err(&mtd->dev, "unaligned erase %llx %zx\n", addr, total_len);
+			info->fail_addr = addr;
+			return -ERANGE;
+		}
+
+		idx = spi_get_region(spi, addr);
+		if (idx >= spi->nregions) {
+			dev_err(&mtd->dev, "out of range");
+			info->fail_addr = MTD_FAIL_ADDR_UNKNOWN;
+			return -ERANGE;
+		}
+
+		from = addr - spi->regions[idx].offset;
+		region = spi->regions[idx].id;
+		len = total_len;
+		if (len > spi->regions[idx].size - from)
+			len = spi->regions[idx].size - from;
+
+		dev_dbg(&mtd->dev, "erasing region[%d] %s from %llx len %zx\n",
+			region, spi->regions[idx].name, from, len);
+
+		bytes = spi_erase(spi, region, from, len, &info->fail_addr);
+		if (bytes < 0) {
+			dev_dbg(&mtd->dev, "erase failed with %zd\n", bytes);
+			info->fail_addr += spi->regions[idx].offset;
+			return bytes;
+		}
+
+		addr += len;
+		total_len -= len;
+	}
 
 	return 0;
 }
@@ -358,7 +410,43 @@ static int i915_spi_erase(struct mtd_info *mtd, struct erase_info *info)
 static int i915_spi_read(struct mtd_info *mtd, loff_t from, size_t len,
 			 size_t *retlen, u_char *buf)
 {
-	dev_err(&mtd->dev, "read %lld %zd\n", from, len);
+	struct i915_spi *spi;
+	ssize_t ret;
+	unsigned int idx;
+	u8 region;
+
+	if (!mtd)
+		return -EINVAL;
+
+	spi = mtd->priv;
+
+	if (!IS_ALIGNED(from, sizeof(u32))) {
+		dev_err(&mtd->dev, "unaligned read %lld %zd\n", from, len);
+		return -EINVAL;
+	}
+
+	idx = spi_get_region(spi, from);
+
+	dev_dbg(&mtd->dev, "reading region[%d] %s from %lld len %zd\n",
+		spi->regions[idx].id, spi->regions[idx].name, from, len);
+
+	if (idx >= spi->nregions) {
+		dev_err(&mtd->dev, "out of ragnge");
+		return -ERANGE;
+	}
+
+	from -= spi->regions[idx].offset;
+	region = spi->regions[idx].id;
+	if (len > spi->regions[idx].size - from)
+		len = spi->regions[idx].size - from;
+
+	ret = spi_read(spi, region, from, len, buf);
+	if (ret < 0) {
+		dev_dbg(&mtd->dev, "read failed with %zd\n", ret);
+		return ret;
+	}
+
+	*retlen = ret;
 
 	return 0;
 }
@@ -366,7 +454,43 @@ static int i915_spi_read(struct mtd_info *mtd, loff_t from, size_t len,
 static int i915_spi_write(struct mtd_info *mtd, loff_t to, size_t len,
 			  size_t *retlen, const u_char *buf)
 {
-	dev_err(&mtd->dev, "writing %lld %zd\n", to, len);
+	struct i915_spi *spi;
+	ssize_t ret;
+	unsigned int idx;
+	u8 region;
+
+	if (!mtd)
+		return -EINVAL;
+
+	spi = mtd->priv;
+
+	if (!(IS_ALIGNED(len, 4) && IS_ALIGNED(to, 4))) {
+		dev_err(&mtd->dev, "unaligned write %lld %zd\n", to, len);
+		return -EINVAL;
+	}
+
+	idx = spi_get_region(spi, to);
+
+	dev_dbg(&mtd->dev, "writing region[%d] %s to %lld len %zd\n",
+		spi->regions[idx].id, spi->regions[idx].name, to, len);
+
+	if (idx >= spi->nregions) {
+		dev_err(&mtd->dev, "out of range");
+		return -ERANGE;
+	}
+
+	to -= spi->regions[idx].offset;
+	region = spi->regions[idx].id;
+	if (len > spi->regions[idx].size - to)
+		len = spi->regions[idx].size - to;
+
+	ret = spi_write(spi, region, to, len, buf);
+	if (ret < 0) {
+		dev_dbg(&mtd->dev, "write failed with %zd\n", ret);
+		return ret;
+	}
+
+	*retlen = ret;
 
 	return 0;
 }
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
