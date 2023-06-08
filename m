Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F3B728358
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 17:12:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D893810E5DE;
	Thu,  8 Jun 2023 15:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCD6810E5DE
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 15:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686237130; x=1717773130;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mxu6XyzIaD8FLvLttgDKp4Nz1WUH5HXhvmeIGEptGO8=;
 b=Y2xxX95CY39pDAQCI+4obGon1HTR8Fl2XyMDE+QCSf3BUngcoImutdmb
 V78wMBOUGwMcUBEFuuor2xv1tBIfOt4rzcFul95Eu/+hhV0KlX0DpauWw
 yxMip3FaECKkyB+f0orjqwKifVBBx1MvnU2leIvsUXI47ffUwtcT653X7
 p7KbJWSySIbQjei6QOoZFYtUxXcf+u8SpYSim9/c/YHn6HFE0nNsIUuE+
 3Y7bx8c3dpiv3ElGPMll9ko/1O6IFisak4KJGUZBMtbv+N/SZ1gMJRoqx
 WLmV1ESXimBppF7Fg/cnj1Gte1VI6IQHlyvRGiV1tFTEEL64KSkSLA/UJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="423201654"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="423201654"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 08:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="956751538"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="956751538"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 08:09:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 18:09:04 +0300
Message-Id: <ab7546a0adc8e7a2a2c3fbb9404f68f76b0f2a22.1686236840.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1686236840.git.jani.nikula@intel.com>
References: <cover.1686236840.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: move display device and runtime
 info to struct intel_display
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continue moving all things display further into display files and
structures.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 9 +++++++++
 drivers/gpu/drm/i915/i915_drv.h                   | 5 ++---
 drivers/gpu/drm/i915/intel_device_info.c          | 7 +++----
 drivers/gpu/drm/i915/intel_device_info.h          | 4 ----
 4 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 8d2243c71dd8..a65ed8a52ce4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -19,6 +19,7 @@
 #include "intel_cdclk.h"
 #include "intel_display_limits.h"
 #include "intel_display_power.h"
+#include "intel_display_device.h"
 #include "intel_dpll_mgr.h"
 #include "intel_fbc.h"
 #include "intel_global_state.h"
@@ -429,6 +430,14 @@ struct intel_display {
 		u32 state;
 	} hti;
 
+	struct {
+		/* Access with DISPLAY_INFO() */
+		const struct intel_display_device_info *__device_info;
+
+		/* Access with DISPLAY_RUNTIME_INFO() */
+		struct intel_display_runtime_info __runtime_info;
+	} info;
+
 	struct {
 		bool false_color;
 	} ips;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b457a37e67c4..2d8331d435f1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -205,7 +205,6 @@ struct drm_i915_private {
 
 	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
 	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
-	struct intel_display_runtime_info __display_runtime; /* Access with DISPLAY_RUNTIME_INFO() */
 	struct intel_driver_caps caps;
 
 	struct i915_dsm dsm;
@@ -407,9 +406,9 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
 
 #define INTEL_INFO(i915)	(&(i915)->__info)
-#define DISPLAY_INFO(i915)	(INTEL_INFO(i915)->display)
 #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
-#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->__display_runtime)
+#define DISPLAY_INFO(i915)	((i915)->display.info.__device_info)
+#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
 #define DRIVER_CAPS(i915)	(&(i915)->caps)
 
 #define INTEL_DEVID(i915)	(RUNTIME_INFO(i915)->device_id)
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 53d316804071..d51bbdbe53ab 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -387,7 +387,6 @@ static const struct intel_display_device_info no_display = {};
  */
 void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_device_info *info = mkwrite_device_info(dev_priv);
 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
 
 	if (HAS_DISPLAY(dev_priv))
@@ -397,7 +396,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv)) {
 		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
 						   DRIVER_ATOMIC);
-		info->display = &no_display;
+		dev_priv->display.info.__device_info = &no_display;
 	}
 
 	/* Disable nuclear pageflip by default on pre-g4x */
@@ -440,8 +439,8 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
 	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
 
 	/* Probe display support */
-	info->display = intel_display_device_probe(i915, info->has_gmd_id,
-						   &ver, &rel, &step);
+	i915->display.info.__device_info = intel_display_device_probe(i915, info->has_gmd_id,
+								      &ver, &rel, &step);
 	memcpy(DISPLAY_RUNTIME_INFO(i915),
 	       &DISPLAY_INFO(i915)->__runtime_defaults,
 	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 069291b3bd37..c8b4bee5e592 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -29,8 +29,6 @@
 
 #include "intel_step.h"
 
-#include "display/intel_display_device.h"
-
 #include "gt/intel_engine_types.h"
 #include "gt/intel_context_types.h"
 #include "gt/intel_sseu.h"
@@ -241,8 +239,6 @@ struct intel_device_info {
 	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
 #undef DEFINE_FLAG
 
-	const struct intel_display_device_info *display;
-
 	/*
 	 * Initial runtime info. Do not access outside of i915_driver_create().
 	 */
-- 
2.39.2

