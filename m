Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BD64DA654
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 00:38:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAFC410E151;
	Tue, 15 Mar 2022 23:38:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07F2210E151
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 23:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647387485; x=1678923485;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QyId3pgMv5C5UK1euyKQlLznXtELIUoH4uF0D40I0lo=;
 b=Fqpj3M+YpEkBVj8IUzqLvGsB78nYdbkSUxHX9nKgzlvEt2cCu4ycEjlg
 BAwODGq/l/CE3i04DDDQExvQsIj815j/Q+rayReS2r5n4F1RBal1R+pH/
 YBbyU5NgQEt8KBWJc95tFKdJKNJhUOyY+oEJ4jPuD9r7IoyRWNXRYMwF1
 5GARKCSlSSpmXskoflSq+2ToKHi7dGKc1VPn33w/ZKf8FQlCRX6qzWm1X
 wS94P0+ifJnJwds3zg3POLOX/3+/TFDz/O+QdQO/ott6r/JaCuzrA16Xe
 O6QHWx7X1bsnyarCS/KdZrIh3/gkTdOrgdZXE+q2RboEHQ7guphdTFAh6 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="237051941"
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="237051941"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 16:37:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,185,1643702400"; d="scan'208";a="512804045"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 15 Mar 2022 16:37:49 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 16:38:56 -0700
Message-Id: <20220315233856.30255-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display/: Refactor hsw_crtc_enable for
 bigjoiner cleanup
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

This patch abstracts pieces of hsw_crtc_enable corresponding to different
Bspec enable sequence steps into separate functions.
This helps to call them in a specific order for bigjoiner master/slave
in a cleaner fashion.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 125 ++++++++++---------
 1 file changed, 66 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eb49973621f0..d8e6466c9fa0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1865,24 +1865,6 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, reg, val);
 }
 
-static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
-					 const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *master_crtc = intel_master_crtc(crtc_state);
-
-	/*
-	 * Enable sequence steps 1-7 on bigjoiner master
-	 */
-	if (intel_crtc_is_bigjoiner_slave(crtc_state))
-		intel_encoders_pre_pll_enable(state, master_crtc);
-
-	if (crtc_state->shared_dpll)
-		intel_enable_shared_dpll(crtc_state);
-
-	if (intel_crtc_is_bigjoiner_slave(crtc_state))
-		intel_encoders_pre_enable(state, master_crtc);
-}
-
 static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -1910,70 +1892,73 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	hsw_set_transconf(crtc_state);
 }
 
