Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F062C70B5E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9959D10E683;
	Wed, 19 Nov 2025 18:53:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="chuUxBf9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22FB710E67C;
 Wed, 19 Nov 2025 18:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578406; x=1795114406;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b1Aw1ZfEIOvtAc/PHUGWv4wOOOobrYfcwHg8Vc4mQ5s=;
 b=chuUxBf96Cyn0/WOKBSkYhaiB1Bt/lSIYp4oWijkARswZMRYRFCLPhUF
 Z2rdUt4nEXcfK1hop39By2AWexeS1DNuaV/m3DM8rvQ7nk7pGKX29JL09
 KwjTsjWP/Jlw1brg8fIo3gFArkPle27ndCEG85BjxOU/eQWZkEnXJuSIH
 3oZvzRtq3JBbhDInfvBAN4zFt6dh5Z/fo7LYdhBWip8k5G0bQsbOL9ut/
 m9V7ZJSTY/cRur2VV3GyqPjsD8QBzPVp6DxmrUZi8DFdNml3A0jaDGVb3
 m9GR+skh1ZH7kLpIgej4avQZBnBJvJm/1UB5pdrDdKatjfePXoejdqoor A==;
X-CSE-ConnectionGUID: Rzu5rnp0SNuG/I0C3V4o0Q==
X-CSE-MsgGUID: SfVardy5SbC0az5kJdUjCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65672351"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65672351"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:26 -0800
X-CSE-ConnectionGUID: 7TItPjB3R2qprXL5XWy4WQ==
X-CSE-MsgGUID: hsQ7g6PfQW2yW+lHIIUffg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="196279699"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 06/13] drm/i915: move dram_info to struct intel_display
Date: Wed, 19 Nov 2025 20:52:45 +0200
Message-ID: <cbbca93003952ea24ae60e66d79d901dba78ccd8.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
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

With all of dram code under display, also move dram_info to struct
intel_display.

This further cleans up struct xe_device from display related members.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++++
 drivers/gpu/drm/i915/display/intel_dram.c         | 7 ++-----
 drivers/gpu/drm/i915/i915_drv.h                   | 3 ---
 drivers/gpu/drm/xe/xe_device_types.h              | 2 --
 4 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 9b8414b77c15..9b36654b593d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -394,6 +394,10 @@ struct intel_display {
 		u32 mmio_base;
 	} dsi;
 
+	struct {
+		const struct dram_info *info;
+	} dram;
+
 	struct {
 		/* list of fbdev register on this device */
 		struct intel_fbdev *fbdev;
diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index 3dfcc7938740..b078fd9fe3c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -817,7 +817,6 @@ static int xelpdp_get_dram_info(struct intel_display *display, struct dram_info
 
 int intel_dram_detect(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct dram_info *dram_info;
 	int ret;
 
@@ -828,7 +827,7 @@ int intel_dram_detect(struct intel_display *display)
 	if (!dram_info)
 		return -ENOMEM;
 
-	i915->dram_info = dram_info;
+	display->dram.info = dram_info;
 
 	if (DISPLAY_VER(display) >= 14)
 		ret = xelpdp_get_dram_info(display, dram_info);
@@ -865,7 +864,5 @@ int intel_dram_detect(struct intel_display *display)
  */
 const struct dram_info *intel_dram_info(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	return i915->dram_info;
+	return display->dram.info;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5381a934a671..96af7776bee5 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -60,7 +60,6 @@
 #include "intel_step.h"
 #include "intel_uncore.h"
 
-struct dram_info;
 struct drm_i915_clock_gating_funcs;
 struct intel_display;
 struct intel_pxp;
@@ -279,8 +278,6 @@ struct drm_i915_private {
 	u32 suspend_count;
 	struct vlv_s0ix_state *vlv_s0ix_state;
 
-	const struct dram_info *dram_info;
-
 	struct intel_runtime_pm runtime_pm;
 
 	struct i915_perf perf;
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index a072c020b84b..6ce3247d1bd8 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -35,7 +35,6 @@
 #define TEST_VM_OPS_ERROR
 #endif
 
-struct dram_info;
 struct intel_display;
 struct intel_dg_nvm_dev;
 struct xe_ggtt;
@@ -648,7 +647,6 @@ struct xe_device {
 	 * drm_i915_private during build. After cleanup these should go away,
 	 * migrating to the right sub-structs
 	 */
-	const struct dram_info *dram_info;
 
 	struct intel_uncore {
 		spinlock_t lock;
-- 
2.47.3

