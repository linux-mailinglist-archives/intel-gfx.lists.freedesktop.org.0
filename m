Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C23AA3BDA3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 12:59:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C19E210E263;
	Wed, 19 Feb 2025 11:59:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZWXn/9q2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DA5A10E7BF;
 Wed, 19 Feb 2025 11:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739966387; x=1771502387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uaDPNvoQkAJLgPRo5hvl/aNF58zcDvtos2r6gtPjuzc=;
 b=ZWXn/9q2JgAm2Su0O0dnZliOXrbCo2slVU1jR/1AKmhyoB8oLGEHcOpf
 kQZ3B69PEStYWjBtjz5tHJbfyorTPZAd1GhWI4zVFKHJIwcmDItXk1KeU
 jrn2+VSEr8HzSCBWGBWssQdfqPdlUWj40ESy5er2p3smGMNMQ0hcQ4Vqt
 CUdNq6ZCtctPJowu064vkbUQJhJJfPHqAwIunZjYwawWqFOIVCOOlvmKB
 WM3U9t8Jhen0Qc2DjVzNmPvnsIoGm0w5RIayYWsq1jgonaocNZLsQCxnx
 M9+ITXEp8dY54OU3aVXnxAlwf9zptvH7iwIHdnvHT+6zUwDBiizt0lysP w==;
X-CSE-ConnectionGUID: IOdKsPG4RmaeZcqTcBDO6Q==
X-CSE-MsgGUID: WCWe06c/RwmnFz+evh7YHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="52103088"
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="52103088"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 03:59:45 -0800
X-CSE-ConnectionGUID: 7ViNQWJfSl+gYaQ0NQc1EQ==
X-CSE-MsgGUID: J5l1HL8qQYyPMt/ot8d5yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="114545016"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa006.fm.intel.com with ESMTP; 19 Feb 2025 03:59:43 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 4/6] drm/i915/display: Configure the second scaler for
 sharpness
Date: Wed, 19 Feb 2025 17:23:57 +0530
Message-Id: <20250219115359.2320992-5-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250219115359.2320992-1-nemesa.garg@intel.com>
References: <20250219115359.2320992-1-nemesa.garg@intel.com>
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
v8: Change the patch title. Add code comment.
    Move the config part in patch#6. [Ankit]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_casf.c     | 20 +++++++++++
 drivers/gpu/drm/i915/display/intel_casf.h     |  6 ++++
 drivers/gpu/drm/i915/display/intel_display.c  |  8 +++--
 .../drm/i915/display/intel_display_device.h   |  1 +
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_pfit.c     |  8 +++++
 drivers/gpu/drm/i915/display/skl_scaler.c     | 36 +++++++++++++------
 7 files changed, 66 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
index 989219e698c6..f3c5a3f11128 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.c
+++ b/drivers/gpu/drm/i915/display/intel_casf.c
@@ -113,6 +113,26 @@ void intel_casf_enable(struct intel_crtc_state *crtc_state)
 	skl_scaler_setup_casf(crtc_state);
 }
 
+bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->hw.casf_params.casf_enable)
+		return true;
+
+	return false;
+}
+
+int intel_casf_compute_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!HAS_CASF(display))
+		return -EINVAL;
+
+	crtc_state->hw.casf_params.casf_enable = true;
+
+	return 0;
+}
+
 static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
 					  u16 coefficient)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
index 840208b277f8..6ab30af9d959 100644
--- a/drivers/gpu/drm/i915/display/intel_casf.h
+++ b/drivers/gpu/drm/i915/display/intel_casf.h
@@ -12,5 +12,11 @@ struct intel_crtc_state;
 
 void intel_casf_enable(struct intel_crtc_state *crtc_state);
 void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
+int intel_casf_compute_config(struct intel_crtc_state *crtc_state);
+bool intel_casf_needs_scaler(const struct intel_crtc_state *crtc_state);
+void intel_filter_lut_load(struct intel_crtc *crtc,
+			   const struct intel_crtc_state *crtc_state);
+bool intel_casf_strength_changed(struct intel_crtc_state *new_crtc_state,
+				 const struct intel_crtc_state *old_crtc_state);
 
 #endif /* __INTEL_CASF_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0f3279cfa0f1..0fe710e13ac1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2028,7 +2028,7 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 	set_bit(POWER_DOMAIN_PIPE(pipe), mask->bits);
 	set_bit(POWER_DOMAIN_TRANSCODER(cpu_transcoder), mask->bits);
 	if (crtc_state->pch_pfit.enabled ||
-	    crtc_state->pch_pfit.force_thru)
+	    crtc_state->pch_pfit.force_thru || intel_casf_needs_scaler(crtc_state))
 		set_bit(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe), mask->bits);
 
 	drm_for_each_encoder_mask(encoder, &dev_priv->drm,
@@ -2280,7 +2280,7 @@ static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_state)
 	 * PF-ID we'll need to adjust the pixel_rate here.
 	 */
 
