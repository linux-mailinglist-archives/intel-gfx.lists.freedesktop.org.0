Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B34A8799E55
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 14:44:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46CAB10E19E;
	Sun, 10 Sep 2023 12:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98EA10E19E
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Sep 2023 12:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694349884; x=1725885884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ygZ8FPGXW0k6w3nwVWljhAQltSK6KY1gpNQcuEsBK4Q=;
 b=PbMcqK76T1+CvXyaClrSVT2js7+yiglfOO+h5s6QVYmv//WYKGYEHSn5
 VfBGLo4nNww8NNwkZg1PwM9xWHBrwiq3s6q8yxcIdfB2lkeOSV+gzK8bN
 i224jRMzCHX3W6hyGI1V6eyHhoIMISrnkunwIMNBBcuYnpi1EoTK3NZXI
 D9okRxZagpOSy3+n76Ch9un6waCYWHYotcqsovdlGIw5wR81cqaQZ5vjv
 SiQxlxQcZjEeekk00L+Kieeun5OFxfPCCPHqnTUitQ0uNP2ETEj3HlI7v
 QQb+dgkK6dqXfrCAXtyvp9lVCh95POAhae2JvJq+B4Q3fzCJhAOE7kKnG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="441907114"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="441907114"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="1073815079"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="1073815079"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:41 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 10 Sep 2023 15:39:45 +0300
Message-Id: <20230910123949.1251964-7-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230910123949.1251964-1-alexander.usyskin@intel.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/10] drm/i915/spi: spi register with mtd
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

Register the on-die spi device with the mtd subsystem.
Refcount spi object on _get and _put mtd callbacks.

CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 118 +++++++++++++++++++++++
 1 file changed, 118 insertions(+)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi_drv.c b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
index e3b78128ba76..355f9ad71602 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi_drv.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
@@ -15,8 +15,13 @@
 #include <linux/delay.h>
 #include "spi/intel_spi.h"
 
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/partitions.h>
+
 struct i915_spi {
 	struct kref refcnt;
+	struct mtd_info mtd;
+	struct mutex lock; /* region access lock */
 	void __iomem *base;
 	size_t size;
 	unsigned int nregions;
@@ -407,6 +412,29 @@ static int i915_spi_init(struct i915_spi *spi, struct device *device)
 	return n;
 }
 
+static int i915_spi_erase(struct mtd_info *mtd, struct erase_info *info)
+{
+	dev_err(&mtd->dev, "erasing %lld %lld\n", info->addr, info->len);
+
+	return 0;
+}
+
+static int i915_spi_read(struct mtd_info *mtd, loff_t from, size_t len,
+			 size_t *retlen, u_char *buf)
+{
+	dev_err(&mtd->dev, "read %lld %zd\n", from, len);
+
+	return 0;
+}
+
+static int i915_spi_write(struct mtd_info *mtd, loff_t to, size_t len,
+			  size_t *retlen, const u_char *buf)
+{
+	dev_err(&mtd->dev, "writing %lld %zd\n", to, len);
+
+	return 0;
+}
+
 static void i915_spi_release(struct kref *kref)
 {
 	struct i915_spi *spi = container_of(kref, struct i915_spi, refcnt);
@@ -415,9 +443,90 @@ static void i915_spi_release(struct kref *kref)
 	pr_debug("freeing spi memory\n");
 	for (i = 0; i < spi->nregions; i++)
 		kfree(spi->regions[i].name);
+	mutex_destroy(&spi->lock);
 	kfree(spi);
 }
 
+static int i915_spi_get_device(struct mtd_info *mtd)
+{
+	struct mtd_info *master;
+	struct i915_spi *spi;
+
+	if (!mtd)
+		return -ENODEV;
+
+	master = mtd_get_master(mtd);
+	spi = master->priv;
+	if (WARN_ON(!spi))
+		return -EINVAL;
+	pr_debug("get spi %s %d\n", mtd->name, kref_read(&spi->refcnt));
+	kref_get(&spi->refcnt);
+
+	return 0;
+}
+
+static void i915_spi_put_device(struct mtd_info *mtd)
+{
+	struct mtd_info *master;
+	struct i915_spi *spi;
+
+	if (!mtd)
+		return;
+
+	master = mtd_get_master(mtd);
+	spi = master->priv;
+	if (WARN_ON(!spi))
+		return;
+	pr_debug("put spi %s %d\n", mtd->name, kref_read(&spi->refcnt));
+	kref_put(&spi->refcnt, i915_spi_release);
+}
+
+static int i915_spi_init_mtd(struct i915_spi *spi, struct device *device,
+			     unsigned int nparts)
+{
+	unsigned int i;
+	unsigned int n;
+	struct mtd_partition *parts = NULL;
+	int ret;
+
+	dev_dbg(device, "registering with mtd\n");
+
+	spi->mtd.owner = THIS_MODULE;
+	spi->mtd.dev.parent = device;
+	spi->mtd.flags = MTD_CAP_NORFLASH | MTD_WRITEABLE;
+	spi->mtd.type = MTD_DATAFLASH;
+	spi->mtd.priv = spi;
+	spi->mtd._write = i915_spi_write;
+	spi->mtd._read = i915_spi_read;
+	spi->mtd._erase = i915_spi_erase;
+	spi->mtd._get_device = i915_spi_get_device;
+	spi->mtd._put_device = i915_spi_put_device;
+	spi->mtd.writesize = SZ_1; /* 1 byte granularity */
+	spi->mtd.erasesize = SZ_4K; /* 4K bytes granularity */
+	spi->mtd.size = spi->size;
+
+	parts = kcalloc(spi->nregions, sizeof(*parts), GFP_KERNEL);
+	if (!parts)
+		return -ENOMEM;
+
+	for (i = 0, n = 0; i < spi->nregions && n < nparts; i++) {
+		if (!spi->regions[i].is_readable)
+			continue;
+		parts[n].name = spi->regions[i].name;
+		parts[n].offset  = spi->regions[i].offset;
+		parts[n].size = spi->regions[i].size;
+		if (!spi->regions[i].is_writable)
+			parts[n].mask_flags = MTD_WRITEABLE;
+		n++;
+	}
+
+	ret = mtd_device_register(&spi->mtd, parts, n);
+
+	kfree(parts);
+
+	return ret;
+}
+
 static int i915_spi_probe(struct auxiliary_device *aux_dev,
 			  const struct auxiliary_device_id *aux_dev_id)
 {
@@ -449,6 +558,7 @@ static int i915_spi_probe(struct auxiliary_device *aux_dev,
 	if (!spi)
 		return -ENOMEM;
 
+	mutex_init(&spi->lock);
 	kref_init(&spi->refcnt);
 
 	spi->nregions = nregions;
@@ -481,6 +591,12 @@ static int i915_spi_probe(struct auxiliary_device *aux_dev,
 		goto err;
 	}
 
+	ret = i915_spi_init_mtd(spi, device, ret);
+	if (ret) {
+		dev_err(device, "i915-spi failed init mtd %d\n", ret);
+		goto err;
+	}
+
 	dev_set_drvdata(&aux_dev->dev, spi);
 
 	dev_dbg(device, "i915-spi is bound\n");
@@ -499,6 +615,8 @@ static void i915_spi_remove(struct auxiliary_device *aux_dev)
 	if (!spi)
 		return;
 
+	mtd_device_unregister(&spi->mtd);
+
 	dev_set_drvdata(&aux_dev->dev, NULL);
 
 	kref_put(&spi->refcnt, i915_spi_release);
-- 
2.34.1

