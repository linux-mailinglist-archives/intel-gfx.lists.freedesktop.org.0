Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C149C81F8
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 05:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDAF10E799;
	Thu, 14 Nov 2024 04:30:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NCWNGWuY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEFAD10E794;
 Thu, 14 Nov 2024 04:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731558657; x=1763094657;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vEjsqIFacmJVm4vknDt8a4NgZCjVxHoNjIN1ZpWXXGY=;
 b=NCWNGWuYR+lapzCPWzRh3s/sSN2kpGwYaKi7E3kJTXg7N0SBqzCghws/
 qUPOdZUGjeGIX8ea8qLa2FtbGBUbKe8RWumUQ4CHEDPBwceNubtOnpWte
 BhksyuRmxrPozXi63qLo1N+Eyo4eXcnSYHdisTZZqNR0cGdinp/gIRdZj
 eq/hFAHZgfqYcitGmaHafppAqWiJm7egTSrcq6INzw6+HQfraV/ggdLM/
 xg0/iP/kl8tQoNSRCOHvR/sN/DdrrL1ZO2XAywSgyshTwWzCe/rJrldrY
 Ik6mNiaQWRWPVEJiksSRsq/t+ABW0KHegJUReMp6evzxygH3M3TkQtEGA A==;
X-CSE-ConnectionGUID: U51xunuYR12YMm43ouJcvQ==
X-CSE-MsgGUID: dOkBE+hZTxqWJFrMi5XI5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11255"; a="31581576"
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="31581576"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 20:30:57 -0800
X-CSE-ConnectionGUID: MW8uMuZ4QAqVCIEVg7Gbzw==
X-CSE-MsgGUID: hhdws4gWRPWyvUhyWHX5uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,153,1728975600"; d="scan'208";a="92545747"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 13 Nov 2024 20:30:55 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/2] drm/i915/watermark: Refactor dpkgc code
Date: Thu, 14 Nov 2024 10:00:40 +0530
Message-Id: <20241114043040.1396947-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

We move our dpkgc function for the below reasons:
- We want to make sure we have all the required values specially
linetime which is computed after intel_wm_compute, this will also
help implement some WA's which require linetime.
-We do not want to write into any registers during compute_config phase
While we are at it do some more refactors in the function like:
-Use intel_display wherever possible
-Move away from using enable_dpkgc bool and call it fixed_refresh_rate
-Optimize value prepration

--v2
-No need to save anything in intel_display structure [Vinod]
-Move computation and writing into register to intel_atomic_commit_tail
[Vinod]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +
 drivers/gpu/drm/i915/display/intel_wm.c      | 57 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wm.h      |  2 +
 drivers/gpu/drm/i915/display/skl_watermark.c | 52 ------------------
 4 files changed, 61 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e790a2de5b3d..4f8e45a794bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7826,6 +7826,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.funcs.display->commit_modeset_enables(state);
 
