Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E30DB29EDB
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 12:08:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB49D10E422;
	Mon, 18 Aug 2025 10:08:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b1nJeH/A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9AE810E422;
 Mon, 18 Aug 2025 10:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755511681; x=1787047681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vHEn1dytWn60S44+kqCXWQzxgUlWtmYbuP4kzE8Z94w=;
 b=b1nJeH/A03WKVXvtrM9+9SMGg3AiCA2GsWSe7T0cL88hrkP+2Vsi/bSN
 AR8DEvfScg1fRI6rygTpfZa9qfYExy8vo+p5IbjmbDG70Jm9Je2ZVsXfW
 CfvzYkHy29/r+TTssqZHznwZg1iTn/6XMm6p7LCVoqimXECw/mUylrjbQ
 EbVOeA4omz0anxLBcr9K/9awamqWekJ1z2/OF+SHha9h1mBp0yvsBRUXb
 46QwYuvo2cHxRjoa5WvyUsIu0XvVj19/jq7/pWCeeCVyac2z3Om3iqcge
 MpQ6NQXODK22FF3Bqs1nue+ghknNeckKEdvk/uHqaPSUJfmev1JTPGtFI Q==;
X-CSE-ConnectionGUID: sLAm78qUTT6/niTWEdHCEg==
X-CSE-MsgGUID: oqgrS8dyQFCbsSfpOP8foA==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="69105568"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="69105568"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:08:01 -0700
X-CSE-ConnectionGUID: W3s8uWhhRkekSAmBMR/LdA==
X-CSE-MsgGUID: /o3o1q23TF+VHz4G8a2i+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="171778876"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 03:07:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [CI 5/5] drm/i915/dram: move fsb_freq and mem_freq to dram info
Date: Mon, 18 Aug 2025 13:07:28 +0300
Message-ID: <a38c4b105ba9098fa0b128cb86cd4eb63bcc27e8.1755511595.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755511595.git.jani.nikula@intel.com>
References: <cover.1755511595.git.jani.nikula@intel.com>
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

Store fsb_freq and mem_freq in dram info the same way we do for other
memory info on later platforms for a slightly more unified approach.

This allows us to remove fsb_freq, mem_freq and is_ddr3 members from
struct drm_i915_private and struct xe_device.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 13 +++++----
 drivers/gpu/drm/i915/i915_drv.h        |  2 --
 drivers/gpu/drm/i915/soc/intel_dram.c  | 38 +++++++++++---------------
 drivers/gpu/drm/i915/soc/intel_dram.h  |  2 ++
 drivers/gpu/drm/xe/xe_device_types.h   |  1 -
 5 files changed, 26 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 1f9db5118777..591acce2a4b1 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3,6 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
+#include "soc/intel_dram.h"
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_wm.h"
@@ -85,7 +87,8 @@ static const struct cxsr_latency cxsr_latency_table[] = {
 
 static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	const struct dram_info *dram_info = intel_dram_info(display->drm);
+	bool is_ddr3 = dram_info->type == INTEL_DRAM_DDR3;
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
@@ -93,15 +96,15 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *dis
 		bool is_desktop = !display->platform.mobile;
 
 		if (is_desktop == latency->is_desktop &&
-		    i915->is_ddr3 == latency->is_ddr3 &&
-		    DIV_ROUND_CLOSEST(i915->fsb_freq, 1000) == latency->fsb_freq &&
-		    DIV_ROUND_CLOSEST(i915->mem_freq, 1000) == latency->mem_freq)
+		    is_ddr3 == latency->is_ddr3 &&
+		    DIV_ROUND_CLOSEST(dram_info->fsb_freq, 1000) == latency->fsb_freq &&
+		    DIV_ROUND_CLOSEST(dram_info->mem_freq, 1000) == latency->mem_freq)
 			return latency;
 	}
 
 	drm_dbg_kms(display->drm,
 		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
-		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
+		    is_ddr3 ? "3" : "2", dram_info->fsb_freq, dram_info->mem_freq);
 
 	return NULL;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 4e4e89746aa6..2f3965feada1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -237,8 +237,6 @@ struct drm_i915_private {
 
 	bool preserve_bios_swizzle;
 
-	unsigned int fsb_freq, mem_freq, is_ddr3;
-
 	unsigned int hpll_freq;
 	unsigned int czclk_freq;
 
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index e087e8d205f7..3eb748ab44d9 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -150,17 +150,6 @@ unsigned int intel_mem_freq(struct drm_i915_private *i915)
 		return 0;
 }
 
-static void detect_mem_freq(struct drm_i915_private *i915)
-{
-	i915->mem_freq = intel_mem_freq(i915);
-
-	if (IS_PINEVIEW(i915))
-		i915->is_ddr3 = pnv_is_ddr3(i915);
-
-	if (i915->mem_freq)
-		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
-}
-
 static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
 {
 	u32 fsb;
@@ -253,11 +242,20 @@ unsigned int intel_fsb_freq(struct drm_i915_private *i915)
 		return 0;
 }
 
-static void detect_fsb_freq(struct drm_i915_private *i915)
+static int i915_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
-	i915->fsb_freq = intel_fsb_freq(i915);
-	if (i915->fsb_freq)
-		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
+	dram_info->fsb_freq = intel_fsb_freq(i915);
+	if (dram_info->fsb_freq)
+		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", dram_info->fsb_freq);
+
+	dram_info->mem_freq = intel_mem_freq(i915);
+	if (dram_info->mem_freq)
+		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", dram_info->mem_freq);
+
+	if (IS_PINEVIEW(i915) && pnv_is_ddr3(i915))
+		dram_info->type = INTEL_DRAM_DDR3;
+
+	return 0;
 }
 
 static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
@@ -730,12 +728,6 @@ int intel_dram_detect(struct drm_i915_private *i915)
 	if (IS_DG2(i915) || !HAS_DISPLAY(display))
 		return 0;
 
-	detect_fsb_freq(i915);
-	detect_mem_freq(i915);
-
-	if (GRAPHICS_VER(i915) < 9)
-		return 0;
-
 	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
 	if (!dram_info)
 		return -ENOMEM;
@@ -756,8 +748,10 @@ int intel_dram_detect(struct drm_i915_private *i915)
 		ret = gen11_get_dram_info(i915, dram_info);
 	else if (IS_BROXTON(i915) || IS_GEMINILAKE(i915))
 		ret = bxt_get_dram_info(i915, dram_info);
-	else
+	else if (GRAPHICS_VER(i915) >= 9)
 		ret = skl_get_dram_info(i915, dram_info);
+	else
+		ret = i915_get_dram_info(i915, dram_info);
 
 	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
 		    intel_dram_type_str(dram_info->type));
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 5ba75e279e84..97d21894abdc 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -29,6 +29,8 @@ struct dram_info {
 	} type;
 	u8 num_qgv_points;
 	u8 num_psf_gv_points;
+	unsigned int fsb_freq;
+	unsigned int mem_freq;
 };
 
 void intel_dram_edram_detect(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 01e8fa0d2f9f..e67fbfe59afa 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -609,7 +609,6 @@ struct xe_device {
 	struct {
 		unsigned int hpll_freq;
 		unsigned int czclk_freq;
-		unsigned int fsb_freq, mem_freq, is_ddr3;
 	};
 #endif
 };
-- 
2.47.2

