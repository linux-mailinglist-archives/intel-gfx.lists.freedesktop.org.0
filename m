Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E75C70B43
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75FE410E315;
	Wed, 19 Nov 2025 18:53:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IAvYa2Ng";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4A110E259;
 Wed, 19 Nov 2025 18:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578395; x=1795114395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rwV15eI4LnFfWsOcodq0S3+zfoYLk+wM1UpHo98nrAQ=;
 b=IAvYa2Ng8xmHEyjLldWmm0Yf7SpF6Xcfp4P0zPOLKpbqI5R62Md1vmJO
 DvkdzZddGlQTUu8D9iO+SbLPRJf9+jwQSBoDBsCEDNp+rXAOxwba6G39N
 /71naoC7pdlMpiGk2n1fyoLFKq6bVpvtPbtF52XoZFpOmbK12zfhnc1A4
 fGcTOHzOrTXI7RMf9xXJ7SdTeQfwB1g5hm277DVeqDF41aZVmEVuBqbe+
 NW7YI5cdsm//CIyzAh7AiK5CvazcMkd4Gr1UpzmT4LbI48FNPHJ0byxx3
 pcggKjxd31IhdaVw3Nrs6FFT7hzAkc7omP700drRb2BDM7+nwXUbaaqDb A==;
X-CSE-ConnectionGUID: BsMg3RgPTbOwRapxr+ysYg==
X-CSE-MsgGUID: JAhlGm09RVCXWCs7bxTu7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65334628"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65334628"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:02 -0800
X-CSE-ConnectionGUID: 5yShn9ywS1aYA9l7FQO+xA==
X-CSE-MsgGUID: avY2xViFTrelXc6q+uHJYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190948419"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 01/13] drm/i915/edram: extract i915_edram.[ch] for edram
 detection
Date: Wed, 19 Nov 2025 20:52:40 +0200
Message-ID: <612edb7b70755655fbf193ba8af1c539fb93b698.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

While edram detection ostensibly belongs with the rest of the dram stuff
in soc/intel_dram.c, it's only required by i915 core, not
display. Extract it to a separate i915_edram.[ch] file.

This allows us to drop the edram_size_mb member from struct xe_device.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile         |  1 +
 drivers/gpu/drm/i915/i915_driver.c    |  3 +-
 drivers/gpu/drm/i915/i915_edram.c     | 44 +++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_edram.h     | 11 +++++++
 drivers/gpu/drm/i915/soc/intel_dram.c | 36 ----------------------
 drivers/gpu/drm/i915/soc/intel_dram.h |  1 -
 drivers/gpu/drm/xe/xe_device_types.h  |  6 ----
 7 files changed, 58 insertions(+), 44 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/i915_edram.c
 create mode 100644 drivers/gpu/drm/i915/i915_edram.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 9a4f89c9a1cd..3ca4e0cace76 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -27,6 +27,7 @@ i915-y += \
 	i915_config.o \
 	i915_driver.o \
 	i915_drm_client.o \
+	i915_edram.o \
 	i915_getparam.o \
 	i915_ioctl.o \
 	i915_irq.o \
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 7c60b6873934..44a17ffc3058 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -94,6 +94,7 @@
 #include "i915_driver.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
+#include "i915_edram.h"
 #include "i915_file_private.h"
 #include "i915_getparam.h"
 #include "i915_hwmon.h"
@@ -493,7 +494,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	}
 
 	/* needs to be done before ggtt probe */
-	intel_dram_edram_detect(dev_priv);
+	i915_edram_detect(dev_priv);
 
 	ret = i915_set_dma_info(dev_priv);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/i915_edram.c b/drivers/gpu/drm/i915/i915_edram.c
