Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 609F788FEEE
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 13:26:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C5310F325;
	Thu, 28 Mar 2024 12:26:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NLiYdoPD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9C8C10EC2E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 12:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711628780; x=1743164780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8/ixFWtHZGV2ouT+71ybMHWWwBbswNk2afT9YSZgxFo=;
 b=NLiYdoPDdfq+P9CliYPfCWlpDh4OhMwPOgbH5YXRW8aasx6U2RnRiK2A
 +VZYhRtRg1YNhburWDvxRhvFD8zrp9iAr0SR7LmQaGSwc4UG8utmOZVIp
 sdgh8oQllUdEIb97IWTKCED32OG4WBr5j/LX1Zr+FwJZW+5zCqcdK8frr
 dUVO0G1Oi2qHlA2bF+Xt37SWiI6L9qA7pEe+xZEekQCp0jH30x5p7g5Qh
 nTH26TLi1d/BGG87aX6qRCXtwhFeyWJXRl+T44W8KePv4s47/4BSKiuY6
 fntNXC5nBCuukToD6b/TJ2G4dFRxXzkiLoSivh3erO+YgcGSKqiPyhcKU A==;
X-CSE-ConnectionGUID: 6NNHybSXQ4SGgMqIgLMYpQ==
X-CSE-MsgGUID: w0x28NZVSJmwVNctW5tiBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17505451"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17505451"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:26:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16657563"
Received: from sannilnx-dsk.jer.intel.com ([10.12.231.107])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 05:26:17 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>, linux-mtd@lists.infradead.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/13] spi: add auxiliary device for intel dg spi
Date: Thu, 28 Mar 2024 14:22:24 +0200
Message-Id: <20240328122236.1718111-2-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240328122236.1718111-1-alexander.usyskin@intel.com>
References: <20240328122236.1718111-1-alexander.usyskin@intel.com>
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

Add auxilary bus device structure for
Intel Discrete Graphics SPI device.

Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 include/linux/intel_dg_spi_aux.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 include/linux/intel_dg_spi_aux.h

diff --git a/include/linux/intel_dg_spi_aux.h b/include/linux/intel_dg_spi_aux.h
new file mode 100644
index 000000000000..d4c3830d56d6
--- /dev/null
+++ b/include/linux/intel_dg_spi_aux.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2019-2024, Intel Corporation. All rights reserved.
+ */
+
+#ifndef __INTEL_DG_SPI_AUX_H__
+#define __INTEL_DG_SPI_AUX_H__
+
+#include <linux/auxiliary_bus.h>
+
+#define INTEL_DG_SPI_REGIONS 13
+
+struct intel_dg_spi_region {
+	const char *name;
+};
+
+struct intel_dg_spi_dev {
+	struct auxiliary_device aux_dev;
+	bool writeable_override;
+	struct resource bar;
+	const struct intel_dg_spi_region *regions;
+};
+
+#define auxiliary_dev_to_intel_dg_spi_dev(auxiliary_dev) \
+	container_of(auxiliary_dev, struct intel_dg_spi_dev, aux_dev)
+
+#endif /* __INTEL_DG_SPI_AUX_H__ */
-- 
2.34.1

