Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C724A0B4D9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:54:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FDA10E634;
	Mon, 13 Jan 2025 10:54:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l6mLGw5E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781DB10E634;
 Mon, 13 Jan 2025 10:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736765658; x=1768301658;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CY/w3S2A+bDb1gbg1tPz/ftIR8Px+a9MFOC9K6SDt1M=;
 b=l6mLGw5Ett0lCYbq3ZMoKGXBSb4hUA1mT6rigFWomFFowt7foen5jAcW
 x5qrxSN7gMkpqAdA6Qmhq2JY3J7n9MASK6FnL9jfqqhDhtj9/8pTos3hQ
 KxFjeq5DIn9leFzZY0DBbnEXeKwQJekSJBQhIQRhYFYc0MPPa5qLOoHGQ
 i3bDpteVcLJn+zA/ziUBdvD0RMOzSNmLn0y+uSt0SxHKookNhVoQ2cx1+
 21fL9e0gVDkpZDs82duG1/P+tClNxXKKgny0gmmsxlmUkdd4H3m16f7ju
 TPN6E7/m4XAobC+ZMF+K9UWCxyh4EsIhh5uIfE7FNGpf2Vk0RuVehuqyM A==;
X-CSE-ConnectionGUID: jyqHR67qQUa7qEgNfHGYGg==
X-CSE-MsgGUID: uiqWQh6MTkuNxUBjqnjyyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="54565145"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="54565145"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:54:18 -0800
X-CSE-ConnectionGUID: f0bdsnWRQr+o9f9Jt18r1Q==
X-CSE-MsgGUID: oaQVboaUSZqNZmPpN1BMCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104955085"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa007.jf.intel.com with ESMTP; 13 Jan 2025 02:54:16 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v8 4/6] drm/i915/display: Enable the second scaler for
 sharpness
Date: Mon, 13 Jan 2025 16:19:34 +0530
Message-Id: <20250113104936.1338290-5-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250113104936.1338290-1-nemesa.garg@intel.com>
References: <20250113104936.1338290-1-nemesa.garg@intel.com>
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

As only second scaler can be used for sharpness check if it
is available and also check if panel fitting is also not enabled,
then set the sharpness. Panel fitting will have the preference
over sharpness property.

v2: Add the panel fitting check before enabling sharpness
v3: Reframe commit message[Arun]
v4: Replace string based comparison with plane_state[Jani]
v5: Rebase
v6: Fix build issue
v7: Remove scaler id from verify_crtc_state[Ankit]
v8:Rebase

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c     |  7 ++++
 drivers/gpu/drm/i915/display/intel_casf.h     |  1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  8 ++--
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_pfit.c     |  6 +++
 drivers/gpu/drm/i915/display/skl_scaler.c     | 41 +++++++++++++------
 6 files changed, 49 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 773abaad74ca..aff7aa6d3eb3 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -101,6 +101,13 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state)
 	skl_scaler_setup_casf(crtc_state);
 }
 
+int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
+{
+	crtc_state->hw.casf_params.need_scaler = true;
+
+	return 0;
+}
+
 static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
 					  u16 coefficient)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
index 8e0b67a2fd99..568e0f8083eb 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.h
+++ b/drivers/gpu/drm/i915/display/intel_casf.h
@@ -12,5 +12,6 @@ struct intel_crtc_state;
 
 void intel_casf_enable(struct intel_crtc_state *crtc_state);
 void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
