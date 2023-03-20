Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C9D6C22CC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 21:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BED610E677;
	Mon, 20 Mar 2023 20:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0599A10E672
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 20:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679344451; x=1710880451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R1ZuTC9vW89Qw3kQOcl1JaO3mggoaBXeY1/u25Cf4ko=;
 b=hVp67pwsTmGf5lvSO1HGZBXiwKUeedzX9cUhSW6mAQ3/RsZJeec+mf6a
 Gvh1g7C8Fi4pUyvXksvC4jphHtGmZxsiTZFJj31K0pDFN9Ep4UzcTRAaI
 lc1tSSc+pzBz9CCQkrF0qZ0PObOrdp5MUnqLqSYHwkeoLckj/AZBEKbDr
 f5nC5PFnc/3xRpK13THPshM68NI+cxC1JEnpYfcd/1oxfcbaxfsHi6dFt
 5OWnqcecFAuSfwIEkBOhcQkykvU1TC7bGJWaOPnKGATysNUINHhchrD6M
 bbDBIK/hSwyMxbF+ZqEvwNK7lAyVHFXLcti36jxVYHXeLGKKkC0NmG2cm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327148294"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="327148294"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 13:34:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770339233"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770339233"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 13:34:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 22:34:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 22:33:51 +0200
Message-Id: <20230320203352.19515-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/vrr: Relocate VRR enable/disable
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move VRR enabling/disabling into a place where it also works
for fastsets.

With this we always start the transcoder up in non-VRR mode.
Granted  we already did that but for a very short period of
time. But now that we might end up doing a bit more with the
transcoder in non-VRR mode it seems prudent to also update
the active timings as the transcoder changes its operating
mode.

crtc_state->vrr.enable still tracks whether VRR is actually
enabled or not, but now we configure all the other VRR timing
registers whenever VRR is possible (whether we actually enable
it or not). crtc_state->vrr.flipline can now serve as our
"is VRR possible" bit of state.

I decided to leave the MSA timing ignore bit set all the time
whether VRR is actually enabled or not. If the sink can figure
out the timings with that information when VRR is active then
surely it can also do it when VRR is inactive.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  5 --
 drivers/gpu/drm/i915/display/intel_display.c  | 28 ++++++++++-
 .../drm/i915/display/intel_dp_link_training.c |  2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 48 +++++++++++--------
 drivers/gpu/drm/i915/display/intel_vrr.h      |  1 +
 5 files changed, 57 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d094485f080d..fc1da5e06006 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -68,7 +68,6 @@
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vdsc_regs.h"
-#include "intel_vrr.h"
 #include "skl_scaler.h"
 #include "skl_universal_plane.h"
 
@@ -2724,8 +2723,6 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
 	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST)) {
 		intel_crtc_vblank_off(old_crtc_state);
 
-		intel_vrr_disable(old_crtc_state);
-
 		intel_disable_transcoder(old_crtc_state);
 
 		intel_ddi_disable_transcoder_func(old_crtc_state);
@@ -2951,8 +2948,6 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
 
 	intel_enable_transcoder(crtc_state);
 
-	intel_vrr_enable(crtc_state);
-
 	intel_crtc_vblank_on(crtc_state);
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fc8eafd5fa61..cefd9f2e1331 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1088,6 +1088,18 @@ static bool planes_disabling(const struct intel_crtc_state *old_crtc_state,
 	return is_disabling(active_planes, old_crtc_state, new_crtc_state);
 }
 
+static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
+			 const struct intel_crtc_state *new_crtc_state)
+{
+	return is_enabling(vrr.enable, old_crtc_state, new_crtc_state);
+}
+
+static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
+			  const struct intel_crtc_state *new_crtc_state)
+{
+	return is_disabling(vrr.enable, old_crtc_state, new_crtc_state);
+}
+
 #undef is_disabling
 #undef is_enabling
 
@@ -1201,6 +1213,11 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 
+	if (vrr_disabling(old_crtc_state, new_crtc_state)) {
+		intel_vrr_disable(old_crtc_state);
+		intel_crtc_update_active_timings(old_crtc_state, false);
+	}
+
 	intel_drrs_deactivate(old_crtc_state);
 
 	intel_psr_pre_plane_update(state, crtc);
@@ -1757,6 +1774,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
 	}
 
 	intel_set_transcoder_timings(crtc_state);
