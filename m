Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 657F57A1C70
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 12:38:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E08D510E60E;
	Fri, 15 Sep 2023 10:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 937E810E61B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 10:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694774284; x=1726310284;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T7q/DmXztqf5rGlQWnPr+vFpVkR4tASnXHJtfsrlzJY=;
 b=BCPPT5vOHV7Td0BxAebjdfJ/QqGMm7kEve3yGuVWhG6xLJCCsUck5WBC
 dVnVVqIK8bcCOBFy1AdPhoFJK0ikyypI4gMApru/Q7LUSQzaIKmqkhhEI
 zl5XWM4ODjq90gXRm63k3dyyQvvrGAeiT7TO9MVC2FZ3XmAzYybAWtCMC
 pfwRNFrmbCiQ9+3/zZ7gZ+vqTCYbavuVU+9yzv3D6B9Yts/SlshEVy1zv
 FuFztKtNcWeG5ULNReIeF09V8wQytgZgI+mcA6mBfeVHH0OooygJWeypd
 ovrECtXUNx6ml8pbtkB6Lbjz9O7Prd8C0QvblZ0GVqUuB2wlbUzhHgpHg w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465581609"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="465581609"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 03:38:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="774263148"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="774263148"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga008.jf.intel.com with SMTP; 15 Sep 2023 03:38:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Sep 2023 13:38:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Sep 2023 13:38:00 +0300
Message-ID: <20230915103800.14218-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-13-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-13-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/12] drm/i915: Implement transcoder LRR for
 TGL+
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

Implement low refresh rate (LRR) where we change the vblank
length by hand as requested, but otherwise keep the timing
generator running in non-VRR mode (ie. fixed refresh rate).

The panel itself must support VRR for this to work, and
only TGL+ has the double buffred TRANS_VTOTAL.VTOTAL that
we need to make the switch properly. The double buffer
latching happens at the start of transcoders undelayed
vblank. The other thing that we change is
TRANS_VBLANK.VBLANK_END but the hardware entirely ignores
that in DP mode. But I decided to keep writing it anyway
just to avoid more special cases in readout/state check.

v2: Document that TRANS_VBLANK.VBLANK_END is ignored by
    the hardware
v3: Reconcile with VRR fastset
    Adjust update_lrr flag behaviour
    Make sure timings stay within VRR range
v4: Fix up update_m_n vs. update_lrr rebase fail (Manasi)
    Drop DOUBLE_BUFFER_VACTIVE define as it's not needed (Manasi)

TODO: Hook LRR into the automatic DRRS downclocking stuff?

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |  9 +--
 drivers/gpu/drm/i915/display/intel_display.c  | 60 +++++++++++++++++--
 .../drm/i915/display/intel_display_device.h   |  1 +
 .../drm/i915/display/intel_display_types.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |  7 ++-
 6 files changed, 70 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index aaddd8c0cfa0..5d18145da279 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -260,6 +260,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 
 	crtc_state->update_pipe = false;
 	crtc_state->update_m_n = false;
+	crtc_state->update_lrr = false;
 	crtc_state->disable_lp_wm = false;
 	crtc_state->disable_cxsr = false;
 	crtc_state->update_wm_pre = false;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a39e31c1ca85..22e85fe7e8aa 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -495,7 +495,7 @@ static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state *state,
 	if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
 		/* timing changes should happen with VRR disabled */
 		drm_WARN_ON(state->base.dev, intel_crtc_needs_modeset(new_crtc_state) ||
-			    new_crtc_state->update_m_n);
+			    new_crtc_state->update_m_n || new_crtc_state->update_lrr);
 
 		if (intel_vrr_is_push_sent(crtc_state))
 			*vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
@@ -511,10 +511,11 @@ static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state *state,
 	*max = *vblank_start - 1;
 
 	/*
-	 * M/N is double buffered on the transcoder's undelayed vblank,
-	 * so with seamless M/N we must evade both vblanks.
+	 * M/N and TRANS_VTOTAL are double buffered on the transcoder's
+	 * undelayed vblank, so with seamless M/N and LRR we must evade
+	 * both vblanks.
 	 */
-	if (new_crtc_state->update_m_n)
+	if (new_crtc_state->update_m_n || new_crtc_state->update_lrr)
 		*min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f0bb5c70ebfc..988558ccf794 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -928,7 +928,7 @@ static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
 {
 	return is_enabling(vrr.enable, old_crtc_state, new_crtc_state) ||
 		(new_crtc_state->vrr.enable &&
-		 (new_crtc_state->update_m_n ||
+		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
@@ -937,7 +937,7 @@ static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
 {
 	return is_disabling(vrr.enable, old_crtc_state, new_crtc_state) ||
 		(old_crtc_state->vrr.enable &&
-		 (new_crtc_state->update_m_n ||
+		 (new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
 		  vrr_params_changed(old_crtc_state, new_crtc_state)));
 }
 
@@ -2586,6 +2586,37 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 			       VTOTAL(crtc_vtotal - 1));
 }
 
+static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
+
+	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
+	crtc_vtotal = adjusted_mode->crtc_vtotal;
+	crtc_vblank_start = adjusted_mode->crtc_vblank_start;
+	crtc_vblank_end = adjusted_mode->crtc_vblank_end;
+
+	drm_WARN_ON(&dev_priv->drm, adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE);
+
+	/*
+	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mode.
+	 * But let's write it anyway to keep the state checker happy.
+	 */
+	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
+		       VBLANK_START(crtc_vblank_start - 1) |
+		       VBLANK_END(crtc_vblank_end - 1));
+	/*
+	 * The double buffer latch point for TRANS_VTOTAL
+	 * is the transcoder's undelayed vblank.
+	 */
+	intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
+		       VACTIVE(crtc_vdisplay - 1) |
+		       VTOTAL(crtc_vtotal - 1));
+}
+
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -5082,11 +5113,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
 	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
 	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
