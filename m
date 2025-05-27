Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65448AC4B76
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 11:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1620F10E42F;
	Tue, 27 May 2025 09:25:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TEziNSOe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C52B810E465;
 Tue, 27 May 2025 09:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748337958; x=1779873958;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MSx2yPQLmeprcfiNoCDq34KuZem9EfeJshXU3VGgAac=;
 b=TEziNSOehFAx1FZ9TRpHrB4YsQPjwQV5maTVXB//olMQjWQyA/3U1d3p
 8sUKEJKi+jwqeTQEjF4uRJut47XiDobhWcrw5PSwQTYHOk1C6T+ZmNhf/
 O1LMreZ0D+KiNIwmmodUwRY/sj5dNCCK5GkSTbTxJiYtnI+wt9OlPxKYv
 TnPPUFKq7+1TT0hx2QomYQKLIWHIO52ePqMXnMX8lIOC/yU2Mu7ehimjI
 T3WSTd8u8AayfdM7azQ4cwo8xDApnTDH512E3R14eDku9iQiYQGYfieQI
 2ZHpLOE+uHSx6NkPV9FXs5QRxy84qEcU35IDzd0IaHhkzmaIxMS+IK7fF g==;
X-CSE-ConnectionGUID: +39rWoaPQQaqcL7OTiiyiA==
X-CSE-MsgGUID: 2GFt2ZEvQEabEsyFIt1Jxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="50477429"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="50477429"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:58 -0700
X-CSE-ConnectionGUID: MZPB9U9FQvq43qg2f63etg==
X-CSE-MsgGUID: u7K+TuAORbWjhc5KfgC1iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="147498292"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 02:25:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 6/6] drm/i915/dram: allocate struct dram_info dynamically
Date: Tue, 27 May 2025 12:25:26 +0300
Message-Id: <73625095157346ea0e8614108c9b369208e5df66.1748337870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748337870.git.jani.nikula@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
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

Allocate struct drm_info dynamically, and convert the struct
drm_i915_private and struct xe_device dram_info member into a const
pointer. Move the struct definition to intel_dram.h, and keep it opaque
to everyone not needing it. This also removes the duplication of the
struct definition.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h       | 21 ++-------------------
 drivers/gpu/drm/i915/soc/intel_dram.c | 17 +++++++++++++++--
 drivers/gpu/drm/i915/soc/intel_dram.h | 23 ++++++++++++++++++++++-
 drivers/gpu/drm/xe/xe_device_types.h  | 21 ++-------------------
 4 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b6c632bd522c..aafab3800f42 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -60,6 +60,7 @@
 #include "intel_step.h"
 #include "intel_uncore.h"
 
+struct dram_info;
 struct drm_i915_clock_gating_funcs;
 struct intel_display;
 struct intel_pxp;