+	intel_program_dpkgc_latency(state, dev_priv);
+
 	if (state->modeset)
 		intel_set_cdclk_post_plane_update(state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index d7dc49aecd27..620873d1244f 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -7,9 +7,18 @@
 
 #include "i915_drv.h"
 #include "i9xx_wm.h"
+#include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
+#include "skl_watermark_regs.h"
+
+/*
+ * It is expected that DSB can do posted writes to every register in
+ * the pipe and planes within 100us. For flip queue use case, the
+ * recommended DSB execution time is 100us + one SAGV block time.
+ */
+#define DSB_EXE_TIME 100
 
 /**
  * intel_update_watermarks - update FIFO watermark values based on current modes
@@ -131,6 +140,54 @@ bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 		return plane_state->uapi.visible;
 }
 
+/*
+ * If Fixed Refresh Rate or For VRR case Vmin = Vmax = Flipline:
+ * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
+ * watermark level1 and up and above. If watermark level 1 is
+ * invalid program it with all 1's.
+ * Program PKG_C_LATENCY Added Wake Time = DSB execution time
+ * If Variable Refresh Rate where Vmin != Vmax != Flipline:
+ * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
+ * Program PKG_C_LATENCY Added Wake Time = 0
+ */
+void
+intel_program_dpkgc_latency(struct intel_atomic_state *state,
+			    struct drm_i915_private *i915)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *new_crtc_state;
+	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
+	u32 clear = 0, val = 0;
+	u32 added_waketime = 0;
+	int i;
+	bool fixed_refresh_rate = false;
+
+	if (DISPLAY_VER(display) < 20)
+		return;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if ((new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
+		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
+		    !new_crtc_state->vrr.enable)
+			fixed_refresh_rate = true;
+	}
+
+	if (fixed_refresh_rate) {
+		max_latency = skl_watermark_max_latency(i915, 1);
+		if (max_latency == 0)
+			max_latency = LNL_PKG_C_LATENCY_MASK;
+		added_waketime = DSB_EXE_TIME +
+			display->sagv.block_time_us;
+	}
+
+	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
+	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
+		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_waketime);
+
+	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
+}
+
 void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 			    const char *name, const u16 wm[])
 {
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index e97cdca89a5c..f47e1354605d 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -31,5 +31,7 @@ void intel_print_wm_latency(struct drm_i915_private *i915,
 			    const char *name, const u16 wm[]);
 void intel_wm_init(struct drm_i915_private *i915);
 void intel_wm_debugfs_register(struct drm_i915_private *i915);
+void intel_program_dpkgc_latency(struct intel_atomic_state *state,
+				 struct drm_i915_private *i915);
 
 #endif /* __INTEL_WM_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1a4c1fa24820..d419edb196c6 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -28,12 +28,6 @@
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 
-/*It is expected that DSB can do posted writes to every register in
- * the pipe and planes within 100us. For flip queue use case, the
- * recommended DSB execution time is 100us + one SAGV block time.
- */
-#define DSB_EXE_TIME 100
-
 static void skl_sagv_disable(struct drm_i915_private *i915);
 
 /* Stores plane specific WM parameters */
@@ -2844,51 +2838,12 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 	return 0;
 }
 
-/*
- * If Fixed Refresh Rate or For VRR case Vmin = Vmax = Flipline:
- * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
- * watermark level1 and up and above. If watermark level 1 is
- * invalid program it with all 1's.
- * Program PKG_C_LATENCY Added Wake Time = DSB execution time
- * If Variable Refresh Rate where Vmin != Vmax != Flipline:
- * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
- * Program PKG_C_LATENCY Added Wake Time = 0
- */
-static void
-skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
-{
-	u32 max_latency = 0;
-	u32 clear = 0, val = 0;
-	u32 added_wake_time = 0;
-
-	if (DISPLAY_VER(i915) < 20)
-		return;
-
-	if (enable_dpkgc) {
-		max_latency = skl_watermark_max_latency(i915, 1);
-		if (max_latency == 0)
-			max_latency = LNL_PKG_C_LATENCY_MASK;
-		added_wake_time = DSB_EXE_TIME +
-			i915->display.sagv.block_time_us;
-	} else {
-		max_latency = LNL_PKG_C_LATENCY_MASK;
-		added_wake_time = 0;
-	}
-
-	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency);
-	val |= REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
-
-	intel_uncore_rmw(&i915->uncore, LNL_PKG_C_LATENCY, clear, val);
-}
-
 static int
 skl_compute_wm(struct intel_atomic_state *state)
 {
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
-	bool enable_dpkgc = false;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2913,15 +2868,8 @@ skl_compute_wm(struct intel_atomic_state *state)
 		ret = skl_wm_add_affected_planes(state, crtc);
 		if (ret)
 			return ret;
-
-		if ((new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
-		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
-		    !new_crtc_state->vrr.enable)
-			enable_dpkgc = true;
 	}
 
-	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);
-
 	skl_print_wm_changes(state);
 
 	return 0;
-- 
2.34.1

