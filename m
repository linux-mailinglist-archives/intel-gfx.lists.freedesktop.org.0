Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 936EAA32BDE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3556D10E91B;
	Wed, 12 Feb 2025 16:37:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A8JpeZy+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2F3910E91D;
 Wed, 12 Feb 2025 16:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378246; x=1770914246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FUiJ2WtbWYxdNhSju+JlzAME8SHQ+ATK7hKQY/kTTXI=;
 b=A8JpeZy+22R9vHFxpey79ErxcDn4f0LFNVJd+Yu1QJzrdbcqAEK807OY
 4owPtLdDaxJoXS9V6H56ucDVDiCb8Zj3v8osvkkANw/2P4g4+WqBRhxiq
 OjdSLnYqv0nGyMLZ+JXaNMhh4HHFWQLIhqJf+IZMDekKtcxayaoD/msJU
 a/qX4sEG6zGeW0dMfNq5fHNKIWubrIInrGGZnoaP1Scs9bZj6Pgv3zmkh
 FAvSSiScy6tOq+hZf/LaqJ+LHmaOzQ3IfVVKT3VaYVaGpcnX0Pqoz3B/V
 IzIbPwkfXFdIw9WrjhIpkGeE5BbOBFs21WXWUPQ9qHzjOPGDlK9xsMDNy A==;
X-CSE-ConnectionGUID: d23n6bpURyWyVDf5FLWedw==
X-CSE-MsgGUID: jSUnrRLkQtqctTR2scBwWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50693522"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50693522"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:25 -0800
X-CSE-ConnectionGUID: VDekgIV2SUuvN6YctUS/6A==
X-CSE-MsgGUID: AZjJqOibQsK4uHIh7Jyv/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="143713554"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 07/14] drm/i915/display: convert intel_set_{cpu,
 pch}_fifo_underrun_reporting() to intel_display
Date: Wed, 12 Feb 2025 18:36:36 +0200
Message-Id: <3b984d0183214d05d0cdecad35184ea8d89ae050.1739378095.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_set_cpu_fifo_underrun_reporting() and
intel_set_pch_fifo_underrun_reporting() to struct intel_display, along
with some of the call chains from there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  8 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  8 +-
 drivers/gpu/drm/i915/display/intel_crt.c      | 17 ++--
 drivers/gpu/drm/i915/display/intel_ddi.c      |  3 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 43 +++++-----
 .../drm/i915/display/intel_fifo_underrun.c    | 84 +++++++++----------
 .../drm/i915/display/intel_fifo_underrun.h    |  7 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |  8 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
 9 files changed, 89 insertions(+), 91 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 4b51a4e47f63..0cb98cb043c6 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -453,8 +453,8 @@ intel_dp_link_down(struct intel_encoder *encoder,
 		 * We get CPU/PCH FIFO underruns on the other pipe when
 		 * doing the workaround. Sweep them under the rug.
 		 */
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, false);
-		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
+		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A, false);
+		intel_set_pch_fifo_underrun_reporting(display, PIPE_A, false);
 
 		/* always enable with pattern 1 (as per spec) */
 		intel_dp->DP &= ~(DP_PIPE_SEL_MASK | DP_LINK_TRAIN_MASK);
@@ -468,8 +468,8 @@ intel_dp_link_down(struct intel_encoder *encoder,
 		intel_de_posting_read(display, intel_dp->output_reg);
 
 		intel_wait_for_vblank_if_active(display, PIPE_A);
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, true);
-		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
+		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A, true);
+		intel_set_pch_fifo_underrun_reporting(display, PIPE_A, true);
 	}
 
 	msleep(intel_dp->pps.panel_power_down_delay);
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 1cd2e68e6ec5..089f1a4d7720 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -407,8 +407,8 @@ static void intel_disable_hdmi(struct intel_atomic_state *state,
 		 * We get CPU/PCH FIFO underruns on the other pipe when
 		 * doing the workaround. Sweep them under the rug.
 		 */
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, false);
-		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
+		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A, false);
+		intel_set_pch_fifo_underrun_reporting(display, PIPE_A, false);
 
 		temp &= ~SDVO_PIPE_SEL_MASK;
 		temp |= SDVO_ENABLE | SDVO_PIPE_SEL(PIPE_A);
