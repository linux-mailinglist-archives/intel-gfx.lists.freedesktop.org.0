Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C792BC56B79
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 10:58:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF53210E17E;
	Thu, 13 Nov 2025 09:58:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tlm7ajT8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D7B10E168;
 Thu, 13 Nov 2025 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763027897; x=1794563897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZEFSHepjpyQFGQzylG8NLpl+uy6vZKVzY97qCl/X0Ck=;
 b=Tlm7ajT8JlvRmNsu+6KiI3CHkYeJKfG9fTEl2S+6odgEF8d3sS1mYynO
 1Hp8JJzu8eOJjxifsNrDLNB2UlqkZoiPB/kRg6RQVBQ0VdnWyRpfT9bmW
 MZmDOONaJeMO8qKuvhdNCgK9qKluDIv7g6cok8/BuYeKvhNrJH/B5yTZh
 BHX86TK8/+3oNhSXphj6/RgArYKFtv65pUrX293IUDbXrEFlKdFNMjRTs
 sD1Q04CmcQfcOUyXGNgnD7hM7MRLhWNPhztNzOG0Zav29X1Kx1UVILf+Z
 cCA5QvSRdPQPrs15LC3O4pUchfjPJHYd13LNLFbpmJmQq8msCKoGNK01j Q==;
X-CSE-ConnectionGUID: 4kgwo0tjSZWTT2rYLNKg6w==
X-CSE-MsgGUID: wyA7QrUPTXWuvtPO9JUAFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="75418410"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="75418410"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 01:58:16 -0800
X-CSE-ConnectionGUID: nMtih5OzThSmf88oItIKnw==
X-CSE-MsgGUID: owEBTkFLR4K5CCw3v8NBMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="189732349"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 01:58:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, uma.shankar@intel.com
Subject: [PATCH 1/8] drm/i915/edram: extract i915_edram.[ch] for edram
 detection
Date: Thu, 13 Nov 2025 11:57:58 +0200
Message-ID: <25d2f68e87361357f8ebb21aead0189fe56c330d.1763027774.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
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
index 7c89e5e0a277..b620ae316e92 100644
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
index c97b76771917..f55e65e7dd4d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -93,6 +93,7 @@
 #include "i915_driver.h"
 #include "i915_drm_client.h"
 #include "i915_drv.h"
+#include "i915_edram.h"
 #include "i915_file_private.h"
 #include "i915_getparam.h"
 #include "i915_hwmon.h"
@@ -492,7 +493,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
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
index 3e588762709a..2a21d1cf0476 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -785,39 +785,3 @@ const struct dram_info *intel_dram_info(struct drm_device *drm)
 
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

