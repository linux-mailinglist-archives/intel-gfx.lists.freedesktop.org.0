Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39802AAE466
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 17:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F3410E825;
	Wed,  7 May 2025 15:18:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n/grUb8/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187A210E82C;
 Wed,  7 May 2025 15:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746631134; x=1778167134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uV2uDoE1MiS+bU7dTPi7gHlnxENeAzisD+yfHQUih6o=;
 b=n/grUb8/YjxfoqdKSW7BIvjAL38DfweFcZzqx6tLaVBBcG8QZ8b+v2Dl
 n9JV9/JHpWjeYbWoEH8Nxp/jEHb08LJ8HlPv7q79mQY6vkWTA4aQrUr/v
 mPrcVAQDSiKgyejnMA96pfZ0/E3ytfS4U2HNYQKeN7S/6iamp0P6Pb+vz
 NiiWsUpaLdZTHPj7KzGTigFPHPMvJSS0fsKOviS0sKgspYhJysIBnQAhw
 XIJJ3XGonqfwXALShw0Pi8QX7oI+XnDoKkfqqnCNxlreuu/sM3F1pU5Nt
 oi5AYN/blZLdnZJPBgXNriQDj+Sof/SH7dYhF08oy0F7UARE7UtShsPfX g==;
X-CSE-ConnectionGUID: sOjDTePBS8it+dgin0kM4w==
X-CSE-MsgGUID: QtPsf+TrRB+doM2DPERQkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="59027708"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="59027708"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:18:54 -0700
X-CSE-ConnectionGUID: d0WR/SKAStuTwL4/PCXP8g==
X-CSE-MsgGUID: HMGrgSXFQQO7//AFcsloNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="166913494"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.218])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:18:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 6/6] drm/i915/dram: allocate struct dram_info dynamically
Date: Wed,  7 May 2025 18:18:22 +0300
Message-Id: <9d4e725e985c41705a99157112758c57c2908ed8.1746631057.git.jani.nikula@intel.com>
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

Allocate struct drm_info dynamically, and convert the struct
drm_i915_private and struct xe_device dram_info member into a const
pointer. Move the struct definition to intel_dram.h, and keep it opaque
to everyone not needing it. This also removes the duplication of the
struct definition.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h       | 23 +++--------------------
 drivers/gpu/drm/i915/soc/intel_dram.c | 17 +++++++++++++++--
 drivers/gpu/drm/i915/soc/intel_dram.h | 23 ++++++++++++++++++++++-
 drivers/gpu/drm/xe/xe_device_types.h  | 21 ++-------------------
 4 files changed, 42 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d0e1980dcba2..0ab765761a61 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -62,9 +62,10 @@
 #include "intel_step.h"
 #include "intel_uncore.h"
 
+struct dram_info;
 struct drm_i915_clock_gating_funcs;
-struct vlv_s0ix_state;
 struct intel_pxp;
+struct vlv_s0ix_state;
 
 #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
 
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
index 54b93831dea9..81777a93edb3 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -5,6 +5,8 @@
 
 #include <linux/string_helpers.h>
 
+#include <drm/drm_managed.h>
+
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_dram.h"
@@ -704,7 +706,7 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
 
 int intel_dram_detect(struct drm_i915_private *i915)
 {
-	struct dram_info *dram_info = &i915->dram_info;
+	struct dram_info *dram_info;
 	int ret;
 
 	detect_fsb_freq(i915);
@@ -713,6 +715,12 @@ int intel_dram_detect(struct drm_i915_private *i915)
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
@@ -747,11 +755,16 @@ int intel_dram_detect(struct drm_i915_private *i915)
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
index 06c65dace026..04c628affae0 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -33,6 +33,7 @@
 #if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
 #include "intel_display_core.h"
 #include "intel_display_device.h"
+struct dram_info;
 #endif
 
 struct xe_ggtt;
@@ -589,25 +590,7 @@ struct xe_device {
 	 */
 	struct intel_display display;
 
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