-	PIPE_CONF_CHECK_I(name.crtc_vtotal); \
 	PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
-	PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
 	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
 	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
+	if (!fastset || !pipe_config->update_lrr) { \
+		PIPE_CONF_CHECK_I(name.crtc_vtotal); \
+		PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
+	} \
 } while (0)
 
 #define PIPE_CONF_CHECK_RECT(name) do { \
@@ -5420,6 +5453,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 		crtc_state->uapi.mode_changed = true;
 		crtc_state->update_pipe = false;
 		crtc_state->update_m_n = false;
+		crtc_state->update_lrr = false;
 
 		ret = drm_atomic_add_affected_connectors(&state->base,
 							 &crtc->base);
@@ -5537,6 +5571,10 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 {
 	struct drm_i915_private *i915 = to_i915(old_crtc_state->uapi.crtc->dev);
 
+	/* only allow LRR when the timings stay within the VRR range */
+	if (old_crtc_state->vrr.in_range != new_crtc_state->vrr.in_range)
+		new_crtc_state->update_lrr = false;
+
 	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true))
 		drm_dbg_kms(&i915->drm, "fastset requirement not met, forcing full modeset\n");
 	else
@@ -5547,6 +5585,11 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 				   &new_crtc_state->dp_m_n))
 		new_crtc_state->update_m_n = false;
 
+	if (intel_crtc_needs_modeset(new_crtc_state) ||
+	    (old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
+	     old_crtc_state->hw.adjusted_mode.crtc_vblank_end == new_crtc_state->hw.adjusted_mode.crtc_vblank_end))
+		new_crtc_state->update_lrr = false;
+
 	if (!intel_crtc_needs_modeset(new_crtc_state))
 		new_crtc_state->update_pipe = true;
 }
@@ -6262,6 +6305,7 @@ int intel_atomic_check(struct drm_device *dev,
 				new_crtc_state->uapi.mode_changed = true;
 				new_crtc_state->update_pipe = false;
 				new_crtc_state->update_m_n = false;
+				new_crtc_state->update_lrr = false;
 			}
 		}
 
@@ -6275,6 +6319,7 @@ int intel_atomic_check(struct drm_device *dev,
 				new_crtc_state->uapi.mode_changed = true;
 				new_crtc_state->update_pipe = false;
 				new_crtc_state->update_m_n = false;
+				new_crtc_state->update_lrr = false;
 			}
 		}
 
@@ -6283,6 +6328,7 @@ int intel_atomic_check(struct drm_device *dev,
 				new_crtc_state->uapi.mode_changed = true;
 				new_crtc_state->update_pipe = false;
 				new_crtc_state->update_m_n = false;
+				new_crtc_state->update_lrr = false;
 			}
 		}
 	}
@@ -6464,6 +6510,9 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	if (new_crtc_state->update_m_n)
 		intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state->cpu_transcoder,
 					       &new_crtc_state->dp_m_n);
+
+	if (new_crtc_state->update_lrr)
+		intel_set_transcoder_timings_lrr(new_crtc_state);
 }
 
 static void commit_pipe_pre_planes(struct intel_atomic_state *state,
@@ -6600,7 +6649,8 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	 *
 	 * FIXME Should be synchronized with the start of vblank somehow...
 	 */
-	if (vrr_enabling(old_crtc_state, new_crtc_state) || new_crtc_state->update_m_n)
+	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
+	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
 		intel_crtc_update_active_timings(new_crtc_state,
 						 new_crtc_state->vrr.enable);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 8198401aa5be..ee77750af82b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -56,6 +56,7 @@ struct drm_printer;
 #define HAS_HW_SAGV_WM(i915)		(DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 #define HAS_IPC(i915)			(DISPLAY_INFO(i915)->has_ipc)
 #define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) || IS_BROADWELL(i915))
+#define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
 #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 2f35560d7e4e..536c642eb562 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1084,6 +1084,7 @@ struct intel_crtc_state {
 	unsigned fb_bits; /* framebuffers to flip */
 	bool update_pipe; /* can a fast modeset be performed? */
 	bool update_m_n; /* update M/N seamlessly during fastset? */
+	bool update_lrr; /* update TRANS_VTOTAL/etc. during fastset? */
 	bool disable_cxsr;
 	bool update_wm_pre, update_wm_post; /* watermarks are updated */
 	bool fifo_changed; /* FIFO split is changed */
@@ -1383,7 +1384,7 @@ struct intel_crtc_state {
 
 	/* Variable Refresh Rate state */
 	struct {
-		bool enable;
+		bool enable, in_range;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 	} vrr;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 12731ad725a8..5d905f932cb4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -120,9 +120,14 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
-	if (!intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode)))
+	crtc_state->vrr.in_range =
+		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
+	if (!crtc_state->vrr.in_range)
 		return;
 
+	if (HAS_LRR(i915))
+		crtc_state->update_lrr = true;
+
 	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
 			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
 	vmax = adjusted_mode->crtc_clock * 1000 /
-- 
2.41.0

