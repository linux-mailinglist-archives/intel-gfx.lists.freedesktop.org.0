Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCA177C142
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 22:06:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224B010E0FE;
	Mon, 14 Aug 2023 20:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D77510E0D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 20:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692043602; x=1723579602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=93bvgYxwqrzRz+EwKOk4ZAnYk+Vbnk9SPnNCON2tNys=;
 b=ihFIig1YO+xp6nYQzDM0KEZDwTMHGKCBJc4pPzQZq62XU7MSPnyA3ETd
 cPHWl9dDbo6NshDT2BnBQ1+L0wLExssZLac/w0O8GtPxs9knYXS60GJs2
 vqeoNn4L/CAFiPQ4z+k9UL1rKvETN17WxwTuy19+3RBIfSZtbvGCD7oph
 lrVJYwsQ9N54ouPKCzyRJEpS0wBkyoX+7zPppud7W10x1aZTX+qqFJWbn
 wfbM9qRsjr9xxW4zRDfx4kMGBhNFZJA12yXJTZYLEmDHDZWD/zQ67qMlj
 JeCjK2X0gScCeM2js6uv12UHp+jjqbNd8TkaMl62LwsQxFFv2nGvNO7u6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="369602874"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="369602874"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="683420495"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="683420495"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 13:06:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Aug 2023 13:06:39 -0700
Message-ID: <20230814200632.56105-17-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230814200632.56105-11-matthew.d.roper@intel.com>
References: <20230814200632.56105-11-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 6/9] drm/i915: Eliminate IS_MTL_DISPLAY_STEP
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
v3:
 - Drop the automatic "STEP_" pasting.
v4:
 - Implement IS_DISPLAY_IP_STEP on top of IS_DISPLAY_IP_RANGE /
   IS_DISPLAY_STEP building blocks and make the parameters from/until
   instead of begin/fixed.  (Jani)
 - Fix usage details in comment.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 .../drm/i915/display/intel_display_device.h   | 22 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.c      |  3 ++-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 10 ++++-----
 drivers/gpu/drm/i915/i915_drv.h               |  6 ++---
 5 files changed, 32 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 215e682bd8b7..7aeff1a5204b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -71,6 +71,28 @@ struct drm_printer;
 #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
 #define SUPPORTS_TV(i915)		(DISPLAY_INFO(i915)->supports_tv)
 
+/* Check that device has a display IP version within the specific range. */
+#define IS_DISPLAY_IP_RANGE(__i915, from, until) ( \
+	BUILD_BUG_ON_ZERO((from) < IP_VER(2, 0)) + \
+	(DISPLAY_VER_FULL(__i915) >= (from) && \
+	 DISPLAY_VER_FULL(__i915) <= (until)))
+
+/*
+ * Check if a device has a specific IP version as well as a stepping within
+ * the specified range [begin, fixed).  The lower bound is inclusive, the upper
+ * bound is exclusive (corresponding to the first hardware stepping when the
+ * workaround is no longer needed).  E.g.,
+ *
+ *    IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B2)
+ *    IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_C0, STEP_FOREVER)
+ *
+ * "STEP_FOREVER" can be passed as the upper stepping bound for workarounds that
+ * have no upper bound on steppings of the specified IP version.
+ */
+#define IS_DISPLAY_IP_STEP(__i915, ipver, from, until) \
+	(IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
+	 IS_DISPLAY_STEP((__i915), (from), (until)))
+
 struct intel_display_runtime_info {
 	struct {
 		u16 ver;
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 25382022cd27..1c6d467cec26 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -50,6 +50,7 @@
 #include "i915_vma.h"
 #include "intel_cdclk.h"
 #include "intel_de.h"
+#include "intel_display_device.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_fbc.h"
@@ -1100,7 +1101,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 
 	/* Wa_14016291713 */
 	if ((IS_DISPLAY_VER(i915, 12, 13) ||
-	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
+	     IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
 	    crtc_state->has_psr) {
 		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index f7608d363634..744e332fa2af 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -92,7 +92,7 @@ int intel_pmdemand_init(struct drm_i915_private *i915)
 				     &pmdemand_state->base,
 				     &intel_pmdemand_funcs);
 
-	if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
+	if (IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0))
 		/* Wa_14016740474 */
 		intel_de_rmw(i915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 97d5eef10130..72887c29fb51 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1360,7 +1360,7 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 	bool set_wa_bit = false;
 
 	/* Wa_14015648006 */
-	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
 	    IS_DISPLAY_VER(dev_priv, 11, 13))
 		set_wa_bit |= crtc_state->wm_level_disabled;
 
@@ -1447,7 +1447,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 		 * All supported adlp panels have 1-based X granularity, this may
 		 * cause issues if non-supported panels are used.
 		 */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
 				     ADLP_1_BASED_X_GRANULARITY);
 		else if (IS_ALDERLAKE_P(dev_priv))
@@ -1455,7 +1455,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				     ADLP_1_BASED_X_GRANULARITY);
 
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
@@ -1613,7 +1613,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	if (intel_dp->psr.psr2_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
-		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
 				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
@@ -2087,7 +2087,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		goto skip_sel_fetch_set_loop;
 
 	/* Wa_14014971492 */
-	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	if ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
 	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
 	    crtc_state->splitter.enable)
 		pipe_clip.y1 = 0;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 42a86483c694..b11810308e8a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -437,6 +437,8 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	(MEDIA_VER(i915) >= (from) && MEDIA_VER(i915) <= (until))
 
 #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
+#define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
+				       DISPLAY_RUNTIME_INFO(i915)->ip.rel)
 #define IS_DISPLAY_VER(i915, from, until) \
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
@@ -658,10 +660,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
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

