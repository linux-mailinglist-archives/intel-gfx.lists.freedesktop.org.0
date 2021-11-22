Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C30458FBE
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 14:51:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D66789FFD;
	Mon, 22 Nov 2021 13:51:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 842B989FFD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 13:51:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="215498531"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="215498531"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:20 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="456642626"
Received: from rmcdonax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.217])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:51:02 +0200
Message-Id: <e09c3fa8757ed67bbc4d8c2a49a28473af2fbfcb.1637588831.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1637588831.git.jani.nikula@intel.com>
References: <cover.1637588831.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/display: use
 drm_crtc_wait_one_vblank() directly when possible
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_wait_for_vblank() goes through a pipe to crtc lookup, while in
most cases we already have the crtc available. Avoid the extra lookups.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      |  4 +--
 drivers/gpu/drm/i915/display/intel_display.c  | 29 +++++++++----------
 .../drm/i915/display/intel_display_types.h    |  4 +--
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_tv.c       |  7 ++---
 6 files changed, 23 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index f0f28572dfdc..8796527f74e5 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -321,8 +321,8 @@ static void hsw_enable_crt(struct intel_atomic_state *state,
 
 	intel_crt_set_dpms(encoder, crtc_state, DRM_MODE_DPMS_ON);
 
-	intel_wait_for_vblank(dev_priv, pipe);
-	intel_wait_for_vblank(dev_priv, pipe);
+	drm_crtc_wait_one_vblank(&crtc->base);
+	drm_crtc_wait_one_vblank(&crtc->base);
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f3c9208a30b1..48d93d1f6c1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -772,7 +772,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	 */
 	if (HAS_GMCH(dev_priv) &&
 	    intel_set_memory_cxsr(dev_priv, false))
-		intel_wait_for_vblank(dev_priv, crtc->pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 
 	/*
 	 * Gen2 reports pipe underruns whenever all planes are disabled.
@@ -782,7 +782,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
 
 	intel_plane_disable_arm(plane, crtc_state);
-	intel_wait_for_vblank(dev_priv, crtc->pipe);
+	drm_crtc_wait_one_vblank(&crtc->base);
 }
 
 unsigned int
@@ -1155,7 +1155,7 @@ void hsw_disable_ips(const struct intel_crtc_state *crtc_state)
 	}
 
 	/* We need to wait for a vblank before we can disable the plane. */
-	intel_wait_for_vblank(dev_priv, crtc->pipe);
+	drm_crtc_wait_one_vblank(&crtc->base);
 }
 
 static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
@@ -1386,7 +1386,6 @@ static void intel_crtc_disable_flip_done(struct intel_atomic_state *state,
 static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 					     struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
@@ -1412,7 +1411,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 	}
 
 	if (need_vbl_wait)
-		intel_wait_for_vblank(i915, crtc->pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 }
 
 static void intel_pre_plane_update(struct intel_atomic_state *state,
@@ -1431,7 +1430,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		hsw_disable_ips(old_crtc_state);
 
 	if (intel_fbc_pre_update(state, crtc))
-		intel_wait_for_vblank(dev_priv, pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 
 	if (!needs_async_flip_vtd_wa(old_crtc_state) &&
 	    needs_async_flip_vtd_wa(new_crtc_state))
@@ -1463,7 +1462,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 */
 	if (HAS_GMCH(dev_priv) && old_crtc_state->hw.active &&
 	    new_crtc_state->disable_cxsr && intel_set_memory_cxsr(dev_priv, false))
-		intel_wait_for_vblank(dev_priv, pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 
 	/*
 	 * IVB workaround: must disable low power watermarks for at least
@@ -1474,7 +1473,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 */
 	if (old_crtc_state->hw.active &&
 	    new_crtc_state->disable_lp_wm && ilk_disable_lp_wm(dev_priv))
-		intel_wait_for_vblank(dev_priv, pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 
 	/*
 	 * If we're doing a modeset we don't need to do any
@@ -1890,8 +1889,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	 * in case there are more corner cases we don't know about.
 	 */
 	if (new_crtc_state->has_pch_encoder) {
-		intel_wait_for_vblank(dev_priv, pipe);
-		intel_wait_for_vblank(dev_priv, pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
+		drm_crtc_wait_one_vblank(&crtc->base);
 	}
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
 	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
@@ -2091,7 +2090,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	intel_encoders_enable(state, crtc);
 
 	if (psl_clkgate_wa) {
-		intel_wait_for_vblank(dev_priv, pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, false);
 	}
 
@@ -2526,7 +2525,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 
 	/* prevents spurious underruns */
 	if (DISPLAY_VER(dev_priv) == 2)
-		intel_wait_for_vblank(dev_priv, pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 }
 
 static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
@@ -2557,7 +2556,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	 * wait for planes to fully turn off before disabling the pipe.
 	 */
 	if (DISPLAY_VER(dev_priv) == 2)
-		intel_wait_for_vblank(dev_priv, pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 
 	intel_encoders_disable(state, crtc);
 
@@ -4642,7 +4641,7 @@ int intel_get_load_detect_pipe(struct drm_connector *connector,
 	drm_atomic_state_put(state);
 
 	/* let the connector get through one full cycle before testing */
-	intel_wait_for_vblank(dev_priv, crtc->pipe);
+	drm_crtc_wait_one_vblank(&crtc->base);
 	return true;
 
 fail:
@@ -8459,7 +8458,7 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
 			if (!skl_ddb_entry_equal(&new_crtc_state->wm.skl.ddb,
 						 &old_crtc_state->wm.skl.ddb) &&
 			    (update_pipes | modeset_pipes))
-				intel_wait_for_vblank(dev_priv, pipe);
+				drm_crtc_wait_one_vblank(&crtc->base);
 		}
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ea1e8a6e10b0..a5508b8cdf63 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2027,10 +2027,10 @@ intel_wait_for_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 static inline void
 intel_wait_for_vblank_if_active(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	const struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
 
 	if (crtc->active)
-		intel_wait_for_vblank(dev_priv, pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 }
 
 static inline bool intel_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0a424bf69396..1997b9ef4bb5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3894,7 +3894,7 @@ int intel_dp_retrain_link(struct intel_encoder *encoder,
 			to_intel_crtc_state(crtc->base.state);
 
 		/* Keep underrun reporting disabled until things are stable */
-		intel_wait_for_vblank(dev_priv, crtc->pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
 		if (crtc_state->has_pch_encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 2dc6c3742ba2..7c026889f46c 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1842,7 +1842,7 @@ static void intel_enable_sdvo(struct intel_atomic_state *state,
 	intel_sdvo_write_sdvox(intel_sdvo, temp);
 
 	for (i = 0; i < 2; i++)
-		intel_wait_for_vblank(dev_priv, crtc->pipe);
+		drm_crtc_wait_one_vblank(&crtc->base);
 
 	success = intel_sdvo_get_trained_inputs(intel_sdvo, &input1, &input2);
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 88a398df9621..f01d5ea4aadc 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -924,8 +924,7 @@ intel_enable_tv(struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(dev);
 
 	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
-	intel_wait_for_vblank(dev_priv,
-			      to_intel_crtc(pipe_config->uapi.crtc)->pipe);
+	drm_crtc_wait_one_vblank(pipe_config->uapi.crtc);
 
 	intel_de_write(dev_priv, TV_CTL,
 		       intel_de_read(dev_priv, TV_CTL) | TV_ENC_ENABLE);
@@ -1618,7 +1617,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 	intel_de_write(dev_priv, TV_DAC, tv_dac);
 	intel_de_posting_read(dev_priv, TV_DAC);
 
-	intel_wait_for_vblank(dev_priv, crtc->pipe);
+	drm_crtc_wait_one_vblank(&crtc->base);
 
 	type = -1;
 	tv_dac = intel_de_read(dev_priv, TV_DAC);
@@ -1651,7 +1650,7 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
 	intel_de_posting_read(dev_priv, TV_CTL);
 
 	/* For unknown reasons the hw barfs if we don't do this vblank wait. */
-	intel_wait_for_vblank(dev_priv, crtc->pipe);
+	drm_crtc_wait_one_vblank(&crtc->base);
 
 	/* Restore interrupt config */
 	if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
-- 
2.30.2

