Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C00A0161F
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2025 18:30:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D63510E481;
	Sat,  4 Jan 2025 17:30:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fZtsNLOW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0002D10E07D;
 Sat,  4 Jan 2025 17:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736011803; x=1767547803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l/JS+aEOKc3aB64g2jLBP/dNeth1j9cctaLfGjlhIcY=;
 b=fZtsNLOWF7TlT+xrgePYqrXBD3NUE9vTbTQZN2k1GwcoYYQzJgSzNelo
 eWJlkukSbxHzmKHYBKU+rroULYTbaZWlu99pThbRP8EFNLGsMFcYShZw8
 WuWP5Hm7t6IqfaK8lTExn5YHdF811W88IxI3NI+SS/UKdLwhwc3mLyMGS
 7bTSgM8rMgKPqXyAS/TZPMoO8QjfJ1XM5QNXfKhBjZAEenln1Dg7r+1MF
 Zp5usWSmAzWsKjGMKBPimTo4U2RQbNQ6Scr4ULGDZXumjkLZYk3dI91V+
 jgVOwJ8q1pFAub8DVmPyo/6MBCMIiS4e6beE22ZNHmekB1UL/OVdPaTol w==;
X-CSE-ConnectionGUID: JSK9zL04RsuIysuJFp6Vug==
X-CSE-MsgGUID: Ir0IwsS3QVGcRXCjhAelSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11305"; a="39989591"
X-IronPort-AV: E=Sophos;i="6.12,288,1728975600"; d="scan'208";a="39989591"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2025 09:30:03 -0800
X-CSE-ConnectionGUID: Wu4GMz32TFCGRPWQSPXDYA==
X-CSE-MsgGUID: oYMsrCfPSvS+4APpEVFfUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,288,1728975600"; d="scan'208";a="101839923"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.58])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2025 09:30:01 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 2/2] squash! drm/i915/cmtg: Disable the CMTG
Date: Sat,  4 Jan 2025 14:29:26 -0300
Message-ID: <20250104172937.64015-3-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250104172937.64015-1-gustavo.sousa@intel.com>
References: <20250104172937.64015-1-gustavo.sousa@intel.com>
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

v4:
  - Do the disable sequence as part of the sanitization step after
    hardware readout instead of initial modeset commit. (Jani)

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---

Jani, I hope I have captured what you meant with doing handling the disabling
during sanitization here.

I sent this as a separate "squash" patch because I'm not sure if this is the
correct way of doing it.

One thing I don't like very much about this is that we are forcing pipe(s) to be
disabled for platforms that require a modeset for disabling the CMTG. The
previous solution caused a modeset during initial commit for this case, which
seems a bit better to me.

 drivers/gpu/drm/i915/display/intel_cmtg.c     | 165 +++++-------------
 drivers/gpu/drm/i915/display/intel_cmtg.h     |   7 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  11 --
 .../drm/i915/display/intel_modeset_setup.c    |  17 +-
 4 files changed, 62 insertions(+), 138 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 493bc5ad7c76..8a2e19a794c2 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -161,45 +161,6 @@ void intel_cmtg_readout_hw_state(struct intel_display *display)
 	intel_cmtg_dump_state(display, cmtg_state);
 }
 