new file mode 100644
index 000000000000..5818ec396d1e
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_edram.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2025 Intel Corporation */
+
+#include <drm/drm_print.h>
+
+#include "i915_drv.h"
+#include "i915_edram.h"
+#include "i915_reg.h"
+
+static u32 gen9_edram_size_mb(struct drm_i915_private *i915, u32 cap)
+{
+	static const u8 ways[8] = { 4, 8, 12, 16, 16, 16, 16, 16 };
+	static const u8 sets[4] = { 1, 1, 2, 2 };
+
+	return EDRAM_NUM_BANKS(cap) *
+		ways[EDRAM_WAYS_IDX(cap)] *
+		sets[EDRAM_SETS_IDX(cap)];
+}
+
+void i915_edram_detect(struct drm_i915_private *i915)
+{
+	u32 edram_cap = 0;
+
+	if (!(IS_HASWELL(i915) || IS_BROADWELL(i915) || GRAPHICS_VER(i915) >= 9))
+		return;
+
+	edram_cap = intel_uncore_read_fw(&i915->uncore, HSW_EDRAM_CAP);
+
+	/* NB: We can't write IDICR yet because we don't have gt funcs set up */
+
+	if (!(edram_cap & EDRAM_ENABLED))
+		return;
+
+	/*
+	 * The needed capability bits for size calculation are not there with
+	 * pre gen9 so return 128MB always.
+	 */
+	if (GRAPHICS_VER(i915) < 9)
+		i915->edram_size_mb = 128;
+	else
+		i915->edram_size_mb = gen9_edram_size_mb(i915, edram_cap);
+
+	drm_info(&i915->drm, "Found %uMB of eDRAM\n", i915->edram_size_mb);
+}
diff --git a/drivers/gpu/drm/i915/i915_edram.h b/drivers/gpu/drm/i915/i915_edram.h
new file mode 100644
index 000000000000..8319422ace9d
--- /dev/null
+++ b/drivers/gpu/drm/i915/i915_edram.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __I915_DRAM_H__
+#define __I915_DRAM_H__
+
+struct drm_i915_private;
+
+void i915_edram_detect(struct drm_i915_private *i915);
+
+#endif /* __I915_DRAM_H__ */
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 739cfe48f6db..cfe96c3c1b1a 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -861,39 +861,3 @@ const struct dram_info *intel_dram_info(struct drm_device *drm)
 
 	return i915->dram_info;
 }
-
-static u32 gen9_edram_size_mb(struct drm_i915_private *i915, u32 cap)
-{
-	static const u8 ways[8] = { 4, 8, 12, 16, 16, 16, 16, 16 };
-	static const u8 sets[4] = { 1, 1, 2, 2 };
-
-	return EDRAM_NUM_BANKS(cap) *
-		ways[EDRAM_WAYS_IDX(cap)] *
-		sets[EDRAM_SETS_IDX(cap)];
-}
-
-void intel_dram_edram_detect(struct drm_i915_private *i915)
-{
-	u32 edram_cap = 0;
-
-	if (!(IS_HASWELL(i915) || IS_BROADWELL(i915) || GRAPHICS_VER(i915) >= 9))
-		return;
-
-	edram_cap = intel_uncore_read_fw(&i915->uncore, HSW_EDRAM_CAP);
-
-	/* NB: We can't write IDICR yet because we don't have gt funcs set up */
-
-	if (!(edram_cap & EDRAM_ENABLED))
-		return;
-
-	/*
-	 * The needed capability bits for size calculation are not there with
-	 * pre gen9 so return 128MB always.
-	 */
-	if (GRAPHICS_VER(i915) < 9)
-		i915->edram_size_mb = 128;
-	else
-		i915->edram_size_mb = gen9_edram_size_mb(i915, edram_cap);
-
-	drm_info(&i915->drm, "Found %uMB of eDRAM\n", i915->edram_size_mb);
-}
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 8475ee379daa..58aaf2f91afe 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -35,7 +35,6 @@ struct dram_info {
 	bool has_16gb_dimms;
 };
 
-void intel_dram_edram_detect(struct drm_i915_private *i915);
 int intel_dram_detect(struct drm_i915_private *i915);
 unsigned int intel_fsb_freq(struct drm_i915_private *i915);
 unsigned int intel_mem_freq(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 0b2fa7c56d38..a072c020b84b 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -650,12 +650,6 @@ struct xe_device {
 	 */
 	const struct dram_info *dram_info;
 
-	/*
-	 * edram size in MB.
-	 * Cannot be determined by PCIID. You must always read a register.
-	 */
-	u32 edram_size_mb;
-
 	struct intel_uncore {
 		spinlock_t lock;
 	} uncore;
-- 
2.47.3

