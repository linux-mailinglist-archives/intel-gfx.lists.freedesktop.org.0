Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F73D96BDCE
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 15:07:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5CC210E7BD;
	Wed,  4 Sep 2024 13:07:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XGjCzzL0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3976B10E7BA
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 13:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725455218; x=1756991218;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jVjgPptm58DD0ruSlSIxkbtSsmee1bCB2oSY5Nuds9s=;
 b=XGjCzzL0GGv4vzXSIu/ik0slnQnqLtVEgCdticS69KjRoxcEV/v/D13L
 /ShJI/e3TNR5iJ/NTIdbxUvUHNbMXxUOY6AqVHp2AHFmwL1191i1lEcdo
 owbuOMfnqxfL7fYYKIhFiu8MGJapDPMFA0J9o7gC3jwJSmM0miVVLnqQ2
 qKUManBOfqfjIqWBTNGpfAPNNwctxqayiOgY7jZ1Jw+W+gMCyj7PLClA1
 VTDQqiXXkT1VLeOZIbvoJVYAckU2JhxeHW4Nc139VRswwryTDRAJek1OE
 D4pFYYDFVIONoG4dnZVS6RFQTgqmSJAe9nBnIv+n0r9hN6bWEbAlSQI39 w==;
X-CSE-ConnectionGUID: j657NNPhQcyjlzkRVRXIlQ==
X-CSE-MsgGUID: O/fD7IYLTPCsECXtVpZRhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="28000698"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="28000698"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 06:06:54 -0700
X-CSE-ConnectionGUID: VADbDQUxT7+dKLfREv7Lcw==
X-CSE-MsgGUID: iRfXRKR4Tra1dCeUET71IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="65500445"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 06:06:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/display: pass display to intel_crtc_for_pipe()
Date: Wed,  4 Sep 2024 16:06:32 +0300
Message-Id: <20240904130633.3831492-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

Convert the intel_crtc_for_pipe() struct drm_i915_private parameter to
struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c          | 15 ++++++++++-----
 .../gpu/drm/i915/display/intel_atomic_plane.c   |  4 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c      |  6 ++++--
 drivers/gpu/drm/i915/display/intel_crt.c        |  3 ++-
 drivers/gpu/drm/i915/display/intel_crtc.c       |  8 +++++---
 drivers/gpu/drm/i915/display/intel_crtc.h       |  3 ++-
 drivers/gpu/drm/i915/display/intel_display.c    | 17 ++++++++++-------
 .../gpu/drm/i915/display/intel_display_driver.c |  3 ++-
 .../gpu/drm/i915/display/intel_display_irq.c    |  9 ++++++---
 .../gpu/drm/i915/display/intel_display_trace.h  | 15 ++++++++++-----
 drivers/gpu/drm/i915/display/intel_dpll.c       |  3 ++-
 drivers/gpu/drm/i915/display/intel_dsb.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c        |  3 +--
 drivers/gpu/drm/i915/display/intel_fdi.c        | 10 ++++++----
 .../gpu/drm/i915/display/intel_fifo_underrun.c  | 15 ++++++++++-----
 drivers/gpu/drm/i915/display/intel_link_bw.c    |  3 +--
 .../gpu/drm/i915/display/intel_modeset_setup.c  | 12 ++++++++----
 .../gpu/drm/i915/display/intel_sprite_uapi.c    |  3 ++-
 drivers/gpu/drm/i915/display/skl_watermark.c    |  7 ++++---
 19 files changed, 88 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 15cda57fbc91..9535e92dcbf4 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -715,10 +715,11 @@ static unsigned int g4x_tlb_miss_wa(int fifo_size, int width, int cpp)
 static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 				const struct g4x_wm_values *wm)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe)
-		trace_g4x_wm(intel_crtc_for_pipe(dev_priv, pipe), wm);
+		trace_g4x_wm(intel_crtc_for_pipe(display, pipe), wm);
 
 	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
 			   FW_WM(wm->sr.plane, SR) |
@@ -747,10 +748,11 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
 static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
 				const struct vlv_wm_values *wm)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