+	intel_vrr_set_transcoder_timings(crtc_state);
 
 	if (cpu_transcoder != TRANSCODER_EDP)
 		intel_de_write(dev_priv, TRANS_MULT(cpu_transcoder),
@@ -6956,8 +6974,8 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	if (!intel_crtc_needs_modeset(new_crtc_state))
 		return;
 
-	intel_crtc_update_active_timings(new_crtc_state,
-					 new_crtc_state->vrr.enable);
+	/* VRR will be enable later, if required */
+	intel_crtc_update_active_timings(new_crtc_state, false);
 
 	dev_priv->display.funcs.display->crtc_enable(state, crtc);
 
@@ -6978,6 +6996,12 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
+	if (vrr_enabling(old_crtc_state, new_crtc_state)) {
+		intel_vrr_enable(new_crtc_state);
+		intel_crtc_update_active_timings(new_crtc_state,
+						 new_crtc_state->vrr.enable);
+	}
+
 	if (!modeset) {
 		if (new_crtc_state->preload_luts &&
 		    intel_crtc_needs_color_update(new_crtc_state))
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index bc5215eb84b1..967047f3a92f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -699,7 +699,7 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 		drm_dp_dpcd_write(&intel_dp->aux, DP_LINK_RATE_SET,
 				  &rate_select, 1);
 
-	link_config[0] = crtc_state->vrr.enable ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
+	link_config[0] = crtc_state->vrr.flipline ? DP_MSA_TIMING_PAR_IGNORE_EN : 0;
 	link_config[1] = intel_dp_is_uhbr(crtc_state) ?
 		DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
 	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 348a7cc8e620..88e4759b538b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -114,9 +114,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
-	if (!crtc_state->uapi.vrr_enabled)
-		return;
-
 	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
 			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
 	vmax = adjusted_mode->crtc_clock * 1000 /
@@ -135,7 +132,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	 */
 	crtc_state->vrr.vmin = vmin - 1;
 	crtc_state->vrr.vmax = vmax;
-	crtc_state->vrr.enable = true;
 
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
 
@@ -152,7 +148,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			    crtc_state->framestart_delay - 1);
 	}
 
-	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+	if (crtc_state->uapi.vrr_enabled) {
+		crtc_state->vrr.enable = true;
+		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+	}
 }
 
 static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
@@ -168,7 +167,7 @@ static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
 			VRR_CTL_PIPELINE_FULL_OVERRIDE;
 }
 
-void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
+void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -181,17 +180,15 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
 			     0, PIPE_VBLANK_WITH_DELAY);
 
-	if (!crtc_state->vrr.enable)
+	if (!crtc_state->vrr.flipline) {
+		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), 0);
 		return;
+	}
 
 	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
 	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
 	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
-	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
-
-	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
-		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
 }
 
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
@@ -219,6 +216,19 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	return intel_de_read(dev_priv, TRANS_PUSH(cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
+void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	if (!crtc_state->vrr.enable)
+		return;
+
+	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
+	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
+		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+}
+
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
@@ -232,9 +242,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 		       trans_vrr_ctl(old_crtc_state));
 	intel_de_wait_for_clear(dev_priv, TRANS_VRR_STATUS(cpu_transcoder),
 				VRR_STATUS_VRR_EN_LIVE, 1000);
-
 	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
-	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), 0);
 }
 
 void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
@@ -244,9 +252,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	u32 trans_vrr_ctl;
 
 	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
+
 	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
-	if (!crtc_state->vrr.enable)
-		return;
 
 	if (DISPLAY_VER(dev_priv) >= 13)
 		crtc_state->vrr.guardband =
@@ -255,10 +262,13 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		if (trans_vrr_ctl & VRR_CTL_PIPELINE_FULL_OVERRIDE)
 			crtc_state->vrr.pipeline_full =
 				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
-	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN)
+
+	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
 		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;
-	crtc_state->vrr.vmax = intel_de_read(dev_priv, TRANS_VRR_VMAX(cpu_transcoder)) + 1;
-	crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
+		crtc_state->vrr.vmax = intel_de_read(dev_priv, TRANS_VRR_VMAX(cpu_transcoder)) + 1;
+		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
+	}
 
-	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+	if (crtc_state->vrr.enable)
+		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index ee636a5367c8..de16960c4929 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -17,6 +17,7 @@ bool intel_vrr_is_capable(struct intel_connector *connector);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
+void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
 bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
-- 
2.39.2