-	if (!crtc_state->pch_pfit.enabled)
+	if (!crtc_state->pch_pfit.enabled || intel_casf_needs_scaler(crtc_state))
 		return pixel_rate;
 
 	drm_rect_init(&src, 0, 0,
@@ -4407,7 +4407,8 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 
 	if (DISPLAY_VER(dev_priv) >= 9) {
 		if (intel_crtc_needs_modeset(crtc_state) ||
-		    intel_crtc_needs_fastset(crtc_state)) {
+		    intel_crtc_needs_fastset(crtc_state) ||
+		    intel_casf_needs_scaler(crtc_state)) {
 			ret = skl_update_scaler_crtc(crtc_state);
 			if (ret)
 				return ret;
@@ -5576,6 +5577,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
+		PIPE_CONF_CHECK_BOOL(hw.casf_params.casf_enable);
 	}
 
 #undef PIPE_CONF_CHECK_X
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index fc33791f02b9..364bc4511102 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -190,6 +190,7 @@ struct intel_display_platforms {
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
 #define HAS_AS_SDP(__display)		(DISPLAY_VER(__display) >= 13)
 #define HAS_CMRR(__display)		(DISPLAY_VER(__display) >= 20)
+#define HAS_CASF(__display)             (DISPLAY_VER(__display) >= 20)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define I915_HAS_HOTPLUG(__display)	(DISPLAY_INFO(__display)->has_hotplug)
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index bb902cb7561f..1320ff888fdd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -936,6 +936,7 @@ struct intel_casf {
 #define SCALER_FILTER_NUM_TAPS 7
 	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
 	u8 win_size;
+	bool casf_enable;
 };
 
 void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 4ee03d9d14ad..7b18da0d7133 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -5,6 +5,7 @@
 
 #include "i915_reg.h"
 #include "i915_utils.h"
+#include "intel_casf.h"
 #include "intel_display_core.h"
 #include "intel_display_driver.h"
 #include "intel_display_types.h"
@@ -183,6 +184,9 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	struct intel_atomic_state *state = to_intel_atomic_state(conn_state->state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_crtc_state *old_crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
 	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
 	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
 	int ret, x, y, width, height;
@@ -193,6 +197,10 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
 		return 0;
 
+	/* If CASF enabled then pfit cannot be enabled */
+	if (intel_casf_needs_scaler(old_crtc_state))
+		return -EINVAL;
+
 	switch (conn_state->scaling_mode) {
 	case DRM_MODE_SCALE_CENTER:
 		width = pipe_src_w;
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 9c6259ed971c..9d687298a9a6 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -5,6 +5,7 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_casf.h"
 #include "intel_de.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
@@ -271,7 +272,8 @@ int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state)
 				 drm_rect_width(&crtc_state->pipe_src),
 				 drm_rect_height(&crtc_state->pipe_src),
 				 width, height, NULL, 0,
-				 crtc_state->pch_pfit.enabled);
+				 crtc_state->pch_pfit.enabled ||
+				 intel_casf_needs_scaler(crtc_state));
 }
 
 /**
@@ -310,7 +312,9 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 }
 
 static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
-				 struct intel_crtc *crtc)
+				 struct intel_crtc *crtc,
+				 struct intel_plane_state *plane_state,
+				 bool casf_scaler)
 {
 	int i;
 
@@ -318,6 +322,12 @@ static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
 		if (scaler_state->scalers[i].in_use)
 			continue;
 
+		/* CASF needs second scaler */
+		if (!plane_state) {
+			if (casf_scaler && i != 1)
+				continue;
+		}
+
 		scaler_state->scalers[i].in_use = true;
 
 		return i;
@@ -368,7 +378,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 				     int num_scalers_need, struct intel_crtc *crtc,
 				     const char *name, int idx,
 				     struct intel_plane_state *plane_state,
-				     int *scaler_id)
+				     int *scaler_id, bool casf_scaler)
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
@@ -377,12 +387,15 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 	int vscale = 0;
 
 	if (*scaler_id < 0)
-		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
+		*scaler_id = intel_allocate_scaler(scaler_state, crtc, plane_state, casf_scaler);
 
 	if (drm_WARN(display->drm, *scaler_id < 0,
 		     "Cannot find scaler for %s:%d\n", name, idx))
 		return -EINVAL;
 
+	if (casf_scaler)
+		mode = SKL_PS_SCALER_MODE_HQ;
+
 	/* set scaler mode */
 	if (plane_state && plane_state->hw.fb &&
 	    plane_state->hw.fb->format->is_yuv &&
@@ -512,7 +525,8 @@ static int setup_crtc_scaler(struct intel_atomic_state *state,
 	return intel_atomic_setup_scaler(crtc_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "CRTC", crtc->base.base.id,
-					 NULL, &scaler_state->scaler_id);
+					 NULL, &scaler_state->scaler_id,
+					 intel_casf_needs_scaler(crtc_state));
 }
 
 static int setup_plane_scaler(struct intel_atomic_state *state,
@@ -547,7 +561,8 @@ static int setup_plane_scaler(struct intel_atomic_state *state,
 	return intel_atomic_setup_scaler(crtc_state,
 					 hweight32(scaler_state->scaler_users),
 					 crtc, "PLANE", plane->base.base.id,
-					 plane_state, &plane_state->scaler_id);
+					 plane_state, &plane_state->scaler_id,
+					 intel_casf_needs_scaler(crtc_state));
 }
 
 /**
@@ -938,16 +953,15 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 			continue;
 
 		id = i;
-		crtc_state->pch_pfit.enabled = true;
 
 		pos = intel_de_read(display, SKL_PS_WIN_POS(crtc->pipe, i));
 		size = intel_de_read(display, SKL_PS_WIN_SZ(crtc->pipe, i));
 
 		drm_rect_init(&crtc_state->pch_pfit.dst,
-			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
-			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
-			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
-			      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
+				REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
+				REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
+				REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
+				REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
 
 		scaler_state->scalers[i].in_use = true;
 		break;
-- 
2.25.1

