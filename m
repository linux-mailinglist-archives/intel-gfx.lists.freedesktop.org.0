Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B8793B24F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 16:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3701410E6E3;
	Wed, 24 Jul 2024 14:09:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ifbNg+0S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C07310E6D6;
 Wed, 24 Jul 2024 14:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721830139; x=1753366139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eBUQKNtw4LwDgGuitL/o8ecQu+87BT7PYllC6mKwIoM=;
 b=ifbNg+0SxVS9vld6JllH2Z9C4bHnNKkMaV48uMt7TRkGQphIviNUaAvb
 3HEloMPiE9/2TkGaYqcUJ//sLSP4/xZJWE2Dnq35wEt0AD4hJEZe6KbYe
 UK842Dpx9eEdxIOhkfc/J9/Ufb3aFX7GrJUTB1zB3pPiHXxrzThfk242H
 54oqG/OjVIs4DD6rUvScihv0VoKkiz3lEPphj3qGyrIp1mzHypadLBKhe
 cYfsf0Bs4JOgDAJaDhQd47vGxe8g34zdWlHGD1lWXYGTrpx1URmAFSgf1
 q37A1vyZ/PngvnYyeckD/SWAYkX1a0CnLiBg/++1oaqsAkFnbDciOZfeX w==;
X-CSE-ConnectionGUID: e+4dPpXRRxCGVCPDZzG7jg==
X-CSE-MsgGUID: aUGj4hYVTJqoWHAk3dp/Pg==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30173715"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30173715"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 07:08:58 -0700
X-CSE-ConnectionGUID: YfQx6x9UQoqpZThDYfgoNQ==
X-CSE-MsgGUID: 0nsPuQg4Te2meBH9AV0yLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="83211383"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 07:08:54 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Mark Brown <broonie@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-spi@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 03/12] spi: intel-dg: implement spi access functions
Date: Wed, 24 Jul 2024 17:00:05 +0300
Message-Id: <20240724140014.428991-4-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240724140014.428991-1-alexander.usyskin@intel.com>
References: <20240724140014.428991-1-alexander.usyskin@intel.com>
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

From: Tomas Winkler <tomas.winkler@intel.com>

Implement spi_read(), spi_erase() and spi_write() functions.

CC: Lucas De Marchi <lucas.demarchi@intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/spi/spi-intel-dg.c | 199 +++++++++++++++++++++++++++++++++++++
 1 file changed, 199 insertions(+)

diff --git a/drivers/spi/spi-intel-dg.c b/drivers/spi/spi-intel-dg.c
index 1da8f527d47c..63c8292347e7 100644
--- a/drivers/spi/spi-intel-dg.c
+++ b/drivers/spi/spi-intel-dg.c
@@ -3,13 +3,16 @@
  * Copyright(c) 2019-2024, Intel Corporation. All rights reserved.
  */
 
+#include <linux/delay.h>
 #include <linux/device.h>
 #include <linux/intel_dg_spi_aux.h>
 #include <linux/io.h>
+#include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/string.h>
 #include <linux/slab.h>
+#include <linux/sizes.h>
 #include <linux/types.h>
 
 struct intel_dg_spi {
@@ -84,6 +87,33 @@ static inline u32 spi_read32(struct intel_dg_spi *spi, u32 address)
 	return ioread32(base + SPI_TRIGGER_REG);
 }
 
+static inline u64 spi_read64(struct intel_dg_spi *spi, u32 address)
+{
+	void __iomem *base = spi->base;
+
+	iowrite32(address, base + SPI_ADDRESS_REG);
+
+	return readq(base + SPI_TRIGGER_REG);
+}
+
+static void spi_write32(struct intel_dg_spi *spi, u32 address, u32 data)
+{
+	void __iomem *base = spi->base;
+
+	iowrite32(address, base + SPI_ADDRESS_REG);
+
+	iowrite32(data, base + SPI_TRIGGER_REG);
+}
+
+static void spi_write64(struct intel_dg_spi *spi, u32 address, u64 data)
+{
+	void __iomem *base = spi->base;
+
+	iowrite32(address, base + SPI_ADDRESS_REG);
+
+	writeq(data, base + SPI_TRIGGER_REG);
+}
+
 static int spi_get_access_map(struct intel_dg_spi *spi)
 {
 	u32 flmap1;
@@ -140,6 +170,175 @@ static int intel_dg_spi_is_valid(struct intel_dg_spi *spi)
 	return 0;
 }
 
