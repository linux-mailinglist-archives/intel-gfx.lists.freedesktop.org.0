Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B96707603A5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 02:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E200D10E010;
	Tue, 25 Jul 2023 00:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A382710E39C
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 00:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690244007; x=1721780007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ExKXuzFPSYy9b8HoALOuUbCgAZ1cWYEzKz0acXwfzUs=;
 b=TYrKcC0OWYt98T948TfwFmUg1PKp0ujR/bdzxJISuyDsncTlGhm2Ha9+
 IRQ9Puo9K6yn4uR3o3qpIbbIM/h0bloXkrNQmr4ZE1RETSYeztTbnRGWY
 Lqm/p+Ybm5w375Cnx0wnC5Y37VQfBbQrpKUWSZ7Sa0/L4T+2icANU+qZs
 a4tHmBWUkSx7chHRPFaeo9qtfOt7KmbeBsOZAq759I23NMcTxs6E3B8RU
 1mUeT8apll8sVI3xQGNov/x41ObuP/WCm+GwnyWLqGcwgSIgKNmnjZ3CI
 lvJWyOvX0eIm4epaPQuVlX9I9ZMq4dhYLszcSXxza9n4bq68M+7uOYaw6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="365042915"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="365042915"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="791157014"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; d="scan'208";a="791157014"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2023 17:13:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jul 2023 17:13:19 -0700
Message-ID: <20230725001312.1907319-17-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725001312.1907319-11-matthew.d.roper@intel.com>
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915: Eliminate IS_MTL_DISPLAY_STEP
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Stepping-specific display behavior shouldn't be tied to MTL as a
platform, but rather specifically to the Xe_LPD+ IP.  Future non-MTL
platforms may re-use this IP and will need to follow the exact same
logic and apply the same workarounds.  IS_MTL_DISPLAY_STEP() is dropped
in favor of a new macro IS_DISPLAY_IP_STEP() that only checks the
display IP version.

v2:
 - Rename macro to IS_DISPLAY_IP_STEP for consistency with the
   corresponding GT macro and handle steppings the same way.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.h | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.c        |  3 ++-
 drivers/gpu/drm/i915/display/intel_pmdemand.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c        | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h                 |  6 ++----
 5 files changed, 27 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 3324bd453ca7..383bddf032d7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -71,6 +71,23 @@ struct drm_printer;
 #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
 #define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
 
+/*
+ * Check if a device has a specific IP version as well as a stepping within
+ * the specified range [from, until).  The lower bound is inclusive, the upper
+ * bound is exclusive (corresponding to the first hardware stepping when the
+ * workaround is no longer needed).  E.g.,
+ *
+ *    IS_DISPLAY_IP_STEP(GFX, IP_VER(14, 0), A0, B2)
+ *    IS_DISPLAY_IP_STEP(GFX, IP_VER(14, 0), C0, FOREVER)
+ *
+ * "FOREVER" can be passed as the upper stepping bound for workarounds that
+ * have no upper bound on steppings of the specified IP version.
+ */
+#define IS_DISPLAY_IP_STEP(__i915, ipver, since, until) \
+	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
+	 DISPLAY_VER_FULL(__i915) == (ipver) && \
+	 IS_DISPLAY_STEP(__i915, STEP_##since, STEP_##until))
+
 struct intel_display_runtime_info {
 	struct {
 		u16 ver;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 7f8b2d7713c7..f29c3b921f31 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -49,6 +49,7 @@
 #include "i915_vgpu.h"
 #include "intel_cdclk.h"
 #include "intel_de.h"
+#include "intel_display_device.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fbc.h"
@@ -1093,7 +1094,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 
 	/* Wa_14016291713 */
 	if ((IS_DISPLAY_VER(i915, 12, 13) ||
-	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
+	     IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), A0, C0)) &&
 	    crtc_state->has_psr) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index f7608d363634..296ab6dfd947 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
 				     &pmdemand_state->base,
 				     &intel_pmdemand_funcs);
 
-	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
+	if (IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), A0, C0))
 		/* Wa_14016740474 */
 		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 04ab034a8d57..839c52939fa7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1360,7 +1360,7 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 	bool set_wa_bit = false;
 
 	/* Wa_14015648006 */
-	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), A0, B0) ||
 	    IS_DISPLAY_VER(dev_priv, 11, 13))
 		set_wa_bit |= crtc_state->wm_level_disabled;
 
@@ -1447,7 +1447,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * All supported adlp panels have 1-based X granularity, this may
 		 * cause issues if non-supported panels are used.
 		 */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), A0, B0))
 			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
 				     ADLP_1_BASED_X_GRANULARITY);
 		else if (IS_ALDERLAKE_P(dev_priv))
@@ -1455,7 +1455,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				     ADLP_1_BASED_X_GRANULARITY);
 
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), A0, B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
@@ -1613,7 +1613,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	if (intel_dp->psr.psr2_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), A0, B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
@@ -2087,7 +2087,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		goto skip_sel_fetch_set_loop;
 
 	/* Wa_14014971492 */
-	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	if ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), A0, B0) ||
 	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
 	    crtc_state->splitter.enable)
 		pipe_clip.y1 = 0;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a417aa3e0202..459a013f0a99 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -487,6 +487,8 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
 
 #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
+#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
+				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)
 #define IS_DISPLAY_VER(i915, from, until) \
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
@@ -736,10 +738,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
 	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
-	(IS_METEORLAKE(__i915) && \
-	 IS_DISPLAY_STEP(__i915, since, until))
-
 /*
  * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
  * create three variants (G10, G11, and G12) which each have distinct
-- 
2.41.0