-static struct intel_cmtg_state *
-intel_atomic_get_cmtg_state(struct intel_atomic_state *state)
-{
-	struct intel_display *display = to_intel_display(state);
-	struct intel_global_state *obj_state =
-		intel_atomic_get_global_obj_state(state, &display->cmtg.obj);
-
-	if (IS_ERR(obj_state))
-		return ERR_CAST(obj_state);
-
-	return to_intel_cmtg_state(obj_state);
-}
-
-static struct intel_cmtg_state *
-intel_atomic_get_old_cmtg_state(struct intel_atomic_state *state)
-{
-	struct intel_display *display = to_intel_display(state);
-	struct intel_global_state *obj_state =
-		intel_atomic_get_old_global_obj_state(state, &display->cmtg.obj);
-
-	if (!obj_state)
-		return NULL;
-
-	return to_intel_cmtg_state(obj_state);
-}
-
-static struct intel_cmtg_state *
-intel_atomic_get_new_cmtg_state(struct intel_atomic_state *state)
-{
-	struct intel_display *display = to_intel_display(state);
-	struct intel_global_state *obj_state =
-		intel_atomic_get_new_global_obj_state(state, &display->cmtg.obj);
-
-	if (!obj_state)
-		return NULL;
-
-	return to_intel_cmtg_state(obj_state);
-}
-
 static bool intel_cmtg_state_changed(struct intel_cmtg_state *old_cmtg_state,
 				     struct intel_cmtg_state *new_cmtg_state)
 {
@@ -212,89 +173,18 @@ static bool intel_cmtg_state_changed(struct intel_cmtg_state *old_cmtg_state,
 		old_cmtg_state->trans_b_secondary != new_cmtg_state->trans_b_secondary;
 }
 
-static int intel_cmtg_check_modeset(struct intel_atomic_state *state,
-				    struct intel_cmtg_state *old_cmtg_state,
-				    struct intel_cmtg_state *new_cmtg_state)
-{
-	struct intel_display *display = to_intel_display(state);
-	u8 pipe_mask;
-
-	if (!intel_cmtg_requires_modeset(display))
-		return 0;
-
-	pipe_mask = 0;
-
-	if (old_cmtg_state->trans_a_secondary != new_cmtg_state->trans_a_secondary)
-		pipe_mask |= BIT(PIPE_A);
-
-	if (old_cmtg_state->trans_b_secondary != new_cmtg_state->trans_b_secondary)
-		pipe_mask |= BIT(PIPE_B);
-
-	if (!pipe_mask)
-		return 0;
-
-	return intel_modeset_pipes_in_mask_early(state, "updating CMTG config", pipe_mask);
-}
-
-int intel_cmtg_force_disabled(struct intel_atomic_state *state)
-{
-	struct intel_display *display = to_intel_display(state);
-	struct intel_cmtg_state *new_cmtg_state;
-
-	if (!HAS_CMTG(display))
-		return 0;
-
-	new_cmtg_state = intel_atomic_get_cmtg_state(state);
-	if (IS_ERR(new_cmtg_state))
-		return PTR_ERR(new_cmtg_state);
-
-	new_cmtg_state->cmtg_a_enable = false;
-	new_cmtg_state->cmtg_b_enable = false;
-	new_cmtg_state->trans_a_secondary = false;
-	new_cmtg_state->trans_b_secondary = false;
-
-	return 0;
-}
-
-int intel_cmtg_atomic_check(struct intel_atomic_state *state)
+static void intel_cmtg_state_set_disabled(struct intel_cmtg_state *cmtg_state)
 {
-	struct intel_display *display = to_intel_display(state);
-	struct intel_cmtg_state *old_cmtg_state;
-	struct intel_cmtg_state *new_cmtg_state;
-	int ret;
-
-	if (!HAS_CMTG(display))
-		return 0;
-
-	old_cmtg_state = intel_atomic_get_old_cmtg_state(state);
-	new_cmtg_state = intel_atomic_get_new_cmtg_state(state);
-	if (!intel_cmtg_state_changed(old_cmtg_state, new_cmtg_state))
-		return 0;
-
-	ret = intel_cmtg_check_modeset(state, old_cmtg_state, new_cmtg_state);
-	if (ret)
-		return ret;
-
-	return intel_atomic_serialize_global_state(&new_cmtg_state->base);
+	cmtg_state->cmtg_a_enable = false;
+	cmtg_state->cmtg_b_enable = false;
+	cmtg_state->trans_a_secondary = false;
+	cmtg_state->trans_b_secondary = false;
 }
 
-/*
- * Access to CMTG registers require the PHY PLL that provides its clock to be
- * running (which is configured via CMTG_CLK_SEL). As such, this function needs
- * to be called before intel_commit_modeset_disables() to ensure that the PHY
- * PLL is still enabled when doing this.
- */
-void intel_cmtg_disable(struct intel_atomic_state *state)
+static void intel_cmtg_disable(struct intel_display *display,
+			       struct intel_cmtg_state *old_cmtg_state,
+			       struct intel_cmtg_state *new_cmtg_state)
 {
-	struct intel_display *display = to_intel_display(state);
-	struct intel_cmtg_state *old_cmtg_state;
-	struct intel_cmtg_state *new_cmtg_state;
-
-	if (!HAS_CMTG(display))
-		return;
-
-	old_cmtg_state = intel_atomic_get_old_cmtg_state(state);
-	new_cmtg_state = intel_atomic_get_new_cmtg_state(state);
 	if (!intel_cmtg_state_changed(old_cmtg_state, new_cmtg_state))
 		return;
 
@@ -320,3 +210,42 @@ void intel_cmtg_disable(struct intel_atomic_state *state)
 		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_sel_set);
 	}
 }