+__maybe_unused
+static unsigned int spi_get_region(const struct intel_dg_spi *spi, loff_t from)
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
+static ssize_t spi_rewrite_partial(struct intel_dg_spi *spi, loff_t to,
+			       loff_t offset, size_t len, const u32 *newdata)
+{
+	u32 data = spi_read32(spi, to);
+
+	if (spi_error(spi))
+		return -EIO;
+
+	memcpy((u8 *)&data + offset, newdata, len);
+
+	spi_write32(spi, to, data);
+	if (spi_error(spi))
+		return -EIO;
+
+	return len;
+}
+
+__maybe_unused
+static ssize_t spi_write(struct intel_dg_spi *spi, u8 region,
+			 loff_t to, size_t len, const unsigned char *buf)
+{
+	size_t i;
+	size_t len8;
+	size_t len4;
+	size_t to4;
+	size_t to_shift;
+	size_t len_s = len;
+	ssize_t ret;
+
+	spi_set_region_id(spi, region);
+
+	to4 = ALIGN_DOWN(to, sizeof(u32));
+	to_shift = min(sizeof(u32) - ((size_t)to - to4), len);
+	if (to - to4) {
+		ret = spi_rewrite_partial(spi, to4, to - to4, to_shift,
+					  (uint32_t *)&buf[0]);
+		if (ret < 0)
+			return ret;
+
+		buf += to_shift;
+		to += to_shift;
+		len_s -= to_shift;
+	}
+
+	len8 = ALIGN_DOWN(len_s, sizeof(u64));
+	for (i = 0; i < len8; i += sizeof(u64)) {
+		u64 data;
+
+		memcpy(&data, &buf[i], sizeof(u64));
+		spi_write64(spi, to + i, data);
+		if (spi_error(spi))
+			return -EIO;
+	}
+
+	len4 = len_s - len8;
+	if (len4 >= sizeof(u32)) {
+		u32 data;
+
+		memcpy(&data, &buf[i], sizeof(u32));
+		spi_write32(spi, to + i, data);
+		if (spi_error(spi))
+			return -EIO;
+		i += sizeof(u32);
+		len4 -= sizeof(u32);
+	}
+
+	if (len4 > 0) {
+		ret = spi_rewrite_partial(spi, to + i, 0, len4,
+					  (uint32_t *)&buf[i]);
+		if (ret < 0)
+			return ret;
+	}
+
+	return len;
+}
+
+__maybe_unused
+static ssize_t spi_read(struct intel_dg_spi *spi, u8 region,
+			loff_t from, size_t len, unsigned char *buf)
+{
+	size_t i;
+	size_t len8;
+	size_t len4;
+	size_t from4;
+	size_t from_shift;
+	size_t len_s = len;
+
+	spi_set_region_id(spi, region);
+
+	from4 = ALIGN_DOWN(from, sizeof(u32));
+	from_shift = min(sizeof(u32) - ((size_t)from - from4), len);
+
+	if (from - from4) {
+		u32 data = spi_read32(spi, from4);
+
+		if (spi_error(spi))
+			return -EIO;
+		memcpy(&buf[0], (u8 *)&data + (from - from4), from_shift);
+		len_s -= from_shift;
+		buf += from_shift;
+		from += from_shift;
+	}
+
+	len8 = ALIGN_DOWN(len_s, sizeof(u64));
+	for (i = 0; i < len8; i += sizeof(u64)) {
+		u64 data = spi_read64(spi, from + i);
+
+		if (spi_error(spi))
+			return -EIO;
+
+		memcpy(&buf[i], &data, sizeof(data));
+	}
+
+	len4 = len_s - len8;
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
+spi_erase(struct intel_dg_spi *spi, u8 region, loff_t from, u64 len, u64 *fail_addr)
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
 static int intel_dg_spi_init(struct intel_dg_spi *spi, struct device *device)
 {
 	int ret;
-- 
2.34.1

