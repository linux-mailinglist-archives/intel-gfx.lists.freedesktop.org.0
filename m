Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 720D89C5113
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:46:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9305710E597;
	Tue, 12 Nov 2024 08:46:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iETME2HK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03D2210E596;
 Tue, 12 Nov 2024 08:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731401161; x=1762937161;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z+uFBVlDw5UeLgXMGTXAHiIK4ZXJg2E+kP2/joBcQ2g=;
 b=iETME2HKblperKhr+PaCYeNUPzNbiLVKdOAz/tWylS+0/rS8JAPON3iE
 P7c4JB0tAFzOhZi6ZrOx6EE0dN0/fZgiSmOZC3x3iNLgld6kC7ajYIDbj
 +CE2BXvo70x9IVD8wHHpeTFWrtVJD7wzKE1eSfSkvUt3oJFzLrNSCkt0Q
 SShwI0tVmc6CqwpPVirdXksSiNgdI49NeUgtyu+N/+nZnOuc5rBup83u4
 rk7WIqiE7hNUTOfOU3UApBMtSHval/vIR+RHypes/adw5RrxyaQF1gQ0l
 tzlhGlXtP1iNOuWp3Lq265uz76x9Mg5q0Ybyv0YfOc3AZbzdv9rtndYtn A==;
X-CSE-ConnectionGUID: Ax2Miep0R4uMhWdJqGYCNA==
X-CSE-MsgGUID: YwCEw+2FRAiZOKHfy5R6uQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="31449609"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="31449609"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:46:01 -0800
X-CSE-ConnectionGUID: OLrOa1JkRv2q6Aae1Ir7Nw==
X-CSE-MsgGUID: MT7EZMgWTamHVv7n906Qig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="124851971"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 12 Nov 2024 00:45:59 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/6] drm/i915/watermark: Break and move DPKGC latency
 programming function
Date: Tue, 12 Nov 2024 14:15:41 +0530
Message-Id: <20241112084542.1337314-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112084542.1337314-1-suraj.kandpal@intel.com>
References: <20241112084542.1337314-1-suraj.kandpal@intel.com>
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

We break our dpkgc functions into two parts computation and writing
to its respective register. This is for mainly due to the reason
stated below
- We do not want to compute and write to the register in the compute
config phase itself.
- We want to make sure we have all the required values specially
linetime which is computed after intel_wm_compute, this will also
help implement some WA's which require linetime.
We also move it from its initial place because of the first point
state above.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  7 ++
 .../gpu/drm/i915/display/intel_display_core.h |  3 +
 drivers/gpu/drm/i915/display/intel_wm.c       | 71 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_wm.h       |  4 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 50 -------------
 5 files changed, 85 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 46f6643d8d0f..484681f4e023 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4600,6 +4600,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 
 	}
 
+	ret = intel_wm_compute_dpkgc_latency(state, dev_priv);
+	if (ret)
+		return ret;
+
 	ret = intel_psr2_sel_fetch_update(state, crtc);
 	if (ret)
 		return ret;
@@ -7124,6 +7128,9 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 
 	if (intel_crtc_vrr_enabling(state, crtc))
 		intel_vrr_enable(new_crtc_state);
+
+	if (DISPLAY_VER(dev_priv) >= 20)
+		intel_wm_write_dpkgc_latency(to_intel_display(crtc));
 }
 
 static void intel_enable_crtc(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 45b7c6900adc..8cfd8ab725ce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -278,6 +278,9 @@ struct intel_wm {
 	struct mutex wm_mutex;
 
 	bool ipc_enabled;
+
+	u32 dpkgc_latency;
+	u32 dpkgc_added_waketime;
 };
 
 struct intel_display {
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index d7dc49aecd27..ffc7dde86629 100644
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
@@ -131,6 +140,68 @@ bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
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
+int
+intel_wm_compute_dpkgc_latency(struct intel_atomic_state *state,
+			       struct drm_i915_private *i915)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *new_crtc_state;
+	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
+	u32 added_waketime = 0;
+	int i;
+	bool fixed_refresh_rate = false;
+
+	if (DISPLAY_VER(display) < 20)
+		return 0;
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
+	display->wm.dpkgc_latency = max_latency;
+	display->wm.dpkgc_added_waketime = added_waketime;
+
+	return 0;
+}
+
+int
+intel_wm_write_dpkgc_latency(struct intel_display *display)
+{
+	u32 clear = 0, val = 0;
+
+	if (DISPLAY_VER(display) < 20)
+		return 0;
+
+	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
+	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, display->wm.dpkgc_latency) |
+		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, display->wm.dpkgc_added_waketime);
+
+	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
+	return 0;
+}
+
 void intel_print_wm_latency(struct drm_i915_private *dev_priv,
 			    const char *name, const u16 wm[])
 {
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index e97cdca89a5c..1d3c2653168f 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 struct drm_i915_private;
+struct intel_display;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -31,5 +32,8 @@ void intel_print_wm_latency(struct drm_i915_private *i915,
 			    const char *name, const u16 wm[]);
 void intel_wm_init(struct drm_i915_private *i915);
 void intel_wm_debugfs_register(struct drm_i915_private *i915);
+int intel_wm_compute_dpkgc_latency(struct intel_atomic_state *state,
+				   struct drm_i915_private *i915);
+int intel_wm_write_dpkgc_latency(struct intel_display *display);
 
 #endif /* __INTEL_WM_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 714bfcd83015..70f1d4f66f2d 100644
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
@@ -2837,49 +2831,12 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
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
-skl_program_dpkgc_latency(struct drm_i915_private *i915, bool fixed_refresh_rate)
-{
-	struct intel_display *display = to_intel_display(&i915->drm);
-	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
-	u32 clear = 0, val = 0;
-	u32 added_wake_time = 0;
-
-	if (DISPLAY_VER(display) < 20)
-		return;
-
-	if (fixed_refresh_rate) {
-		max_latency = skl_watermark_max_latency(i915, 1);
-		if (max_latency == 0)
-			max_latency = LNL_PKG_C_LATENCY_MASK;
-		added_wake_time = DSB_EXE_TIME +
-			display->sagv.block_time_us;
-	}
-
-	clear |= LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val |= REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, max_latency) |
-		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
-
-	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
-}
-
 static int
 skl_compute_wm(struct intel_atomic_state *state)
 {
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
-	bool fixed_refresh_rate = false;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2904,15 +2861,8 @@ skl_compute_wm(struct intel_atomic_state *state)
 		ret = skl_wm_add_affected_planes(state, crtc);
 		if (ret)
 			return ret;
-
-		if ((new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
-		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
-		    !new_crtc_state->vrr.enable)
-			fixed_refresh_rate = true;
 	}
 
-	skl_program_dpkgc_latency(to_i915(state->base.dev), fixed_refresh_rate);
-
 	skl_print_wm_changes(state);
 
 	return 0;
-- 
2.34.1

