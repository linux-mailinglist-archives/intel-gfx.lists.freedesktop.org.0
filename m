Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 341CD31D024
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 19:20:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C20F6E486;
	Tue, 16 Feb 2021 18:20:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCEF66E47B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Feb 2021 18:20:16 +0000 (UTC)
IronPort-SDR: ZJk6rsgBlIT6HdR1HYOwFuuoAh4SmAcZEF5ZDxw0g0SrruNlicZj6pyVQaYzCzy61JGVxbJ99w
 Efd8v4GVQ9LQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="183046191"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="183046191"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 10:20:16 -0800
IronPort-SDR: YNQnl7WoJX4IbUBVXJaO1KyEfxdevgmwQ7obhlFNd5UgijBu0/6D1bP3rxkneQ4g3PqyM7XZmd
 5QnJJQB03Veg==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="399609286"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 10:20:13 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 16 Feb 2021 20:19:24 +0200
Message-Id: <20210216181925.650082-9-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210216181925.650082-1-tomas.winkler@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 8/9] drm/i915/spi: serialize spi access
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

The SPI regions cannot be accessed in parallel because for each
region the region selector has to be set. Add a mutex to prevent
parallel access.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 32 +++++++++++++++++++++---
 1 file changed, 28 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi_drv.c b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
index 1e8a40339e6d..9de49d00297d 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi_drv.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
@@ -20,6 +20,7 @@
 
 struct i915_spi {
 	struct mtd_info mtd;
+	struct mutex lock; /* region access lock */
 	void __iomem *base;
 	size_t size;
 	unsigned int nregions;
@@ -354,6 +355,7 @@ static int i915_spi_erase(struct mtd_info *mtd, struct erase_info *info)
 	loff_t from;
 	size_t len;
 	size_t total_len;
+	int ret = 0;
 
 	if (!mtd || !info)
 		return -EINVAL;
@@ -370,18 +372,23 @@ static int i915_spi_erase(struct mtd_info *mtd, struct erase_info *info)
 	total_len = info->len;
 	addr = info->addr;
 
+	if (!mutex_trylock(&spi->lock))
+		return -EBUSY;
+
 	while (total_len > 0) {
 		if (!IS_ALIGNED(addr, SZ_4K) || !IS_ALIGNED(total_len, SZ_4K)) {
 			dev_err(&mtd->dev, "unaligned erase %llx %zx\n", addr, total_len);
 			info->fail_addr = addr;
-			return -ERANGE;
+			ret = -ERANGE;
+			goto out;
 		}
 
 		idx = spi_get_region(spi, addr);
 		if (idx >= spi->nregions) {
 			dev_err(&mtd->dev, "out of range");
 			info->fail_addr = MTD_FAIL_ADDR_UNKNOWN;
-			return -ERANGE;
+			ret = -ERANGE;
+			goto out;
 		}
 
 		from = addr - spi->regions[idx].offset;
@@ -397,14 +404,17 @@ static int i915_spi_erase(struct mtd_info *mtd, struct erase_info *info)
 		if (bytes < 0) {
 			dev_dbg(&mtd->dev, "erase failed with %zd\n", bytes);
 			info->fail_addr += spi->regions[idx].offset;
-			return bytes;
+			ret = bytes;
+			goto out;
 		}
 
 		addr += len;
 		total_len -= len;
 	}
 
-	return 0;
+out:
+	mutex_unlock(&spi->lock);
+	return ret;
 }
 
 static int i915_spi_read(struct mtd_info *mtd, loff_t from, size_t len,
@@ -440,14 +450,19 @@ static int i915_spi_read(struct mtd_info *mtd, loff_t from, size_t len,
 	if (len > spi->regions[idx].size - from)
 		len = spi->regions[idx].size - from;
 
+	if (!mutex_trylock(&spi->lock))
+		return -EBUSY;
+
 	ret = spi_read(spi, region, from, len, buf);
 	if (ret < 0) {
 		dev_dbg(&mtd->dev, "read failed with %zd\n", ret);
+		mutex_unlock(&spi->lock);
 		return ret;
 	}
 
 	*retlen = ret;
 
+	mutex_unlock(&spi->lock);
 	return 0;
 }
 
@@ -484,14 +499,19 @@ static int i915_spi_write(struct mtd_info *mtd, loff_t to, size_t len,
 	if (len > spi->regions[idx].size - to)
 		len = spi->regions[idx].size - to;
 
+	if (!mutex_trylock(&spi->lock))
+		return -EBUSY;
+
 	ret = spi_write(spi, region, to, len, buf);
 	if (ret < 0) {
 		dev_dbg(&mtd->dev, "write failed with %zd\n", ret);
+		mutex_unlock(&spi->lock);
 		return ret;
 	}
 
 	*retlen = ret;
 
+	mutex_unlock(&spi->lock);
 	return 0;
 }
 
@@ -505,6 +525,8 @@ static int i915_spi_init_mtd(struct i915_spi *spi, struct device *device,
 
 	dev_dbg(device, "registering with mtd\n");
 
+	mutex_init(&spi->lock);
+
 	spi->mtd.owner = THIS_MODULE;
 	spi->mtd.dev.parent = device;
 	spi->mtd.flags = MTD_CAP_NORFLASH | MTD_WRITEABLE;
@@ -630,6 +652,8 @@ static int i915_spi_remove(struct platform_device *platdev)
 
 	mtd_device_unregister(&spi->mtd);
 
+	mutex_destroy(&spi->lock);
+
 	platform_set_drvdata(platdev, NULL);
 
 	return 0;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