@@ -426,8 +426,8 @@ static void intel_disable_hdmi(struct intel_atomic_state *state,
 		intel_de_posting_read(display, intel_hdmi->hdmi_reg);
 
 		intel_wait_for_vblank_if_active(display, PIPE_A);
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, true);
-		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
+		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A, true);
+		intel_set_pch_fifo_underrun_reporting(display, PIPE_A, true);
 	}
 
 	dig_port->set_infoframes(encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 396846025922..8eedae1d7684 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -250,11 +250,10 @@ static void hsw_disable_crt(struct intel_atomic_state *state,
 			    const struct drm_connector_state *old_conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	drm_WARN_ON(display->drm, !old_crtc_state->has_pch_encoder);
 
-	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
+	intel_set_pch_fifo_underrun_reporting(display, PIPE_A, false);
 }
 
 static void hsw_post_disable_crt(struct intel_atomic_state *state,
@@ -264,7 +263,6 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	intel_crtc_vblank_off(old_crtc_state);
 
@@ -284,7 +282,7 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
 
 	drm_WARN_ON(display->drm, !old_crtc_state->has_pch_encoder);
 
-	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
+	intel_set_pch_fifo_underrun_reporting(display, PIPE_A, true);
 }
 
 static void hsw_pre_pll_enable_crt(struct intel_atomic_state *state,
@@ -293,11 +291,10 @@ static void hsw_pre_pll_enable_crt(struct intel_atomic_state *state,
 				   const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	drm_WARN_ON(display->drm, !crtc_state->has_pch_encoder);
 
-	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
+	intel_set_pch_fifo_underrun_reporting(display, PIPE_A, false);
 }
 
 static void hsw_pre_enable_crt(struct intel_atomic_state *state,
@@ -306,13 +303,12 @@ static void hsw_pre_enable_crt(struct intel_atomic_state *state,
 			       const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
 
 	drm_WARN_ON(display->drm, !crtc_state->has_pch_encoder);
 
-	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
+	intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
 
 	hsw_fdi_link_train(encoder, crtc_state);
 
@@ -325,7 +321,6 @@ static void hsw_enable_crt(struct intel_atomic_state *state,
 			   const struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
 
@@ -343,8 +338,8 @@ static void hsw_enable_crt(struct intel_atomic_state *state,
 
 	intel_crtc_wait_for_next_vblank(crtc);
 	intel_crtc_wait_for_next_vblank(crtc);
-	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
-	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
+	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
+	intel_set_pch_fifo_underrun_reporting(display, PIPE_A, true);
 }
 
 static void intel_enable_crt(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ce7097937d70..900e066b2478 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3013,13 +3013,14 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 				 const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	drm_WARN_ON(&dev_priv->drm, crtc_state->has_pch_encoder);
 
-	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
+	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
 		intel_ddi_pre_enable_hdmi(state, encoder, crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2a8f53f06463..9bcbd52f23cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -774,6 +774,7 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state)
 void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 				  struct intel_plane *plane)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
@@ -817,7 +818,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	 * So disable underrun reporting before all the planes get disabled.
 	 */
 	if (DISPLAY_VER(dev_priv) == 2 && !crtc_state->active_planes)
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
+		intel_set_cpu_fifo_underrun_reporting(display, crtc->pipe, false);
 
 	intel_plane_disable_arm(NULL, plane, crtc_state);
 	intel_plane_initial_vblank_wait(crtc);
@@ -1305,6 +1306,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 static void intel_pre_plane_update(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -1406,7 +1408,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * vs. the old plane configuration.
 	 */
 	if (DISPLAY_VER(dev_priv) == 2 && planes_disabling(old_crtc_state, new_crtc_state))
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
+		intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
 
 	/*
 	 * WA for platforms where async address update enable bit
@@ -1645,6 +1647,7 @@ static void ilk_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 static void ilk_crtc_enable(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -1663,8 +1666,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 	 *
 	 * Spurious PCH underruns also occur during PCH enabling.
 	 */
-	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
-	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
+	intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
+	intel_set_pch_fifo_underrun_reporting(display, pipe, false);
 
 	ilk_configure_cpu_transcoder(new_crtc_state);
 
@@ -1712,8 +1715,8 @@ static void ilk_crtc_enable(struct intel_atomic_state *state,
 		intel_crtc_wait_for_next_vblank(crtc);
 		intel_crtc_wait_for_next_vblank(crtc);
 	}
-	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
-	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
+	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
+	intel_set_pch_fifo_underrun_reporting(display, pipe, true);
 }
 
 /* Display WA #1180: WaDisableScalarClockGating: glk */
@@ -1901,9 +1904,9 @@ void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
 static void ilk_crtc_disable(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
 	/*
@@ -1911,8 +1914,8 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	 * pipe is already disabled, but FDI RX/TX is still enabled.
 	 * Happens at least with VGA+HDMI cloning. Suppress them.
 	 */
-	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
-	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, false);
+	intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
+	intel_set_pch_fifo_underrun_reporting(display, pipe, false);
 
 	intel_encoders_disable(state, crtc);
 
@@ -1930,8 +1933,8 @@ static void ilk_crtc_disable(struct intel_atomic_state *state,
 	if (old_crtc_state->has_pch_encoder)
 		ilk_pch_post_disable(state, crtc);
 
-	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
-	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
+	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
+	intel_set_pch_fifo_underrun_reporting(display, pipe, true);
 
 	intel_disable_shared_dpll(old_crtc_state);
 }
@@ -2211,6 +2214,7 @@ static void i9xx_configure_cpu_transcoder(const struct intel_crtc_state *crtc_st
 static void valleyview_crtc_enable(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -2233,7 +2237,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 
 	crtc->active = true;
 
-	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
+	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
 
 	intel_encoders_pre_pll_enable(state, crtc);
 
@@ -2259,6 +2263,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
 static void i9xx_crtc_enable(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -2274,7 +2279,7 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 	crtc->active = true;
 
 	if (DISPLAY_VER(dev_priv) != 2)
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
+		intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
 
 	intel_encoders_pre_enable(state, crtc);
 
@@ -2349,7 +2354,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	intel_encoders_post_pll_disable(state, crtc);
 
 	if (DISPLAY_VER(dev_priv) != 2)
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
+		intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
 
 	if (!dev_priv->display.funcs.wm->initial_watermarks)
 		intel_update_watermarks(dev_priv);
@@ -7069,16 +7074,16 @@ static int intel_atomic_prepare_commit(struct intel_atomic_state *state)
 void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
 				  struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	if (DISPLAY_VER(dev_priv) != 2 || crtc_state->active_planes)
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
+	if (DISPLAY_VER(display) != 2 || crtc_state->active_planes)
+		intel_set_cpu_fifo_underrun_reporting(display, crtc->pipe, true);
 
 	if (crtc_state->has_pch_encoder) {
 		enum pipe pch_transcoder =
 			intel_crtc_pch_transcoder(crtc);
 
-		intel_set_pch_fifo_underrun_reporting(dev_priv, pch_transcoder, true);
+		intel_set_pch_fifo_underrun_reporting(display, pch_transcoder, true);
 	}
 }
 
@@ -7921,7 +7926,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * vs. the new plane configuration.
 		 */
 		if (DISPLAY_VER(dev_priv) == 2 && planes_enabling(old_crtc_state, new_crtc_state))
-			intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
+			intel_set_cpu_fifo_underrun_reporting(display, crtc->pipe, true);
 
 		intel_optimize_watermarks(state, crtc);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 18fcdbe1248a..cf70dab4881b 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -55,10 +55,9 @@
  * The code also supports underrun detection on the PCH transcoder.
  */
 
-static bool ivb_can_enable_err_int(struct drm_device *dev)
+static bool ivb_can_enable_err_int(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(dev);
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	enum pipe pipe;
 
@@ -74,10 +73,9 @@ static bool ivb_can_enable_err_int(struct drm_device *dev)
 	return true;
 }
 
-static bool cpt_can_enable_serr_int(struct drm_device *dev)
+static bool cpt_can_enable_serr_int(struct intel_display *display)
 {
-	struct intel_display *display = to_intel_display(dev);
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe pipe;
 	struct intel_crtc *crtc;
 
@@ -113,11 +111,11 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
 	drm_err(&dev_priv->drm, "pipe %c underrun\n", pipe_name(crtc->pipe));
 }
 
-static void i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
+static void i9xx_set_fifo_underrun_reporting(struct intel_display *display,
 					     enum pipe pipe,
 					     bool enable, bool old)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	i915_reg_t reg = PIPESTAT(dev_priv, pipe);
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -135,10 +133,10 @@ static void i9xx_set_fifo_underrun_reporting(struct drm_device *dev,
 	}
 }
 
-static void ilk_set_fifo_underrun_reporting(struct drm_device *dev,
+static void ilk_set_fifo_underrun_reporting(struct intel_display *display,
 					    enum pipe pipe, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 bit = (pipe == PIPE_A) ?
 		DE_PIPEA_FIFO_UNDERRUN : DE_PIPEB_FIFO_UNDERRUN;
 
@@ -167,16 +165,16 @@ static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
 	drm_err(&dev_priv->drm, "fifo underrun on pipe %c\n", pipe_name(pipe));
 }
 
-static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
+static void ivb_set_fifo_underrun_reporting(struct intel_display *display,
 					    enum pipe pipe, bool enable,
 					    bool old)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	if (enable) {
 		intel_de_write(dev_priv, GEN7_ERR_INT,
 			       ERR_INT_FIFO_UNDERRUN(pipe));
 
-		if (!ivb_can_enable_err_int(dev))
+		if (!ivb_can_enable_err_int(display))
 			return;
 
 		ilk_enable_display_irq(dev_priv, DE_ERR_INT_IVB);
@@ -192,10 +190,10 @@ static void ivb_set_fifo_underrun_reporting(struct drm_device *dev,
 	}
 }
 
-static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
+static void bdw_set_fifo_underrun_reporting(struct intel_display *display,
 					    enum pipe pipe, bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	if (enable)
 		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
@@ -203,11 +201,11 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
 		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
 }
 
-static void ibx_set_fifo_underrun_reporting(struct drm_device *dev,
+static void ibx_set_fifo_underrun_reporting(struct intel_display *display,
 					    enum pipe pch_transcoder,
 					    bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 bit = (pch_transcoder == PIPE_A) ?
 		SDE_TRANSA_FIFO_UNDER : SDE_TRANSB_FIFO_UNDER;
 
@@ -238,17 +236,17 @@ static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
 		pipe_name(pch_transcoder));
 }
 
-static void cpt_set_fifo_underrun_reporting(struct drm_device *dev,
+static void cpt_set_fifo_underrun_reporting(struct intel_display *display,
 					    enum pipe pch_transcoder,
 					    bool enable, bool old)
 {
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	if (enable) {
 		intel_de_write(dev_priv, SERR_INT,
 			       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
 
-		if (!cpt_can_enable_serr_int(dev))
+		if (!cpt_can_enable_serr_int(display))
 			return;
 
 		ibx_enable_display_interrupt(dev_priv, SDE_ERROR_CPT);
@@ -264,11 +262,10 @@ static void cpt_set_fifo_underrun_reporting(struct drm_device *dev,
 	}
 }
 
-static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
+static bool __intel_set_cpu_fifo_underrun_reporting(struct intel_display *display,
 						    enum pipe pipe, bool enable)
 {
-	struct intel_display *display = to_intel_display(dev);
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	bool old;
 
@@ -277,21 +274,21 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
 	old = !crtc->cpu_fifo_underrun_disabled;
 	crtc->cpu_fifo_underrun_disabled = !enable;
 
-	if (HAS_GMCH(dev_priv))
-		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
-	else if (IS_IRONLAKE(dev_priv) || IS_SANDYBRIDGE(dev_priv))
-		ilk_set_fifo_underrun_reporting(dev, pipe, enable);
-	else if (DISPLAY_VER(dev_priv) == 7)
-		ivb_set_fifo_underrun_reporting(dev, pipe, enable, old);
-	else if (DISPLAY_VER(dev_priv) >= 8)
-		bdw_set_fifo_underrun_reporting(dev, pipe, enable);
+	if (HAS_GMCH(display))
+		i9xx_set_fifo_underrun_reporting(display, pipe, enable, old);
+	else if (display->platform.ironlake || display->platform.sandybridge)
+		ilk_set_fifo_underrun_reporting(display, pipe, enable);
+	else if (DISPLAY_VER(display) == 7)
+		ivb_set_fifo_underrun_reporting(display, pipe, enable, old);
+	else if (DISPLAY_VER(display) >= 8)
+		bdw_set_fifo_underrun_reporting(display, pipe, enable);
 
 	return old;
 }
 
 /**
  * intel_set_cpu_fifo_underrun_reporting - set cpu fifo underrun reporting state
- * @dev_priv: i915 device instance
+ * @display: display device instance
  * @pipe: (CPU) pipe to set state for
  * @enable: whether underruns should be reported or not
  *
@@ -305,15 +302,15 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
  *
  * Returns the previous state of underrun reporting.
  */
-bool intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
+bool intel_set_cpu_fifo_underrun_reporting(struct intel_display *display,
 					   enum pipe pipe, bool enable)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	unsigned long flags;
 	bool ret;
 
 	spin_lock_irqsave(&dev_priv->irq_lock, flags);
-	ret = __intel_set_cpu_fifo_underrun_reporting(&dev_priv->drm, pipe,
-						      enable);
+	ret = __intel_set_cpu_fifo_underrun_reporting(display, pipe, enable);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, flags);
 
 	return ret;
@@ -321,7 +318,7 @@ bool intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
 
 /**
  * intel_set_pch_fifo_underrun_reporting - set PCH fifo underrun reporting state
- * @dev_priv: i915 device instance
+ * @display: display device instance
  * @pch_transcoder: the PCH transcoder (same as pipe on IVB and older)
  * @enable: whether underruns should be reported or not
  *
@@ -333,13 +330,12 @@ bool intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
  *
  * Returns the previous state of underrun reporting.
  */
-bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
+bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
 					   enum pipe pch_transcoder,
 					   bool enable)
 {
-	struct intel_display *display = &dev_priv->display;
-	struct intel_crtc *crtc =
-		intel_crtc_for_pipe(display, pch_transcoder);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pch_transcoder);
 	unsigned long flags;
 	bool old;
 
@@ -358,11 +354,11 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
 	crtc->pch_fifo_underrun_disabled = !enable;
 
 	if (HAS_PCH_IBX(dev_priv))
-		ibx_set_fifo_underrun_reporting(&dev_priv->drm,
+		ibx_set_fifo_underrun_reporting(display,
 						pch_transcoder,
 						enable);
 	else
-		cpt_set_fifo_underrun_reporting(&dev_priv->drm,
+		cpt_set_fifo_underrun_reporting(display,
 						pch_transcoder,
 						enable, old);
 
@@ -394,7 +390,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 	    crtc->cpu_fifo_underrun_disabled)
 		return;
 
-	if (intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false)) {
+	if (intel_set_cpu_fifo_underrun_reporting(display, pipe, false)) {
 		trace_intel_cpu_fifo_underrun(display, pipe);
 
 		drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
@@ -417,7 +413,7 @@ void intel_pch_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 {
 	struct intel_display *display = &dev_priv->display;
 
-	if (intel_set_pch_fifo_underrun_reporting(dev_priv, pch_transcoder,
+	if (intel_set_pch_fifo_underrun_reporting(display, pch_transcoder,
 						  false)) {
 		trace_intel_pch_fifo_underrun(display, pch_transcoder);
 		drm_err(&dev_priv->drm, "PCH transcoder %c FIFO underrun\n",
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
index b00d8abebcf9..8302080c2313 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
@@ -8,15 +8,16 @@
 
 #include <linux/types.h>
 
+enum pipe;
 struct drm_i915_private;
 struct intel_crtc;
-enum pipe;
+struct intel_display;
 
 void intel_init_fifo_underrun_reporting(struct drm_i915_private *i915,
 					struct intel_crtc *crtc, bool enable);
-bool intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
+bool intel_set_cpu_fifo_underrun_reporting(struct intel_display *display,
 					   enum pipe pipe, bool enable);
-bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
+bool intel_set_pch_fifo_underrun_reporting(struct intel_display *display,
 					   enum pipe pch_transcoder,
 					   bool enable);
 void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 0c3aa2e7b78b..46203d796fcc 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1864,8 +1864,8 @@ static void intel_disable_sdvo(struct intel_atomic_state *state,
 		 * We get CPU/PCH FIFO underruns on the other pipe when
 		 * doing the workaround. Sweep them under the rug.
 		 */
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, false);
-		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
+		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A, false);
+		intel_set_pch_fifo_underrun_reporting(display, PIPE_A, false);
 
 		temp &= ~SDVO_PIPE_SEL_MASK;
 		temp |= SDVO_ENABLE | SDVO_PIPE_SEL(PIPE_A);
@@ -1875,8 +1875,8 @@ static void intel_disable_sdvo(struct intel_atomic_state *state,
 		intel_sdvo_write_sdvox(intel_sdvo, temp);
 
 		intel_wait_for_vblank_if_active(display, PIPE_A);
-		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, true);
-		intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
+		intel_set_cpu_fifo_underrun_reporting(display, PIPE_A, true);
+		intel_set_pch_fifo_underrun_reporting(display, PIPE_A, true);
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index f6be1cd5d270..d68876fe782c 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -739,7 +739,7 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
 
 	intel_dsi_wait_panel_power_cycle(intel_dsi);
 
-	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, true);
+	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
 
 	/*
 	 * The BIOS may leave the PLL in a wonky state where it doesn't
-- 
2.39.5