-		trace_vlv_wm(intel_crtc_for_pipe(dev_priv, pipe), wm);
+		trace_vlv_wm(intel_crtc_for_pipe(display, pipe), wm);
 
 		intel_uncore_write(&dev_priv->uncore, VLV_DDL(pipe),
 				   (wm->ddl[pipe].plane[PLANE_CURSOR] << DDL_CURSOR_SHIFT) |
@@ -2088,12 +2090,13 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 static struct intel_crtc *intel_crtc_for_plane(struct drm_i915_private *i915,
 					       enum i9xx_plane_id i9xx_plane)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_plane *plane;
 
 	for_each_intel_plane(&i915->drm, plane) {
 		if (plane->id == PLANE_PRIMARY &&
 		    plane->i9xx_plane == i9xx_plane)
-			return intel_crtc_for_pipe(i915, plane->pipe);
+			return intel_crtc_for_pipe(display, plane->pipe);
 	}
 
 	return NULL;
@@ -3716,6 +3719,7 @@ static void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
@@ -3723,7 +3727,7 @@ static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 
 	for_each_intel_plane(&dev_priv->drm, plane) {
 		struct intel_crtc *crtc =
-			intel_crtc_for_pipe(dev_priv, plane->pipe);
+			intel_crtc_for_pipe(display, plane->pipe);
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane_state *plane_state =
@@ -3871,6 +3875,7 @@ static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 
 static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
@@ -3878,7 +3883,7 @@ static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 
 	for_each_intel_plane(&dev_priv->drm, plane) {
 		struct intel_crtc *crtc =
-			intel_crtc_for_pipe(dev_priv, plane->pipe);
+			intel_crtc_for_pipe(display, plane->pipe);
 		struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
 		struct intel_plane_state *plane_state =
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index e979786aa5cf..7793c15fabec 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -710,13 +710,13 @@ intel_crtc_get_plane(struct intel_crtc *crtc, enum plane_id plane_id)
 int intel_plane_atomic_check(struct intel_atomic_state *state,
 			     struct intel_plane *plane)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_plane_state *new_plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	const struct intel_plane_state *old_plane_state =
 		intel_atomic_get_old_plane_state(state, plane);
 	const struct intel_plane_state *new_primary_crtc_plane_state;
-	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, plane->pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, plane->pipe);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index aa3ba66c5307..51cd5375145f 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2038,6 +2038,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			   const struct intel_cdclk_config *cdclk_config,
 			   enum pipe pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
 
@@ -2063,7 +2064,7 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	intel_de_write(dev_priv, CDCLK_CTL, bxt_cdclk_ctl(dev_priv, cdclk_config, pipe));
 
 	if (pipe != INVALID_PIPE)
-		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
+		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
 }
 
 static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
@@ -3262,6 +3263,7 @@ static bool intel_cdclk_need_serialize(struct drm_i915_private *i915,
 
 int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state;
 	struct intel_cdclk_state *new_cdclk_state;
@@ -3308,7 +3310,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 		struct intel_crtc_state *crtc_state;
 
 		pipe = ilog2(new_cdclk_state->active_pipes);
-		crtc = intel_crtc_for_pipe(dev_priv, pipe);
+		crtc = intel_crtc_for_pipe(display, pipe);
 
 		crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
 		if (IS_ERR(crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 835c8b844494..fd78adbaadbe 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -694,6 +694,7 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
 static enum drm_connector_status
 intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 {
+	struct intel_display *display = to_intel_display(&crt->base);
 	struct drm_device *dev = crt->base.base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum transcoder cpu_transcoder = (enum transcoder)pipe;
@@ -734,7 +735,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 				      TRANSCONF(dev_priv, cpu_transcoder));
 		/* Wait for next Vblank to substitue
 		 * border color for Color info */
-		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
+		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
 		st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
 		status = ((st00 & (1 << 4)) != 0) ?
 			connector_status_connected :
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 1b578cad2813..32e0f2907899 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -48,12 +48,12 @@ struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915)
 	return to_intel_crtc(drm_crtc_from_index(&i915->drm, 0));
 }
 
-struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
+struct intel_crtc *intel_crtc_for_pipe(struct intel_display *display,
 				       enum pipe pipe)
 {
 	struct intel_crtc *crtc;
 
-	for_each_intel_crtc(&i915->drm, crtc) {
+	for_each_intel_crtc(display->drm, crtc) {
 		if (crtc->pipe == pipe)
 			return crtc;
 	}
@@ -69,7 +69,9 @@ void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc)
 void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
 				     enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
+	struct intel_display *display = &i915->display;
+
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
 	if (crtc->active)
 		intel_crtc_wait_for_next_vblank(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index b615b7ab5ccd..0de8c772df2e 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -15,6 +15,7 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 
 /*
  * FIXME: We should instead only take spinlocks once for the entire update
@@ -43,7 +44,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc);
 void intel_wait_for_vblank_workers(struct intel_atomic_state *state);
 struct intel_crtc *intel_first_crtc(struct drm_i915_private *i915);
-struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
+struct intel_crtc *intel_crtc_for_pipe(struct intel_display *display,
 				       enum pipe pipe);
 void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
 				     enum pipe pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b4ef4d59da1a..f015e6a73922 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -291,10 +291,10 @@ u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
 
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 
 	if (intel_crtc_is_joiner_secondary(crtc_state))
-		return intel_crtc_for_pipe(i915, joiner_primary_pipe(crtc_state));
+		return intel_crtc_for_pipe(display, joiner_primary_pipe(crtc_state));
 	else
 		return to_intel_crtc(crtc_state->uapi.crtc);
 }
@@ -1677,6 +1677,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 static void hsw_crtc_enable(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -1776,7 +1777,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 		hsw_workaround_pipe = pipe_crtc_state->hsw_workaround_pipe;
 		if (IS_HASWELL(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
 			struct intel_crtc *wa_crtc =
-				intel_crtc_for_pipe(dev_priv, hsw_workaround_pipe);
+				intel_crtc_for_pipe(display, hsw_workaround_pipe);
 
 			intel_crtc_wait_for_next_vblank(wa_crtc);
 			intel_crtc_wait_for_next_vblank(wa_crtc);
@@ -3986,7 +3987,7 @@ int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
 struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crtc_state *crtc_state;
 	struct drm_display_mode *mode;
 	struct intel_crtc *crtc;
@@ -3995,7 +3996,7 @@ intel_encoder_current_mode(struct intel_encoder *encoder)
 	if (!encoder->get_hw_state(encoder, &pipe))
 		return NULL;
 
-	crtc = intel_crtc_for_pipe(dev_priv, pipe);
+	crtc = intel_crtc_for_pipe(display, pipe);
 
 	mode = kzalloc(sizeof(*mode), GFP_KERNEL);
 	if (!mode)
@@ -8257,7 +8258,8 @@ int intel_initial_commit(struct drm_device *dev)
 
 void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+	struct intel_display *display = &dev_priv->display;
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	enum transcoder cpu_transcoder = (enum transcoder)pipe;
 	/* 640x480@60Hz, ~25175 kHz */
 	struct dpll clock = {
@@ -8338,7 +8340,8 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 
 void i830_disable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+	struct intel_display *display = &dev_priv->display;
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
 	drm_dbg_kms(&dev_priv->drm, "disabling pipe %c due to force quirk\n",
 		    pipe_name(pipe));
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 069426d9260b..e7670774ecd0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -168,10 +168,11 @@ static void intel_mode_config_cleanup(struct drm_i915_private *i915)
 
 static void intel_plane_possible_crtcs_init(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_plane *plane;
 
 	for_each_intel_plane(&dev_priv->drm, plane) {
-		struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv,
+		struct intel_crtc *crtc = intel_crtc_for_pipe(display,
 							      plane->pipe);
 
 		plane->base.possible_crtcs = drm_crtc_mask(&crtc->base);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 73369847ed66..179ed72037e7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -27,7 +27,8 @@
 static void
 intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+	struct intel_display *display = &dev_priv->display;
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
 	drm_crtc_handle_vblank(&crtc->base);
 }
@@ -305,7 +306,8 @@ static void display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 					 u32 crc2, u32 crc3,
 					 u32 crc4)
 {
-	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+	struct intel_display *display = &dev_priv->display;
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
 	u32 crcs[5] = { crc0, crc1, crc2, crc3, crc4 };
 
@@ -344,7 +346,8 @@ display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
 static void flip_done_handler(struct drm_i915_private *i915,
 			      enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
+	struct intel_display *display = &i915->display;
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
 	spin_lock(&i915->drm.event_lock);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
index c734ef1fba3c..7176eefaf505 100644
--- a/drivers/gpu/drm/i915/display/intel_display_trace.h
+++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
@@ -141,7 +141,8 @@ TRACE_EVENT(intel_cpu_fifo_underrun,
 			     ),
 
 	    TP_fast_assign(
-			    struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+			   struct intel_display *display = &dev_priv->display;
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 			   __assign_str(dev);
 			   __entry->pipe = pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
@@ -165,8 +166,9 @@ TRACE_EVENT(intel_pch_fifo_underrun,
 			     ),
 
 	    TP_fast_assign(
+			   struct intel_display *display = &dev_priv->display;
 			   enum pipe pipe = pch_transcoder;
-			   struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 			   __assign_str(dev);
 			   __entry->pipe = pipe;
 			   __entry->frame = intel_crtc_get_vblank_counter(crtc);
@@ -458,7 +460,8 @@ TRACE_EVENT(intel_fbc_activate,
 			     ),
 
 	    TP_fast_assign(
-			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
+			   struct intel_display *display = to_intel_display(plane->base.dev);
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display,
 									 plane->pipe);
 			   __assign_str(dev);
 			   __assign_str(name);
@@ -485,7 +488,8 @@ TRACE_EVENT(intel_fbc_deactivate,
 			     ),
 
 	    TP_fast_assign(
-			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
+			   struct intel_display *display = to_intel_display(plane->base.dev);
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display,
 									 plane->pipe);
 			   __assign_str(dev);
 			   __assign_str(name);
@@ -512,7 +516,8 @@ TRACE_EVENT(intel_fbc_nuke,
 			     ),
 
 	    TP_fast_assign(
-			   struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(plane->base.dev),
+			   struct intel_display *display = to_intel_display(plane->base.dev);
+			   struct intel_crtc *crtc = intel_crtc_for_pipe(display,
 									 plane->pipe);
 			   __assign_str(dev);
 			   __assign_str(name);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 340dfce480b8..bc72d1c0cb41 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -2212,7 +2212,8 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
 int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
 		     const struct dpll *dpll)
 {
-	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+	struct intel_display *display = &dev_priv->display;
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	struct intel_crtc_state *crtc_state;
 
 	crtc_state = intel_crtc_state_alloc(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index da24e041d269..c39bae1be89e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -763,7 +763,7 @@ void intel_dsb_cleanup(struct intel_dsb *dsb)
 void intel_dsb_irq_handler(struct intel_display *display,
 			   enum pipe pipe, enum intel_dsb_id dsb_id)
 {
-	struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(display->drm), pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	u32 tmp, errors;
 
 	tmp = intel_de_read_fw(display, DSB_INTERRUPT(pipe, dsb_id));
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 52b79bacef4d..7cb1a9cfa20f 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1792,7 +1792,6 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 {
 	struct intel_fbc *fbc = container_of(work, typeof(*fbc), underrun_work);
 	struct intel_display *display = fbc->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	mutex_lock(&fbc->lock);
 
@@ -1805,7 +1804,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
 
 	intel_fbc_deactivate(fbc, "FIFO underrun");
 	if (!fbc->flip_pending)
-		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(i915, fbc->state.plane->pipe));
+		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, fbc->state.plane->pipe));
 	__intel_fbc_disable(fbc);
 out:
 	mutex_unlock(&fbc->lock);
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 222cd0e1a2bc..0168894e9cd1 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -137,6 +137,7 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
  */
 int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state;
 	const struct intel_crtc_state *new_crtc_state;
@@ -145,7 +146,7 @@ int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state)
 	if (!IS_IVYBRIDGE(i915) || INTEL_NUM_PIPES(i915) != 3)
 		return 0;
 
-	crtc = intel_crtc_for_pipe(i915, PIPE_C);
+	crtc = intel_crtc_for_pipe(display, PIPE_C);
 	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 	if (!new_crtc_state)
 		return 0;
@@ -157,7 +158,7 @@ int intel_fdi_add_affected_crtcs(struct intel_atomic_state *state)
 	if (!old_crtc_state->fdi_lanes)
 		return 0;
 
-	crtc = intel_crtc_for_pipe(i915, PIPE_B);
+	crtc = intel_crtc_for_pipe(display, PIPE_B);
 	new_crtc_state = intel_atomic_get_crtc_state(&state->base, crtc);
 	if (IS_ERR(new_crtc_state))
 		return PTR_ERR(new_crtc_state);
@@ -184,6 +185,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 			       struct intel_crtc_state *pipe_config,
 			       enum pipe *pipe_to_reduce)
 {
+	struct intel_display *display = to_intel_display(dev);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_atomic_state *state = pipe_config->uapi.state;
 	struct intel_crtc *other_crtc;
@@ -223,7 +225,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 		if (pipe_config->fdi_lanes <= 2)
 			return 0;
 
-		other_crtc = intel_crtc_for_pipe(dev_priv, PIPE_C);
+		other_crtc = intel_crtc_for_pipe(display, PIPE_C);
 		other_crtc_state =
 			intel_atomic_get_crtc_state(state, other_crtc);
 		if (IS_ERR(other_crtc_state))
@@ -244,7 +246,7 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 			return -EINVAL;
 		}
 
-		other_crtc = intel_crtc_for_pipe(dev_priv, PIPE_B);
+		other_crtc = intel_crtc_for_pipe(display, PIPE_B);
 		other_crtc_state =
 			intel_atomic_get_crtc_state(state, other_crtc);
 		if (IS_ERR(other_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 8949fbb1cc60..4ffbaf44c21b 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -57,6 +57,7 @@
 
 static bool ivb_can_enable_err_int(struct drm_device *dev)
 {
+	struct intel_display *display = to_intel_display(dev);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crtc *crtc;
 	enum pipe pipe;
@@ -64,7 +65,7 @@ static bool ivb_can_enable_err_int(struct drm_device *dev)
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	for_each_pipe(dev_priv, pipe) {
-		crtc = intel_crtc_for_pipe(dev_priv, pipe);
+		crtc = intel_crtc_for_pipe(display, pipe);
 
 		if (crtc->cpu_fifo_underrun_disabled)
 			return false;
@@ -75,6 +76,7 @@ static bool ivb_can_enable_err_int(struct drm_device *dev)
 
 static bool cpt_can_enable_serr_int(struct drm_device *dev)
 {
+	struct intel_display *display = to_intel_display(dev);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum pipe pipe;
 	struct intel_crtc *crtc;
@@ -82,7 +84,7 @@ static bool cpt_can_enable_serr_int(struct drm_device *dev)
 	lockdep_assert_held(&dev_priv->irq_lock);
 
 	for_each_pipe(dev_priv, pipe) {
-		crtc = intel_crtc_for_pipe(dev_priv, pipe);
+		crtc = intel_crtc_for_pipe(display, pipe);
 
 		if (crtc->pch_fifo_underrun_disabled)
 			return false;
@@ -282,8 +284,9 @@ static void cpt_set_fifo_underrun_reporting(struct drm_device *dev,
 static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
 						    enum pipe pipe, bool enable)
 {
+	struct intel_display *display = to_intel_display(dev);
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	bool old;
 
 	lockdep_assert_held(&dev_priv->irq_lock);
@@ -351,8 +354,9 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
 					   enum pipe pch_transcoder,
 					   bool enable)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct intel_crtc *crtc =
-		intel_crtc_for_pipe(dev_priv, pch_transcoder);
+		intel_crtc_for_pipe(display, pch_transcoder);
 	unsigned long flags;
 	bool old;
 
@@ -395,7 +399,8 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
 void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
 					 enum pipe pipe)
 {
-	struct intel_crtc *crtc = intel_crtc_for_pipe(dev_priv, pipe);
+	struct intel_display *display = &dev_priv->display;
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 	u32 underruns = 0;
 
 	/* We may be called too early in init, thanks BIOS! */
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index e7a9b860fac6..c87cd1d16d0a 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -26,7 +26,6 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
 			       struct intel_link_bw_limits *limits)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	enum pipe pipe;
 
 	limits->force_fec_pipes = 0;
@@ -34,7 +33,7 @@ void intel_link_bw_init_limits(struct intel_atomic_state *state,
 	for_each_pipe(display, pipe) {
 		const struct intel_crtc_state *crtc_state =
 			intel_atomic_get_new_crtc_state(state,
-							intel_crtc_for_pipe(i915, pipe));
+							intel_crtc_for_pipe(display, pipe));
 
 		if (state->base.duplicated && crtc_state) {
 			limits->max_bpp_x16[pipe] = crtc_state->max_link_bpp_x16;
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 72694dde3c22..fe6a90d78e78 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -221,6 +221,7 @@ static u8 get_transcoder_pipes(struct drm_i915_private *i915,
 static void get_portsync_pipes(struct intel_crtc *crtc,
 			       u8 *master_pipe_mask, u8 *slave_pipes_mask)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
@@ -243,7 +244,7 @@ static void get_portsync_pipes(struct intel_crtc *crtc,
 	*master_pipe_mask = get_transcoder_pipes(i915, BIT(master_transcoder));
 	drm_WARN_ON(&i915->drm, !is_power_of_2(*master_pipe_mask));
 
-	master_crtc = intel_crtc_for_pipe(i915, ffs(*master_pipe_mask) - 1);
+	master_crtc = intel_crtc_for_pipe(display, ffs(*master_pipe_mask) - 1);
 	master_crtc_state = to_intel_crtc_state(master_crtc->base.state);
 	*slave_pipes_mask = get_transcoder_pipes(i915, master_crtc_state->sync_mode_slaves_mask);
 }
@@ -375,6 +376,7 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
 static void
 intel_sanitize_plane_mapping(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_crtc *crtc;
 
 	if (DISPLAY_VER(i915) >= 4)
@@ -396,7 +398,7 @@ intel_sanitize_plane_mapping(struct drm_i915_private *i915)
 			    "[PLANE:%d:%s] attached to the wrong pipe, disabling plane\n",
 			    plane->base.base.id, plane->base.name);
 
-		plane_crtc = intel_crtc_for_pipe(i915, pipe);
+		plane_crtc = intel_crtc_for_pipe(display, pipe);
 		intel_plane_disable_noatomic(plane_crtc, plane);
 	}
 }
@@ -662,6 +664,7 @@ static void intel_sanitize_encoder(struct intel_encoder *encoder)
 /* FIXME read out full plane state for all planes */
 static void readout_plane_state(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_plane *plane;
 	struct intel_crtc *crtc;
 
@@ -674,7 +677,7 @@ static void readout_plane_state(struct drm_i915_private *i915)
 
 		visible = plane->get_hw_state(plane, &pipe);
 
-		crtc = intel_crtc_for_pipe(i915, pipe);
+		crtc = intel_crtc_for_pipe(display, pipe);
 		crtc_state = to_intel_crtc_state(crtc->base.state);
 
 		intel_set_plane_visible(crtc_state, plane_state, visible);
@@ -695,6 +698,7 @@ static void readout_plane_state(struct drm_i915_private *i915)
 
 static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_cdclk_state *cdclk_state =
 		to_intel_cdclk_state(i915->display.cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
@@ -743,7 +747,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 		pipe = 0;
 
 		if (encoder->get_hw_state(encoder, &pipe)) {
-			crtc = intel_crtc_for_pipe(i915, pipe);
+			crtc = intel_crtc_for_pipe(display, pipe);
 			crtc_state = to_intel_crtc_state(crtc->base.state);
 
 			encoder->base.crtc = &crtc->base;
diff --git a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
index 4853c4806004..1d0b84b464c1 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite_uapi.c
@@ -42,6 +42,7 @@ static void intel_plane_set_ckey(struct intel_plane_state *plane_state,
 int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 				    struct drm_file *file_priv)
 {
+	struct intel_display *display = to_intel_display(dev);
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct drm_intel_sprite_colorkey *set = data;
 	struct drm_plane *plane;
@@ -100,7 +101,7 @@ int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
 		 */
 		if (!ret && has_dst_key_in_primary_plane(dev_priv)) {
 			struct intel_crtc *crtc =
-				intel_crtc_for_pipe(dev_priv,
+				intel_crtc_for_pipe(display,
 						    to_intel_plane(plane)->pipe);
 
 			plane_state = drm_atomic_get_plane_state(state,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 045c7cac166b..2634bd84ac8e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3598,6 +3598,7 @@ static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state
 static enum pipe intel_mbus_joined_pipe(struct intel_atomic_state *state,
 					const struct intel_dbuf_state *dbuf_state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	enum pipe pipe = ffs(dbuf_state->active_pipes) - 1;
 	const struct intel_crtc_state *new_crtc_state;
@@ -3606,7 +3607,7 @@ static enum pipe intel_mbus_joined_pipe(struct intel_atomic_state *state,
 	drm_WARN_ON(&i915->drm, !dbuf_state->joined_mbus);
 	drm_WARN_ON(&i915->drm, !is_power_of_2(dbuf_state->active_pipes));
 
-	crtc = intel_crtc_for_pipe(i915, pipe);
+	crtc = intel_crtc_for_pipe(display, pipe);
 	new_crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (new_crtc_state && !intel_crtc_needs_modeset(new_crtc_state))
@@ -3668,7 +3669,7 @@ void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state)
 
 void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 	const struct intel_dbuf_state *old_dbuf_state =
@@ -3687,7 +3688,7 @@ void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state)
 		intel_dbuf_mbus_join_update(state, pipe);
 
 		if (pipe != INVALID_PIPE) {
-			struct intel_crtc *crtc = intel_crtc_for_pipe(i915, pipe);
+			struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
 
 			intel_crtc_wait_for_next_vblank(crtc);
 		}
-- 
2.39.2