+int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_CASF_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 413b7fd7e287..beef3a76eba4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2137,7 +2137,7 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 	set_bit(POWER_DOMAIN_PIPE(pipe), mask->bits);
 	set_bit(POWER_DOMAIN_TRANSCODER(cpu_transcoder), mask->bits);
 	if (crtc_state->pch_pfit.enabled ||
-	    crtc_state->pch_pfit.force_thru)
+	    crtc_state->pch_pfit.force_thru || crtc_state->hw.casf_params.need_scaler)
 		set_bit(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe), mask->bits);
 
 	drm_for_each_encoder_mask(encoder, &dev_priv->drm,
@@ -2386,7 +2386,7 @@ static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
 	 * PF-ID we'll need to adjust the pixel_rate here.
 	 */
 
-	if (!crtc_state->pch_pfit.enabled)
+	if (!crtc_state->pch_pfit.enabled || crtc_state->hw.casf_params.need_scaler)
 		return pixel_rate;
 
 	drm_rect_init(&src, 0, 0,
@@ -4584,7 +4584,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 
 	if (DISPLAY_VER(dev_priv) >= 9) {
 		if (intel_crtc_needs_modeset(crtc_state) ||
-		    intel_crtc_needs_fastset(crtc_state)) {
+		    intel_crtc_needs_fastset(crtc_state) ||
+		    crtc_state->hw.casf_params.need_scaler) {
 			ret = skl_update_scaler_crtc(crtc_state);
 			if (ret)
 				return ret;
@@ -5750,6 +5751,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
+		PIPE_CONF_CHECK_BOOL(hw.casf_params.need_scaler);
 	}
 
 #undef PIPE_CONF_CHECK_X
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7cb58bf56907..e5d28377bd0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -939,6 +939,7 @@ struct intel_casf {
 #define SCALER_FILTER_NUM_TAPS 7
 	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
 	u8 win_size;
+	bool need_scaler;
 };
 
 void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 4ee03d9d14ad..dce86fb22c70 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -183,6 +183,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_crtc_state *old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
 	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
 	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
 	int ret, x, y, width, height;
@@ -193,6 +196,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
 		return 0;
 
+	if (old_crtc_state->hw.casf_params.need_scaler)
+		return -EINVAL;
+
 	switch (conn_state->scaling_mode) {
 	case DRM_MODE_SCALE_CENTER:
 		width = pipe_src_w;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 0718210de910..40584bc19dbb 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -271,7 +271,8 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 				 drm_rect_width(&crtc_state->pipe_src),
 				 drm_rect_height(&crtc_state->pipe_src),
 				 width, height, NULL, 0,
-				 crtc_state->pch_pfit.enabled);
+				 crtc_state->pch_pfit.enabled ||
+				 crtc_state->hw.casf_params.need_scaler);
 }
 
 /**
@@ -310,7 +311,9 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 }
 
 static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
-				 struct intel_crtc *crtc)
+				 struct intel_crtc *crtc,
+				 struct intel_plane_state *plane_state,
+				 bool casf_scaler)
 {
 	int i;
 
@@ -318,6 +321,11 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
 		if (scaler_state->scalers[i].in_use)
 			continue;
 
+		if (!plane_state) {
+			if (casf_scaler && i != 1)
+				continue;
+		}
+
 		scaler_state->scalers[i].in_use = true;
 
 		return i;
@@ -330,19 +338,23 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 				     int num_scalers_need, struct intel_crtc *crtc,
 				     const char *name, int idx,
 				     struct intel_plane_state *plane_state,
-				     int *scaler_id)
+				     int *scaler_id, bool casf_scaler)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
 	u32 mode;
 
 	if (*scaler_id < 0)
-		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
+		*scaler_id = intel_allocate_scaler(scaler_state, crtc, plane_state, casf_scaler);
 
 	if (drm_WARN(display->drm, *scaler_id < 0,
 		     "Cannot find scaler for %s:%d\n", name, idx))
 		return -EINVAL;
 
+	if (crtc_state->hw.casf_params.need_scaler)
+		mode = SKL_PS_SCALER_MODE_HQ;
+
 	/* set scaler mode */
 	if (plane_state && plane_state->hw.fb &&
 	    plane_state->hw.fb->format->is_yuv &&
@@ -462,7 +474,8 @@ static int setup_crtc_scaler(struct intel_atomic_state *state,
 	return intel_atomic_setup_scaler(scaler_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "CRTC", crtc->base.base.id,
-					 NULL, &scaler_state->scaler_id);
+					 NULL, &scaler_state->scaler_id,
+					 crtc_state->hw.casf_params.need_scaler);
 }
 
 static int setup_plane_scaler(struct intel_atomic_state *state,
@@ -497,7 +510,8 @@ static int setup_plane_scaler(struct intel_atomic_state *state,
 	return intel_atomic_setup_scaler(scaler_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "PLANE", plane->base.base.id,
-					 plane_state, &plane_state->scaler_id);
+					 plane_state, &plane_state->scaler_id,
+					 crtc_state->hw.casf_params.need_scaler);
 }
 
 /**
@@ -889,16 +903,19 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 			continue;
 
 		id = i;
-		crtc_state->pch_pfit.enabled = true;
+
+		if (!crtc_state->hw.casf_params.need_scaler)
+			crtc_state->pch_pfit.enabled = true;
 
 		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, i));
 		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, i));
 
-		drm_rect_init(&crtc_state->pch_pfit.dst,
-			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
-			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
-			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
-			      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
+		if (!crtc_state->hw.casf_params.need_scaler)
+			drm_rect_init(&crtc_state->pch_pfit.dst,
+				      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
+				      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
+				      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
+				      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
 
 		scaler_state->scalers[i].in_use = true;
 		break;
-- 
2.25.1

