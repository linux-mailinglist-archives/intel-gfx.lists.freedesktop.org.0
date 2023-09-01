Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3C278FE05
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:05:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A123E10E7C5;
	Fri,  1 Sep 2023 13:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8794410E7C8
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 13:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693573503; x=1725109503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vP9bLaZVrLjVGS3apJxANtydPnmOycfG1zYLpkZKLUs=;
 b=LTm0J0n9Rf+Hi3QbITUVFy2NTi861qh48bjRPbgYFobVsluEY3KOhqUE
 vtaI1ILKd96S724zvn3b9BjS7UCgySmf5+FIG1phGbSuz2NOBGEJCtxBo
 DiTkjMcpyJtO3wFVaQmEUqPG1bOpv7xlcZ+rpM50/O13jQDAwnyIVygHe
 JQf/N5z57nRKpsbw/XH8xKMCYf1AsGtye+nSo/JrDK6jrhJifogO+WuCn
 HX+yrkt/P0qPgQPH8PRSkzhTm0jro73PPS+TjjXoyE1I6fPxj9dizJwe7
 1glI2ZD3mBJlpi4gyn0OoIFxV/kpq+0bGUn7uvdrCQTXkjZn+sNLIcQ7j g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="361240601"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="361240601"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 06:05:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="774994862"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="774994862"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 01 Sep 2023 06:04:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Sep 2023 16:04:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Sep 2023 16:04:33 +0300
Message-ID: <20230901130440.2085-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/12] drm/i915: Adjust seamless_m_n flag
 behaviour
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

Make the seamless_m_n flag more like the update_pipe fastset
flag, ie. the flag will only be set if we need to do the seamless
M/N update, and in all other cases the flag is cleared. Also
rename the flag to update_m_n to make it more clear it's similar
to update_pipe.

I believe special casing seamless_m_n like this makes sense
as it also affects eg. vblank evasion. We can potentially avoid
some vblank evasion tricks, simplify some checks, and hopefully
will help with the VRR vs. M/N mess.

Cc: Manasi Navare <navaremanasi@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++++--------
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 5 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 7cf51dd8c056..aaddd8c0cfa0 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -259,6 +259,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 		drm_property_blob_get(crtc_state->post_csc_lut);
 
 	crtc_state->update_pipe = false;
+	crtc_state->update_m_n = false;
 	crtc_state->disable_lp_wm = false;
 	crtc_state->disable_cxsr = false;
 	crtc_state->update_wm_pre = false;
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 1992e7060263..a04076064f02 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -510,7 +510,7 @@ static void intel_crtc_vblank_evade_scanlines(struct intel_atomic_state *state,
 	 * M/N is double buffered on the transcoder's undelayed vblank,
 	 * so with seamless M/N we must evade both vblanks.
 	 */
-	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state))
+	if (new_crtc_state->update_m_n)
 		*min -= adjusted_mode->crtc_vblank_start - adjusted_mode->crtc_vdisplay;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 632f1f58df9e..6196ef76390b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5170,7 +5170,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
 
 	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
-		if (!fastset || !pipe_config->seamless_m_n)
+		if (!fastset || !pipe_config->update_m_n)
 			PIPE_CONF_CHECK_M_N(dp_m_n);
 	} else {
 		PIPE_CONF_CHECK_M_N(dp_m_n);
@@ -5307,7 +5307,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >= 5)
 		PIPE_CONF_CHECK_I(pipe_bpp);
 
-	if (!fastset || !pipe_config->seamless_m_n) {
+	if (!fastset || !pipe_config->update_m_n) {
 		PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
 		PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
 	}
@@ -5402,6 +5402,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 
 		crtc_state->uapi.mode_changed = true;
 		crtc_state->update_pipe = false;
+		crtc_state->update_m_n = false;
 
 		ret = drm_atomic_add_affected_connectors(&state->base,
 							 &crtc->base);
@@ -5519,13 +5520,14 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 {
 	struct drm_i915_private *i915 = to_i915(old_crtc_state->uapi.crtc->dev);
 
-	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true)) {
+	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true))
 		drm_dbg_kms(&i915->drm, "fastset requirement not met, forcing full modeset\n");
+	else
+		new_crtc_state->uapi.mode_changed = false;
 
-		return;
-	}
+	if (intel_crtc_needs_modeset(new_crtc_state))
+		new_crtc_state->update_m_n = false;
 
-	new_crtc_state->uapi.mode_changed = false;
 	if (!intel_crtc_needs_modeset(new_crtc_state))
 		new_crtc_state->update_pipe = true;
 }
@@ -6240,6 +6242,7 @@ int intel_atomic_check(struct drm_device *dev,
 			if (intel_cpu_transcoders_need_modeset(state, BIT(master))) {
 				new_crtc_state->uapi.mode_changed = true;
 				new_crtc_state->update_pipe = false;
+				new_crtc_state->update_m_n = false;
 			}
 		}
 
@@ -6252,6 +6255,7 @@ int intel_atomic_check(struct drm_device *dev,
 			if (intel_cpu_transcoders_need_modeset(state, trans)) {
 				new_crtc_state->uapi.mode_changed = true;
 				new_crtc_state->update_pipe = false;
+				new_crtc_state->update_m_n = false;
 			}
 		}
 
@@ -6259,6 +6263,7 @@ int intel_atomic_check(struct drm_device *dev,
 			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes)) {
 				new_crtc_state->uapi.mode_changed = true;
 				new_crtc_state->update_pipe = false;
+				new_crtc_state->update_m_n = false;
 			}
 		}
 	}
@@ -6437,7 +6442,7 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
 	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		hsw_set_linetime_wm(new_crtc_state);
 
-	if (new_crtc_state->seamless_m_n)
+	if (new_crtc_state->update_m_n)
 		intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state->cpu_transcoder,
 					       &new_crtc_state->dp_m_n);
 }
@@ -6573,8 +6578,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	 *
 	 * FIXME Should be synchronized with the start of vblank somehow...
 	 */
-	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
-	    (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_state)))
+	if (vrr_enabling(old_crtc_state, new_crtc_state) || new_crtc_state->update_m_n)
 		intel_crtc_update_active_timings(new_crtc_state,
 						 new_crtc_state->vrr.enable);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c21064794f32..2f35560d7e4e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1083,6 +1083,7 @@ struct intel_crtc_state {
 
 	unsigned fb_bits; /* framebuffers to flip */
 	bool update_pipe; /* can a fast modeset be performed? */
+	bool update_m_n; /* update M/N seamlessly during fastset? */
 	bool disable_cxsr;
 	bool update_wm_pre, update_wm_post; /* watermarks are updated */
 	bool fifo_changed; /* FIFO split is changed */
@@ -1195,7 +1196,6 @@ struct intel_crtc_state {
 	/* m2_n2 for eDP downclock */
 	struct intel_link_m_n dp_m2_n2;
 	bool has_drrs;
-	bool seamless_m_n;
 
 	/* PSR is supported but might not be enabled due the lack of enabled planes */
 	bool has_psr;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3faa68989d85..d4c259da3a14 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2536,7 +2536,7 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
 	int pixel_clock;
 
 	if (has_seamless_m_n(connector))
-		pipe_config->seamless_m_n = true;
+		pipe_config->update_m_n = true;
 
 	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
 		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
-- 
2.41.0