+
+static u32 intel_cmtg_modeset_crtc_mask(struct intel_display *display,
+					struct intel_cmtg_state *old_cmtg_state,
+					struct intel_cmtg_state *new_cmtg_state)
+{
+	u32 crtc_mask;
+
+	if (intel_cmtg_requires_modeset(display))
+		return 0;
+
+	crtc_mask = 0;
+
+	if (old_cmtg_state->trans_a_secondary != new_cmtg_state->trans_a_secondary)
+		crtc_mask |= drm_crtc_mask(&intel_crtc_for_pipe(display, PIPE_A)->base);
+
+	if (old_cmtg_state->trans_b_secondary != new_cmtg_state->trans_b_secondary)
+		crtc_mask |= drm_crtc_mask(&intel_crtc_for_pipe(display, PIPE_B)->base);
+
+	return crtc_mask;
+}
+
+/*
+ * Disable CMTG if enabled and return a mask of pipes that need to be disabled
+ * (for platforms where disabling the CMTG requires a modeset).
+ */
+u32 intel_cmtg_sanitize_state(struct intel_display *display)
+{
+	struct intel_cmtg_state *cmtg_state = to_intel_cmtg_state(display->cmtg.obj.state);
+	struct intel_cmtg_state old_cmtg_state;
+
+	if (!HAS_CMTG(display))
+		return 0;
+
+	old_cmtg_state = *cmtg_state;
+	intel_cmtg_state_set_disabled(cmtg_state);
+	intel_cmtg_disable(display, &old_cmtg_state, cmtg_state);
+
+	return intel_cmtg_modeset_crtc_mask(display, &old_cmtg_state, cmtg_state);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
index 64c42e345665..3c51e144aa3f 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.h
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
@@ -6,14 +6,13 @@
 #ifndef __INTEL_CMTG_H__
 #define __INTEL_CMTG_H__
 
-struct intel_atomic_state;
+#include <linux/types.h>
+
 struct intel_display;
 struct intel_global_state;
 
 int intel_cmtg_init(struct intel_display *display);
 void intel_cmtg_readout_hw_state(struct intel_display *display);
-int intel_cmtg_force_disabled(struct intel_atomic_state *state);
-int intel_cmtg_atomic_check(struct intel_atomic_state *state);
-void intel_cmtg_disable(struct intel_atomic_state *state);
+u32 intel_cmtg_sanitize_state(struct intel_display *display);
 
 #endif /* __INTEL_CMTG_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 098985ad7ad4..4271da219b41 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -62,7 +62,6 @@
 #include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_clock_gating.h"
-#include "intel_cmtg.h"
 #include "intel_color.h"
 #include "intel_crt.h"
 #include "intel_crtc.h"
@@ -6829,10 +6828,6 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
-	ret = intel_cmtg_atomic_check(state);
-	if (ret)
-		goto fail;
-
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
@@ -7762,8 +7757,6 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 			intel_modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pipe]);
 	}
 
-	intel_cmtg_disable(state);
-
 	intel_commit_modeset_disables(state);
 
 	intel_dp_tunnel_atomic_alloc_bw(state);
@@ -8589,10 +8582,6 @@ int intel_initial_commit(struct drm_device *dev)
 		}
 	}
 
-	ret = intel_cmtg_force_disabled(to_intel_atomic_state(state));
-	if (ret)
-		goto out;
-
 	ret = drm_atomic_commit(state);
 
 out:
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index e0845ae21d82..c6eeb8a00a7b 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -474,10 +474,12 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
 }
 
 static bool intel_sanitize_crtc(struct intel_crtc *crtc,
-				struct drm_modeset_acquire_ctx *ctx)
+				struct drm_modeset_acquire_ctx *ctx,
+				u32 force_off_crtc_mask)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
+	u32 crtc_mask = drm_crtc_mask(&crtc->base);
 	bool needs_link_reset;
 
 	if (crtc_state->hw.active) {
@@ -508,7 +510,8 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 	 * Adjust the state of the output pipe according to whether we have
 	 * active connectors/encoders.
 	 */
-	if (!needs_link_reset && intel_crtc_has_encoders(crtc))
+	if (!(crtc_mask & force_off_crtc_mask) &&
+	    !needs_link_reset && intel_crtc_has_encoders(crtc))
 		return false;
 
 	intel_crtc_disable_noatomic(crtc, ctx);
@@ -526,7 +529,8 @@ static bool intel_sanitize_crtc(struct intel_crtc *crtc,
 }
 
 static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
-				     struct drm_modeset_acquire_ctx *ctx)
+				     struct drm_modeset_acquire_ctx *ctx,
+				     u32 force_off_crtc_mask)
 {
 	struct intel_crtc *crtc;
 	u32 crtcs_forced_off = 0;
@@ -546,7 +550,7 @@ static void intel_sanitize_all_crtcs(struct drm_i915_private *i915,
 			if (crtcs_forced_off & crtc_mask)
 				continue;
 
-			if (intel_sanitize_crtc(crtc, ctx))
+			if (intel_sanitize_crtc(crtc, ctx, force_off_crtc_mask))
 				crtcs_forced_off |= crtc_mask;
 		}
 		if (crtcs_forced_off == old_mask)
@@ -967,6 +971,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 	struct intel_encoder *encoder;
 	struct intel_crtc *crtc;
 	intel_wakeref_t wakeref;
+	u32 force_off_crtc_mask;
 
 	wakeref = intel_display_power_get(i915, POWER_DOMAIN_INIT);
 
@@ -1009,7 +1014,9 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 	 */
 	intel_modeset_update_connector_atomic_state(i915);
 
-	intel_sanitize_all_crtcs(i915, ctx);
+	force_off_crtc_mask = intel_cmtg_sanitize_state(display);
+
+	intel_sanitize_all_crtcs(i915, ctx, force_off_crtc_mask);
 
 	intel_dpll_sanitize_state(i915);
 
-- 
2.47.1

