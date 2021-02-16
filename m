Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2171131D022
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 19:20:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77FEC6E46B;
	Tue, 16 Feb 2021 18:20:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5416E6E46B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Feb 2021 18:20:10 +0000 (UTC)
IronPort-SDR: pGeSORp37/ZhBO+/GE362+xbhlEpiMIsxfjLHaUukdDTQD2q8jzK7fJaeTEdvlZgQ57sizBTDw
 ye9Is6C7NpMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="183046155"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="183046155"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 10:20:10 -0800
IronPort-SDR: jlWW7UNI/mwQEjhAhXCFqxGnlg37B6ErK7DFwQE6i3ppIvHbXcboRHv/XDwKoTpLIHYu1WZMJj
 YlUee6fuCsrQ==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="399609237"
Received: from twinkler-lnx.jer.intel.com ([10.12.91.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 10:20:06 -0800
From: Tomas Winkler <tomas.winkler@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Tue, 16 Feb 2021 20:19:22 +0200
Message-Id: <20210216181925.650082-7-tomas.winkler@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210216181925.650082-1-tomas.winkler@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 6/9] drm/i915/spi: spi register with mtd
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

Register the on-die spi device with the mtd subsystem.
Add mtd access stub functions.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
---
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 86 +++++++++++++++++++++++-
 1 file changed, 85 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi_drv.c b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
index df6a461d520d..bdf58e14fd6b 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi_drv.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
@@ -15,7 +15,11 @@
 #include <linux/delay.h>
 #include <spi/intel_spi.h>
 
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/partitions.h>
+
 struct i915_spi {
+	struct mtd_info mtd;
 	void __iomem *base;
 	size_t size;
 	unsigned int nregions;
@@ -344,6 +348,73 @@ static int i915_spi_init(struct i915_spi *spi, struct device *device)
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
+	spi->mtd.writesize = SZ_4; /* 4 bytes granularity */
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
 static int i915_spi_probe(struct platform_device *platdev)
 {
 	struct resource *bar;
@@ -413,15 +484,28 @@ static int i915_spi_probe(struct platform_device *platdev)
 		return -ENODEV;
 	}
 
+	ret = i915_spi_init_mtd(spi, device, ret);
+	if (ret) {
+		dev_err(device, "i915-spi failed init mtd %d\n", ret);
+		return ret;
+	}
+
 	platform_set_drvdata(platdev, spi);
 
 	dev_dbg(device, "i915-spi is bound\n");
 
-	return 0;
+	return ret;
 }
 
 static int i915_spi_remove(struct platform_device *platdev)
 {
+	struct i915_spi *spi = platform_get_drvdata(platdev);
+
+	if (!spi)
+		return 0;
+
+	mtd_device_unregister(&spi->mtd);
+
 	platform_set_drvdata(platdev, NULL);
 
 	return 0;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
