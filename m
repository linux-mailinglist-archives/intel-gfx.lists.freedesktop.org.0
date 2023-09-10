Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB30799E56
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 14:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F76C10E1AC;
	Sun, 10 Sep 2023 12:44:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBB7510E1A6
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Sep 2023 12:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694349887; x=1725885887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cSIPXVgFJuWHax+sYMhUOh48F0N+stoHYl58q8800XI=;
 b=ABC2t9f6WMkm8KcxERnJlMQl6M20pHHawvdddTFv+ato/9Y5qgukjgHp
 hXigQo7WSKQxEfdCPkIKYfMNs1b2/Gir08WS4cymo+fhlPFU3sdeYp4pu
 SvfOT6P9AYUs0R/ZpRObesndV7HihMsiK1IhudQPjYlJvZ3zMNOlJw96N
 HgvFpMU1afvKhDuwBjRwAFl+RoeECzS89CNcAQVuWo0rL7Gya/viGQDZT
 JMguYdOdG/gz+pJYUxaL4swpmZrNRseLFjbNNVF+TqCpsT2S/xVPXgUZ3
 NfKkkOF9mKyzh3ZiEpkQK5P063Fs4KKsrbOtT2I+eRuSNb5Km3tRtif4k g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="441907122"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="441907122"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="1073815108"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="1073815108"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:44 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 10 Sep 2023 15:39:46 +0300
Message-Id: <20230910123949.1251964-8-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230910123949.1251964-1-alexander.usyskin@intel.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/10] drm/i915/spi: mtd: implement access
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

Implement mtd read, erase, and write handlers.
For erase operation address and size should be 4K aligned.
For write operation address and size has to be 4bytes aligned.

CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 152 +++++++++++++++++++++--
 1 file changed, 144 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi_drv.c b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
index 355f9ad71602..39369a0c64a0 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi_drv.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
@@ -175,7 +175,6 @@ static int i915_spi_is_valid(struct i915_spi *spi)
 	return 0;
 }
 
-__maybe_unused
 static unsigned int spi_get_region(const struct i915_spi *spi, loff_t from)
 {
 	unsigned int i;
@@ -207,7 +206,6 @@ static ssize_t spi_rewrite_partial(struct i915_spi *spi, loff_t to,
 	return len;
 }
 
-__maybe_unused
 static ssize_t spi_write(struct i915_spi *spi, u8 region,
 			 loff_t to, size_t len, const unsigned char *buf)
 {
@@ -266,7 +264,6 @@ static ssize_t spi_write(struct i915_spi *spi, u8 region,
 	return len;
 }
 
-__maybe_unused
 static ssize_t spi_read(struct i915_spi *spi, u8 region,
 			loff_t from, size_t len, unsigned char *buf)
 {
@@ -325,7 +322,6 @@ static ssize_t spi_read(struct i915_spi *spi, u8 region,
 	return len;
 }
 
-__maybe_unused
 static ssize_t
 spi_erase(struct i915_spi *spi, u8 region, loff_t from, u64 len, u64 *fail_addr)
 {
@@ -414,24 +410,164 @@ static int i915_spi_init(struct i915_spi *spi, struct device *device)
 
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
+	int ret = 0;
+
+	if (!mtd || !info)
+		return -EINVAL;
 
-	return 0;
+	spi = mtd->priv;
+	if (WARN_ON(!spi))
+		return -EINVAL;
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
+	mutex_lock(&spi->lock);
+
+	while (total_len > 0) {
+		if (!IS_ALIGNED(addr, SZ_4K) || !IS_ALIGNED(total_len, SZ_4K)) {
+			dev_err(&mtd->dev, "unaligned erase %llx %zx\n", addr, total_len);
+			info->fail_addr = addr;
+			ret = -ERANGE;
+			goto out;
+		}
+
+		idx = spi_get_region(spi, addr);
+		if (idx >= spi->nregions) {
+			dev_err(&mtd->dev, "out of range");
+			info->fail_addr = MTD_FAIL_ADDR_UNKNOWN;
+			ret = -ERANGE;
+			goto out;
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
+			ret = bytes;
+			goto out;
+		}
+
+		addr += len;
+		total_len -= len;
+	}
+
+out:
+	mutex_unlock(&spi->lock);
+	return ret;
 }
 
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
+	if (WARN_ON(!spi))
+		return -EINVAL;
+
+	idx = spi_get_region(spi, from);
 
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
+	mutex_lock(&spi->lock);
+
+	ret = spi_read(spi, region, from, len, buf);
+	if (ret < 0) {
+		dev_dbg(&mtd->dev, "read failed with %zd\n", ret);
+		mutex_unlock(&spi->lock);
+		return ret;
+	}
+
+	*retlen = ret;
+
+	mutex_unlock(&spi->lock);
 	return 0;
 }
 
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
+	if (WARN_ON(!spi))
+		return -EINVAL;
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
+	mutex_lock(&spi->lock);
+
+	ret = spi_write(spi, region, to, len, buf);
+	if (ret < 0) {
+		dev_dbg(&mtd->dev, "write failed with %zd\n", ret);
+		mutex_unlock(&spi->lock);
+		return ret;
+	}
+
+	*retlen = ret;
 
+	mutex_unlock(&spi->lock);
 	return 0;
 }
 
-- 
2.34.1

