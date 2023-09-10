Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D72799E57
	for <lists+intel-gfx@lfdr.de>; Sun, 10 Sep 2023 14:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18CF910E1A6;
	Sun, 10 Sep 2023 12:44:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A99710E1A6
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 Sep 2023 12:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694349890; x=1725885890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5dzTAxHZzqYNKmXb/NsvT3WH2TDUKk+KWK8tIwHN5Ks=;
 b=Fdge/inTN1kX8Jk9fQRGnIKCS8IPnyyXAamyfTfE+SNfhFOXmIHJP2Wu
 nra0USIS+7MlHm8QJv8tBAJf0SyqdXJ4UR6yhUxP6x2GpTkQ1VaM7Bz25
 sV54YVAUawcTt90qrJE+1U/h+Qkf2waNX6YlGsgm+Jw7m1/fsYQm8+eKt
 KU+1V+i4NxYqhQI/SPiGT3kJET0Y9EDckGOcqpGL176e9voYGv0b2RR+X
 ATwrCPKKzB7HHMSeTG5qUfFUd7wooPjy1rHUgGn66K70NX/434lptoVwl
 r0CgmHCnuWv6E1A0eXlq9hstXiUFgwYIi24M9Lb2ImyH5uW+1lhpUDSeS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="441907128"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="441907128"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="1073815121"
X-IronPort-AV: E=Sophos;i="6.02,241,1688454000"; d="scan'208";a="1073815121"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2023 05:44:47 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Sun, 10 Sep 2023 15:39:47 +0300
Message-Id: <20230910123949.1251964-9-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230910123949.1251964-1-alexander.usyskin@intel.com>
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/spi: align 64bit read and write
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

GSC SPI HW errors on quad access overlapping 1K border.
Align 64bit read and write to avoid readq/writeq over 1K border.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/i915/spi/intel_spi_drv.c | 36 ++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/spi/intel_spi_drv.c b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
index 39369a0c64a0..22b804ebadc0 100644
--- a/drivers/gpu/drm/i915/spi/intel_spi_drv.c
+++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
@@ -14,6 +14,7 @@
 #include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/delay.h>
 #include "spi/intel_spi.h"
+#include "i915_reg_defs.h"
 
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/partitions.h>
@@ -232,6 +233,24 @@ static ssize_t spi_write(struct i915_spi *spi, u8 region,
 		len_s -= to_shift;
 	}
 
+	if (!IS_ALIGNED(to, sizeof(u64)) &&
+	    ((to ^ (to + len_s)) & REG_GENMASK(31, 10))) {
+		/*
+		 * Workaround reads/writes across 1k-aligned addresses
+		 * (start u32 before 1k, end u32 after)
+		 * as this fails on hardware.
+		 */
+		u32 data;
+
+		memcpy(&data, &buf[0], sizeof(u32));
+		spi_write32(spi, to, data);
+		if (spi_error(spi))
+			return -EIO;
+		buf += sizeof(u32);
+		to += sizeof(u32);
+		len_s -= sizeof(u32);
+	}
+
 	len8 = ALIGN_DOWN(len_s, sizeof(u64));
 	for (i = 0; i < len8; i += sizeof(u64)) {
 		u64 data;
@@ -290,6 +309,23 @@ static ssize_t spi_read(struct i915_spi *spi, u8 region,
 		from += from_shift;
 	}
 
+	if (!IS_ALIGNED(from, sizeof(u64)) &&
+	    ((from ^ (from + len_s)) & REG_GENMASK(31, 10))) {
+		/*
+		 * Workaround reads/writes across 1k-aligned addresses
+		 * (start u32 before 1k, end u32 after)
+		 * as this fails on hardware.
+		 */
+		u32 data = spi_read32(spi, from);
+
+		if (spi_error(spi))
+			return -EIO;
+		memcpy(&buf[0], &data, sizeof(data));
+		len_s -= sizeof(u32);
+		buf += sizeof(u32);
+		from += sizeof(u32);
+	}
+
 	len8 = ALIGN_DOWN(len_s, sizeof(u64));
 	for (i = 0; i < len8; i += sizeof(u64)) {
 		u64 data = spi_read64(spi, from + i);
-- 
2.34.1

