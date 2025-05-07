Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA80AAE45F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 17:18:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106BC10E831;
	Wed,  7 May 2025 15:18:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZLp8pGhN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C236310E829;
 Wed,  7 May 2025 15:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746631116; x=1778167116;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ga2gSGjFqfhMIajKrmO5EGsFjYL8Sm7BpveqQylDstA=;
 b=ZLp8pGhNY/RwbhxwLpzyV0rLFL2Eg+QHPRpx4N1zWMVCisv9G4YhjSeb
 OnXexXUpEYwatzOFNG2ocIHdEDiPYGBplMt/3l0mOwkejUzV+32g6HHVA
 gojG5PIDSdzcaIXOoHD39VrY/KBAnTVctXTKu7w5smYAUHiZI0GljRlCW
 MCjVKYYghk2630IqEzpobnM1iTUaEcioP8vRhw91HfYPRGTMURJH1a1nn
 NP1yvhZRHi51gZBt+V6ga2+7W3as8c8bJgUbdi0GQMpkzIiU4LhFR0sRD
 6RukId/iDP87SxmtutYEw9J/hZ6SkTcaAlIZwY3kJ5YOwk7d6Ho6aqOhn Q==;
X-CSE-ConnectionGUID: t4jbJtE1S/KX4FtCLAfWVA==
X-CSE-MsgGUID: tXIJpKvwT8qImMeFNifH2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48525913"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="48525913"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:18:35 -0700
X-CSE-ConnectionGUID: 3tAdEik6R7S0rLmgCnkMIw==
X-CSE-MsgGUID: Tt1jp5PSScumlnW7ENl61A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="136996908"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:18:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/6] drm/i915/dram: add accessor for struct dram_info and use
 it
Date: Wed,  7 May 2025 18:18:18 +0300
Message-Id: <0fe0644e9f0ade73358d80a8478bd93b59baf9ab.1746631057.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746631057.git.jani.nikula@intel.com>
References: <cover.1746631057.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add a function to get the (const) pointer to struct dram_info, and use
that to obtain the pointer instead of poking at i915->dram_info
directly.

Clean up a couple of local variables while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c           |  5 +++--
 .../gpu/drm/i915/display/intel_display_power.c    |  9 ++++-----
 drivers/gpu/drm/i915/display/skl_watermark.c      | 15 ++++++++-------
 drivers/gpu/drm/i915/soc/intel_dram.c             |  7 +++++++
 drivers/gpu/drm/i915/soc/intel_dram.h             |  3 +++
 5 files changed, 25 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 6c537635b120..97aef729f7d4 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_atomic_state_helper.h>
 
+#include "soc/intel_dram.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
@@ -13,9 +14,9 @@
 #include "intel_cdclk.h"
 #include "intel_display_core.h"
 #include "intel_display_types.h"
-#include "skl_watermark.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
+#include "skl_watermark.h"
 
 /* Parameters for Qclk Geyserville (QGV) */
 struct intel_qgv_point {
@@ -763,7 +764,7 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
 
 void intel_bw_init_hw(struct intel_display *display)
 {
-	const struct dram_info *dram_info = &to_i915(display->drm)->dram_info;
+	const struct dram_info *dram_info = intel_dram_info(display->drm);
 
 	if (!HAS_DISPLAY(display))
 		return;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 16356523816f..2deeeca7081b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5,6 +5,7 @@
 
 #include <linux/string_helpers.h>
 
+#include "soc/intel_dram.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
@@ -1604,9 +1605,7 @@ static const struct buddy_page_mask wa_1409767108_buddy_page_masks[] = {
 
 static void tgl_bw_buddy_init(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
-	enum intel_dram_type type = dev_priv->dram_info.type;
-	u8 num_channels = dev_priv->dram_info.num_channels;
+	const struct dram_info *dram_info = intel_dram_info(display->drm);
 	const struct buddy_page_mask *table;
 	unsigned long abox_mask = DISPLAY_INFO(display)->abox_mask;
 	int config, i;
@@ -1623,8 +1622,8 @@ static void tgl_bw_buddy_init(struct intel_display *display)
 		table = tgl_buddy_page_masks;
 
 	for (config = 0; table[config].page_mask != 0; config++)
-		if (table[config].num_channels == num_channels &&
-		    table[config].type == type)
+		if (table[config].num_channels == dram_info->num_channels &&
+		    table[config].type == dram_info->type)
 			break;
 
 	if (table[config].page_mask == 0) {
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 8080f777910a..f5600f4b7772 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -7,6 +7,7 @@
 
 #include <drm/drm_blend.h>
 
+#include "soc/intel_dram.h"
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_wm.h"
@@ -3184,8 +3185,6 @@ void skl_watermark_ipc_update(struct intel_display *display)
 
 static bool skl_watermark_ipc_can_enable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	/* Display WA #0477 WaDisableIPC: skl */
 	if (display->platform.skylake)
 		return false;
@@ -3193,8 +3192,11 @@ static bool skl_watermark_ipc_can_enable(struct intel_display *display)
 	/* Display WA #1141: SKL:all KBL:all CFL */
 	if (display->platform.kabylake ||
 	    display->platform.coffeelake ||
-	    display->platform.cometlake)
-		return i915->dram_info.symmetric_memory;
+	    display->platform.cometlake) {
+		const struct dram_info *dram_info = intel_dram_info(display->drm);
+
+		return dram_info->symmetric_memory;
+	}
 
 	return true;
 }
@@ -3213,8 +3215,7 @@ static void
 adjust_wm_latency(struct intel_display *display,
 		  u16 wm[], int num_levels, int read_latency)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	bool wm_lv_0_adjust_needed = i915->dram_info.wm_lv_0_adjust_needed;
+	const struct dram_info *dram_info = intel_dram_info(display->drm);
 	int i, level;
 
 	/*
@@ -3250,7 +3251,7 @@ adjust_wm_latency(struct intel_display *display,
 	 * any underrun. If not able to get Dimm info assume 16GB dimm
 	 * to avoid any underrun.
 	 */
-	if (wm_lv_0_adjust_needed)
+	if (dram_info->wm_lv_0_adjust_needed)
 		wm[0] += 1;
 }
 
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index eee5c4f45a43..c77f0d63a951 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -748,6 +748,13 @@ void intel_dram_detect(struct drm_i915_private *i915)
 		    str_yes_no(dram_info->wm_lv_0_adjust_needed));
 }
 
+const struct dram_info *intel_dram_info(struct drm_device *drm)
+{
+	struct drm_i915_private *i915 = to_i915(drm);
+
+	return &i915->dram_info;
+}
+
 static u32 gen9_edram_size_mb(struct drm_i915_private *i915, u32 cap)
 {
 	static const u8 ways[8] = { 4, 8, 12, 16, 16, 16, 16, 16 };
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index a10136eda674..17a20cd2c6d5 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -7,9 +7,12 @@
 #define __INTEL_DRAM_H__
 
 struct drm_i915_private;
+struct drm_device;
+struct dram_info;
 
 void intel_dram_edram_detect(struct drm_i915_private *i915);
 void intel_dram_detect(struct drm_i915_private *i915);
 unsigned int i9xx_fsb_freq(struct drm_i915_private *i915);
+const struct dram_info *intel_dram_info(struct drm_device *drm);
 
 #endif /* __INTEL_DRAM_H__ */
-- 
2.39.5