-static void hsw_crtc_enable(struct intel_atomic_state *state,
-			    struct intel_crtc *crtc)
+static void hsw_crtc_pre_pll_enable(struct intel_atomic_state *state,
+				    const struct intel_crtc_state *crtc_state)
 {
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
-	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
-	bool psl_clkgate_wa;
-
-	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
-		return;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	if (!new_crtc_state->bigjoiner_pipes) {
-		intel_encoders_pre_pll_enable(state, crtc);
+	/*
+	 * Enable sequence steps 1 - 7 on all pipes
+	 */
+	intel_encoders_pre_pll_enable(state, crtc);
+	if (crtc_state->shared_dpll)
+		intel_enable_shared_dpll(crtc_state);
 
-		if (new_crtc_state->shared_dpll)
-			intel_enable_shared_dpll(new_crtc_state);
+	intel_encoders_pre_enable(state, crtc);
+}
 
-		intel_encoders_pre_enable(state, crtc);
-	} else {
-		icl_ddi_bigjoiner_pre_enable(state, new_crtc_state);
-	}
+static void hsw_crtc_post_pll_enable(struct intel_atomic_state *state,
+				     const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe, hsw_workaround_pipe;
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	bool psl_clkgate_wa;
 
-	intel_dsc_enable(new_crtc_state);
+	/*
+	 * Enable sequence step 8
+	 */
+	intel_dsc_enable(crtc_state);
 
 	if (DISPLAY_VER(dev_priv) >= 13)
-		intel_uncompressed_joiner_enable(new_crtc_state);
+		intel_uncompressed_joiner_enable(crtc_state);
 
-	intel_set_pipe_src_size(new_crtc_state);
+	intel_set_pipe_src_size(crtc_state);
 	if (DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
-		bdw_set_pipemisc(new_crtc_state);
+		bdw_set_pipemisc(crtc_state);
 
-	if (!intel_crtc_is_bigjoiner_slave(new_crtc_state) &&
+	if (!intel_crtc_is_bigjoiner_slave(crtc_state) &&
 	    !transcoder_is_dsi(cpu_transcoder))
-		hsw_configure_cpu_transcoder(new_crtc_state);
+		hsw_configure_cpu_transcoder(crtc_state);
 
 	crtc->active = true;
 
 	/* Display WA #1180: WaDisableScalarClockGating: glk */
 	psl_clkgate_wa = DISPLAY_VER(dev_priv) == 10 &&
-		new_crtc_state->pch_pfit.enabled;
+		crtc_state->pch_pfit.enabled;
 	if (psl_clkgate_wa)
 		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
 
 	if (DISPLAY_VER(dev_priv) >= 9)
-		skl_pfit_enable(new_crtc_state);
+		skl_pfit_enable(crtc_state);
 	else
-		ilk_pfit_enable(new_crtc_state);
+		ilk_pfit_enable(crtc_state);
 
 	/*
 	 * On ILK+ LUT must be loaded before the pipe is running but with
 	 * clocks enabled
 	 */
-	intel_color_load_luts(new_crtc_state);
-	intel_color_commit(new_crtc_state);
+	intel_color_load_luts(crtc_state);
+	intel_color_commit(crtc_state);
 	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
 	if (DISPLAY_VER(dev_priv) < 9)
-		intel_disable_primary_plane(new_crtc_state);
+		intel_disable_primary_plane(crtc_state);
 
-	hsw_set_linetime_wm(new_crtc_state);
+	hsw_set_linetime_wm(crtc_state);
 
 	if (DISPLAY_VER(dev_priv) >= 11)
-		icl_set_pipe_chicken(new_crtc_state);
+		icl_set_pipe_chicken(crtc_state);
 
 	intel_initial_watermarks(state, crtc);
 
@@ -1984,8 +1969,8 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		icl_pipe_mbus_enable(crtc, dbuf_state->joined_mbus);
 	}
 
-	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
-		intel_crtc_vblank_on(new_crtc_state);
+	if (intel_crtc_is_bigjoiner_slave(crtc_state))
+		intel_crtc_vblank_on(crtc_state);
 
 	intel_encoders_enable(state, crtc);
 
@@ -1996,7 +1981,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 
 	/* If we change the relative order between pipe/planes enabling, we need
 	 * to change the workaround. */
-	hsw_workaround_pipe = new_crtc_state->hsw_workaround_pipe;
+	hsw_workaround_pipe = crtc_state->hsw_workaround_pipe;
 	if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
 		struct intel_crtc *wa_crtc;
 
@@ -2007,6 +1992,29 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	}
 }
 
+static void hsw_crtc_enable(struct intel_atomic_state *state,
+			    struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_crtc *slave_crtc;
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
+		return;
+
+	hsw_crtc_pre_pll_enable(state, new_crtc_state);
+
+	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
+					 intel_crtc_bigjoiner_slave_pipes(new_crtc_state)) {
+		struct intel_crtc_state *slave_crtc_state =
+			intel_atomic_get_new_crtc_state(state, slave_crtc);
+
+		hsw_crtc_post_pll_enable(state, slave_crtc_state);
+	}
+	hsw_crtc_post_pll_enable(state, new_crtc_state);
+}
+
 void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
@@ -8122,11 +8130,11 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 
 	intel_crtc_update_active_timings(new_crtc_state);
 
-	dev_priv->display->crtc_enable(state, crtc);
-
 	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
 		return;
 
+	dev_priv->display->crtc_enable(state, crtc);
+
 	intel_drrs_enable(new_crtc_state);
 
 	/* vblanks work again, re-enable pipe CRC. */
@@ -8360,8 +8368,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 			continue;
 
 		if (intel_dp_mst_is_slave_trans(new_crtc_state) ||
-		    is_trans_port_sync_master(new_crtc_state) ||
-		    intel_crtc_is_bigjoiner_master(new_crtc_state))
+		    is_trans_port_sync_master(new_crtc_state))
 			continue;
 
 		modeset_pipes &= ~BIT(pipe);
@@ -8371,7 +8378,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 
 	/*
 	 * Then we enable all remaining pipes that depend on other
-	 * pipes: MST slaves and port sync masters, big joiner master
+	 * pipes: MST slaves and port sync masters
 	 */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		enum pipe pipe = crtc->pipe;
-- 
2.19.1