@@ -285,25 +286,7 @@ struct drm_i915_private {
 	u32 suspend_count;
 	struct vlv_s0ix_state *vlv_s0ix_state;
 
-	struct dram_info {
-		bool wm_lv_0_adjust_needed;
-		u8 num_channels;
-		bool symmetric_memory;
-		enum intel_dram_type {
-			INTEL_DRAM_UNKNOWN,
-			INTEL_DRAM_DDR3,
-			INTEL_DRAM_DDR4,
-			INTEL_DRAM_LPDDR3,
-			INTEL_DRAM_LPDDR4,
-			INTEL_DRAM_DDR5,
-			INTEL_DRAM_LPDDR5,
-			INTEL_DRAM_GDDR,
-			INTEL_DRAM_GDDR_ECC,
-			__INTEL_DRAM_TYPE_MAX,
-		} type;
-		u8 num_qgv_points;
-		u8 num_psf_gv_points;
-	} dram_info;
+	const struct dram_info *dram_info;
 
 	struct intel_runtime_pm runtime_pm;
 
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index e7fa938c98cf..59032c939d0f 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -5,6 +5,8 @@
 
 #include <linux/string_helpers.h>
 
+#include <drm/drm_managed.h>
+
 #include "../display/intel_display_core.h" /* FIXME */
 
 #include "i915_drv.h"
@@ -706,7 +708,7 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
 
 int intel_dram_detect(struct drm_i915_private *i915)
 {
-	struct dram_info *dram_info = &i915->dram_info;
+	struct dram_info *dram_info;
 	int ret;
 
 	detect_fsb_freq(i915);
@@ -715,6 +717,12 @@ int intel_dram_detect(struct drm_i915_private *i915)
 	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
 		return 0;
 
+	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
+	if (!dram_info)
+		return -ENOMEM;
+
+	i915->dram_info = dram_info;
+
 	/*
 	 * Assume level 0 watermark latency adjustment is needed until proven
 	 * otherwise, this w/a is not needed by bxt/glk.
@@ -749,11 +757,16 @@ int intel_dram_detect(struct drm_i915_private *i915)
 	return 0;
 }
 
+/*
+ * Returns NULL for platforms that don't have dram info. Avoid overzealous NULL
+ * checks, and prefer not dereferencing on platforms that shouldn't look at dram
+ * info, to catch accidental and incorrect dram info checks.
+ */
 const struct dram_info *intel_dram_info(struct drm_device *drm)
 {
 	struct drm_i915_private *i915 = to_i915(drm);
 
-	return &i915->dram_info;
+	return i915->dram_info;
 }
 
 static u32 gen9_edram_size_mb(struct drm_i915_private *i915, u32 cap)
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 25fe60b2b117..2a696e03aad4 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -6,9 +6,30 @@
 #ifndef __INTEL_DRAM_H__
 #define __INTEL_DRAM_H__
 
+#include <linux/types.h>
+
 struct drm_i915_private;
 struct drm_device;
-struct dram_info;
+
+struct dram_info {
+	bool wm_lv_0_adjust_needed;
+	u8 num_channels;
+	bool symmetric_memory;
+	enum intel_dram_type {
+		INTEL_DRAM_UNKNOWN,
+		INTEL_DRAM_DDR3,
+		INTEL_DRAM_DDR4,
+		INTEL_DRAM_LPDDR3,
+		INTEL_DRAM_LPDDR4,
+		INTEL_DRAM_DDR5,
+		INTEL_DRAM_LPDDR5,
+		INTEL_DRAM_GDDR,
+		INTEL_DRAM_GDDR_ECC,
+		__INTEL_DRAM_TYPE_MAX,
+	} type;
+	u8 num_qgv_points;
+	u8 num_psf_gv_points;
+};
 
 void intel_dram_edram_detect(struct drm_i915_private *i915);
 int intel_dram_detect(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 0482e00e58df..f3cba0ed4ec1 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -30,6 +30,7 @@
 #define TEST_VM_OPS_ERROR
 #endif
 
+struct dram_info;
 struct intel_display;
 struct xe_ggtt;
 struct xe_pat_ops;
@@ -590,25 +591,7 @@ struct xe_device {
 	 */
 	struct intel_display *display;
 
-	struct dram_info {
-		bool wm_lv_0_adjust_needed;
-		u8 num_channels;
-		bool symmetric_memory;
-		enum intel_dram_type {
-			INTEL_DRAM_UNKNOWN,
-			INTEL_DRAM_DDR3,
-			INTEL_DRAM_DDR4,
-			INTEL_DRAM_LPDDR3,
-			INTEL_DRAM_LPDDR4,
-			INTEL_DRAM_DDR5,
-			INTEL_DRAM_LPDDR5,
-			INTEL_DRAM_GDDR,
-			INTEL_DRAM_GDDR_ECC,
-			__INTEL_DRAM_TYPE_MAX,
-		} type;
-		u8 num_qgv_points;
-		u8 num_psf_gv_points;
-	} dram_info;
+	const struct dram_info *dram_info;
 
 	/*
 	 * edram size in MB.
-- 
2.39.5

