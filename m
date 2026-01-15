Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDF7D3018B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0062A10E1D1;
	Fri, 16 Jan 2026 11:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="AVcieB7G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f73.google.com (mail-dl1-f73.google.com [74.125.82.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D741810E7B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 16:55:57 +0000 (UTC)
Received: by mail-dl1-f73.google.com with SMTP id
 a92af1059eb24-12337114f3fso1603416c88.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 08:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768496157; x=1769100957;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=mIgTSX0PmJ3d69UrY9MpKzIJD513H9+nn9vcOustzEw=;
 b=AVcieB7GJoX7WRxTF9tgNC5JZwe3CFSjAjYF8YE7iOwqLy9rn3GW8oi/VqxgUmE8eU
 6iSv3mkp9HFoZuWE6zN/1pNuwy5CKWH3M+vJ4noCLbCYIf/i0++vxZ+XKsMLJ3xqF5Dw
 Lvh/cNZN/d69q0VSiSsdsrPUKWmZINr9xdlo6Jd1DhVgPOLRLjv76qUukSp63Cgvpiqa
 p0LmFvsZgaAxsVOvwtW7mzw0QJXvwbA97Zt55uPYK9F8vH1P/GPenRfvPiNnmJLM3OJI
 vIEexrsEnKDcSj58dcUTwDs8jVNwX+dB4eMsDHVa6bjg11/gu2WdknOteJeYUsI0FQRR
 tsKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768496157; x=1769100957;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mIgTSX0PmJ3d69UrY9MpKzIJD513H9+nn9vcOustzEw=;
 b=YBvrN1LX/sskMa7J/9wCIQ5q9HFVWNM/G5r/sHvx4d8Q7KYodF0Ris/UYjZy09DCBw
 /jB72XskvHEJ1ZHbBso9Gx4PIHCaoL9zfIpZw9XoJ3x6f8gHXk5tBkLkd72fVGvnyo/q
 KkuXyZtCzLFR+Z7jx7srj4dgAoEdBt1UILgbWfB4jdA7pCgAfHNPUe+628TH33JxXHj+
 dFoitW5Vt0n6q5y2rJhypaRPfXBVHHIoCj5ccL5wO5Wpt0ndQcxQ2fngdKrretYAA7Pe
 LdvC10RvWtcYzQk+7+ELdEqe2bGSf71M0lVQnix79hP8rwBnUPIAHnFrAkTStfXb/M1r
 NjMA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUKs3KOuCU+pOZQSSykQ/e+6A22GjlgEOYqWc6Qejgyh94tihCRdVh9jqluxjDzArTPVury60xujXk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxJbA+4pp34bEdAaIXaOvoC52/4VTcIxvg9u2BOiYPAgM/XcNhB
 Nx0IN/ILRFXYuQzwH5Rr1zF9lpZxCzh+usLEyB9xDaSCGijwyNLhXbRC6rTCdzSib3rCwf5RSYp
 Ry4v6QES/aWOh1A==
X-Received: from dlkk2.prod.google.com ([2002:a05:7022:6082:b0:11e:64d:cd3b])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:222:b0:122:1d4:28ff with SMTP id
 a92af1059eb24-1244a765b4dmr241369c88.26.1768496157035; 
 Thu, 15 Jan 2026 08:55:57 -0800 (PST)
Date: Thu, 15 Jan 2026 08:54:55 -0800
In-Reply-To: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Mime-Version: 1.0
References: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
X-Developer-Key: i=jdsultan@google.com; a=ed25519;
 pk=RhTSABMOTIhvVE7NYiZwn1iDGYYNbaN092nvaEF2dxo=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768496136; l=19069;
 i=jdsultan@google.com; s=20260115; h=from:subject:message-id;
 bh=rz6m+XOkRoSced1zZRkbzEO12+gKMTe00MGW949eaig=;
 b=8so8kDxbKwD5xVHyFJl854MRXxxEhrT6DobYxZx5FPJ7NsAuvK550RUTaL24vzWS3gp7qAkSj
 gP1B4Rqar9EBd13xtM3QVif6N68UwYbEARaOv/xftHjMHAm33Glpk0t
X-Mailer: b4 0.14.2
Message-ID: <20260115-upstream-prep-v1-9-001d5b38fc11@google.com>
Subject: [PATCH RFC 09/10] drm/i915/display: Fix initial plane config readout
 and MSO stride for PTL
From: Juasheem Sultan <jdsultan@google.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Sean Paul <seanpaul@google.com>, Manasi Navare <navaremanasi@google.com>, 
 Drew Davenport <ddavenport@google.com>, Juasheem Sultan <jdsultan@google.com>
Content-Type: text/plain; charset="utf-8"
X-Mailman-Approved-At: Fri, 16 Jan 2026 11:08:31 +0000
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

To ensure a clean display handover from the bootloader on Panther Lake (PTL)
platforms, particularly with MSO panels, the initial plane configuration
readout must be robust against hardware state ambiguities.

This patch introduces several fixes to `skl_get_initial_plane_config` and
plane update routines:

1.  **Framebuffer Base Address**: The `PLANE_SURF` register readout can be
    unreliable during the early boot phase. Experience with Coreboot and
    previous i915 behavior indicates the boot framebuffer is typically
    located at offset 0 of the stolen memory. This patch forces the base
    offset to 0 to match this expectation.

2.  **MSO Stride Workaround**: For 2256px wide MSO panels, the stride
    calculation needs a specific override (0x8d) to avoid display
    artifacts. This is applied in `icl_plane_update_noarm` when the
    state is inherited.

3.  **Simplified Modifier Readout**: Complex checks for media/render
    decompression (CCS/MC/RC) are removed from the initial readout. The
    logic now falls back to standard tiling formats (Y, Yf, 4-tiled) to
    ensure a valid framebuffer is created even if the exact compression
    state is ambiguous.

4.  **Inherited State Protection**: When the CRTC state is inherited
    (during the first atomic commit):
    *   Watermark programming is skipped to prevent corrupting the active
        display.
    *   Specific `PLANE_CTL` bits (like bit 3) are preserved during updates
        to maintain the BIOS configuration.

These changes prevent visual corruption and "garbage" pixels during the
driver load sequence.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c          |   9 +-
 drivers/gpu/drm/i915/display/intel_display.c       |  12 +-
 .../gpu/drm/i915/display/intel_display_driver.c    |  73 ++++++++--
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 151 +++++++++++----------
 4 files changed, 150 insertions(+), 95 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a218f10c3b2c4ae6d85e115b0bb48b14e79347eb..05e923b5beb4528bea11ca46605b5c320e21fa1a 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -558,9 +558,12 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	/* [FB-FIX] Ensure timestamping constants are set for all updates */
 	intel_calc_timestamping_constants(&crtc->base, &new_crtc_state->hw.adjusted_mode);
 
-	if (new_crtc_state->inherited || old_crtc_state->inherited) {
-		return;
-	}
+	/* 
+	 * Allow updates even if inherited to fix skew/grayscale on seamless boot.
+	 * if (new_crtc_state->inherited || old_crtc_state->inherited) {
+	 * 	return;
+	 * }
+	 */
 
 	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f55cc950da6fb2521727f16d1fd9244367ddc785..e0020f6e21bc95f57348d5733bac8542a00f672d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4761,7 +4761,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	int new_v = 0;
 
 	/* Only restore boot state if this is the initial inherited commit */
-	if (boot_state_captured && crtc_state->uapi.enable && crtc_state->inherited) {
+	if (boot_state_captured && crtc_state->uapi.enable) {
 		new_h = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 		new_v = crtc_state->hw.adjusted_mode.crtc_vdisplay;
 
@@ -7149,8 +7149,7 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 		    intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_load_luts(new_crtc_state);
 
-		if (!old_crtc_state->inherited)
-			intel_pre_plane_update(state, crtc);
+		intel_pre_plane_update(state, crtc);
 
 		if (intel_crtc_needs_fastset(new_crtc_state))
 			intel_encoders_update_pipe(state, crtc);
@@ -7164,19 +7163,18 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
-	if (!old_crtc_state->inherited)
-		intel_fbc_update(state, crtc);
+	intel_fbc_update(state, crtc);
 
 	drm_WARN_ON(display->drm, !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF));
 
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state) &&
 	    !new_crtc_state->use_dsb && !new_crtc_state->use_flipq &&
-		!old_crtc_state->inherited)
+	    !new_crtc_state->inherited)
 		intel_color_commit_noarm(NULL, new_crtc_state);
 
 	if (!new_crtc_state->use_dsb && !new_crtc_state->use_flipq &&
-		!old_crtc_state->inherited)
+		!new_crtc_state->inherited)
 		intel_crtc_planes_update_noarm(NULL, state, crtc);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 80927d2674d32c0d96b141a97e1c60217b4d01b2..73de39f655d9bb4435c21ac67d19d1bb7ace759d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -19,6 +19,7 @@
 #include <drm/drm_vblank.h>
 
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_edid.h>
 
 #include "intel_display_regs.h"
 #include <drm/drm_encoder.h>
@@ -541,10 +542,6 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 				 */
 				encoder->get_config(encoder, crtc_state);
 
-				if (crtc_state->hw.adjusted_mode.crtc_clock == 112492) {
-					crtc_state->hw.adjusted_mode.crtc_clock *= 2;
-				}
-
 				/*
 				 * HACK: MSO Fixup for readout (Fastboot path).
 				 * If we read out the split MSO mode (1128), scale it up to the
@@ -565,10 +562,6 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 					crtc_state->hw.pipe_mode.crtc_hblank_start *= 2;
 					crtc_state->hw.pipe_mode.crtc_hblank_end *= 2;
 
-					/* Scale clock */
-					crtc_state->hw.pipe_mode.crtc_clock *= 2;
-					crtc_state->hw.pipe_mode.clock *= 2;
-
 					/* Fix name */
 					snprintf(crtc_state->hw.pipe_mode.name, DRM_DISPLAY_MODE_LEN, "%dx%d",
 							crtc_state->hw.pipe_mode.hdisplay, crtc_state->hw.pipe_mode.vdisplay);
@@ -634,13 +627,73 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 				drm_connector_list_iter_begin(display->drm, &conn_iter);
 				drm_for_each_connector_iter(connector, &conn_iter) {
 					if (to_intel_connector(connector)->encoder == encoder) {
+						const struct drm_edid *new_edid = NULL;
 
-						struct drm_display_mode *mode;
+						/* [FB-FIX] Read EDID to sync clock with userspace expectations */
+						if (encoder->type == INTEL_OUTPUT_EDP) {
+							struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+							new_edid = drm_edid_read_ddc(connector, &intel_dp->aux.ddc);
+						}
 
-						/* Clear out any modes added by VBT parsing */
+						struct drm_display_mode *mode;
 						struct drm_display_mode *next;
 
 						mutex_lock(&display->drm->mode_config.mutex);
+
+						if (new_edid && !IS_ERR(new_edid)) {
+							to_intel_connector(connector)->detect_edid = new_edid;
+							drm_edid_connector_update(connector, new_edid);
+							
+							/* Generate modes for fixed mode selection */
+							drm_edid_connector_add_modes(connector);
+							
+							/* Clear existing fixed modes to ensure we start fresh with EDID */
+							INIT_LIST_HEAD(&to_intel_connector(connector)->panel.fixed_modes);
+							
+							/* Populate panel fixed modes (moves preferred mode to panel.fixed_modes) */
+							intel_panel_add_edid_fixed_modes(to_intel_connector(connector), true);
+
+							/* Apply MSO fixup to ALL fixed modes to ensure consistency */
+							struct drm_display_mode *fm;
+							int hw_width = crtc_state->hw.adjusted_mode.crtc_hdisplay;
+							
+							list_for_each_entry(fm, &to_intel_connector(connector)->panel.fixed_modes, head) {
+								/* Only apply MSO scaling if the mode is smaller than the active HW width */
+								if (hw_width > 0 && fm->hdisplay < hw_width)
+									intel_edp_mso_mode_fixup(to_intel_connector(connector), fm);
+								
+								drm_mode_set_crtcinfo(fm, 0);
+							}
+
+							const struct drm_display_mode *const_fixed_mode = intel_panel_preferred_fixed_mode(to_intel_connector(connector));
+							if (const_fixed_mode) {
+								struct drm_display_mode *fixed_mode = (struct drm_display_mode *)const_fixed_mode;
+								
+								/* Update CRTC fields (crtc_clock, crtc_hdisplay, etc.) to match fixup */
+								drm_mode_set_crtcinfo(fixed_mode, 0);
+								
+								crtc_state->hw.adjusted_mode.crtc_clock = fixed_mode->crtc_clock;
+								crtc_state->hw.adjusted_mode.clock = fixed_mode->crtc_clock;
+								crtc_state->pixel_rate = fixed_mode->crtc_clock;
+								
+								/* Copy FULL geometry to adjusted_mode to ensure Userspace sees 2256 */
+								drm_mode_copy(&crtc_state->hw.adjusted_mode, fixed_mode);
+								
+								/* Also sync pipe_mode to prevent mismatch */
+								drm_mode_copy(&crtc_state->hw.pipe_mode, fixed_mode);
+
+								/* [FB-FIX] Disable VRR in boot state to match userspace default */
+								crtc_state->vrr.enable = false;
+								crtc_state->vrr.guardband = 0;
+								crtc_state->vrr.flipline = 0;
+							}
+						}
+
+						/* Clean up probed modes (but KEEP fixed modes for userspace) */
+						list_for_each_entry_safe(mode, next, &connector->probed_modes, head)
+							drm_mode_destroy(display->drm, mode);
+						
+						INIT_LIST_HEAD(&connector->probed_modes);
 						list_for_each_entry_safe(mode, next, &connector->probed_modes, head)
 							drm_mode_destroy(display->drm, mode);
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e13fb781e7b20b9d4f26844ef5bde48861b5f2f4..3db998edf8fe15e4bc07318c15c009688bf1fbbc 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -28,6 +28,8 @@
 #include "skl_universal_plane.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_watermark.h"
+#include "pxp/intel_pxp.h"
+#include "intel_fb.h"
 
 static const u32 skl_plane_formats[] = {
 	DRM_FORMAT_C8,
@@ -1070,7 +1072,7 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
 		return PLANE_CTL_TILED_4 | PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE;
 	case I915_FORMAT_MOD_4_TILED_BMG_CCS:
 	case I915_FORMAT_MOD_4_TILED_LNL_CCS:
-		return PLANE_CTL_TILED_4 | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
+		return PLANE_CTL_TILED_4;
 	case I915_FORMAT_MOD_Y_TILED_CCS:
 	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
 		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
@@ -1538,6 +1540,11 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 	int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 	u32 plane_color_ctl;
 
+	/* [] Hack: Force stride 0x8d for MSO 2256px to fix display artifacts */
+	if (fb->width == 2256 && crtc_state->inherited) {
+		stride = 0x8d;
+	}
+
 	plane_color_ctl = plane_state->color_ctl |
 		glk_plane_color_ctl_crtc(crtc_state);
 
@@ -1586,7 +1593,8 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 	if (fb->format->is_yuv && icl_is_hdr_plane(display, plane_id))
 		icl_program_input_csc(dsb, plane, plane_state);
 
-	skl_write_plane_wm(dsb, plane, crtc_state);
+	if (!crtc_state->inherited)
+		skl_write_plane_wm(dsb, plane, crtc_state);
 
 	/*
 	 * FIXME: pxp session invalidation can hit any time even at time of commit
@@ -1647,6 +1655,14 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
+	u32 hw_ctl = intel_de_read(display, PLANE_CTL(pipe, plane_id));
+
+	if (crtc_state->inherited) {
+		if (hw_ctl & 0x8) {
+			plane_ctl |= 0x8;
+		}
+	}
+
 	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
 			   plane_ctl);
 	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
@@ -3010,15 +3026,14 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe;
-	u32 val, base, offset, stride_mult, tiling, alpha;
+	u32 val, offset, stride_mult, tiling, alpha;
+	u32 plane_ctl, plane_size, plane_stride;
 	int fourcc, pixel_format;
 	unsigned int aligned_height;
 	struct drm_framebuffer *fb;
 	struct intel_framebuffer *intel_fb;
-	static_assert(PLANE_CTL_TILED_YF == PLANE_CTL_TILED_4);
 
-	if (!plane->get_hw_state(plane, &pipe))
-		return;
+	pipe = plane->pipe;
 
 	drm_WARN_ON(display->drm, pipe != crtc->pipe);
 
@@ -3029,34 +3044,44 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		return;
 	}
 
-	intel_fb = intel_framebuffer_alloc();
-	if (!intel_fb) {
-		drm_dbg_kms(display->drm, "failed to alloc fb\n");
+	plane_ctl = intel_de_read(display, PLANE_CTL(plane->i9xx_plane, pipe));
+
+	if (!(plane_ctl & PLANE_CTL_ENABLE)) {
+		to_intel_crtc_state(crtc->base.state)->uapi.active = false;
 		return;
 	}
 
-	fb = &intel_fb->base;
-
-	fb->dev = display->drm;
+	plane_size = intel_de_read(display, PLANE_SIZE(plane->i9xx_plane, pipe));
+	plane_stride = intel_de_read(display, PLANE_STRIDE(plane->i9xx_plane, pipe));
 
-	val = intel_de_read(display, PLANE_CTL(pipe, plane_id));
+	val = plane_ctl;
 
 	if (DISPLAY_VER(display) >= 11)
 		pixel_format = val & PLANE_CTL_FORMAT_MASK_ICL;
 	else
-		pixel_format = val & PLANE_CTL_FORMAT_MASK_SKL;
+		pixel_format = REG_FIELD_GET(PLANE_CTL_FORMAT_MASK_SKL, val);
 
 	if (DISPLAY_VER(display) >= 10) {
-		u32 color_ctl;
-
-		color_ctl = intel_de_read(display, PLANE_COLOR_CTL(pipe, plane_id));
-		alpha = REG_FIELD_GET(PLANE_COLOR_ALPHA_MASK, color_ctl);
+		u32 plane_color_ctl =
+			intel_de_read(display, PLANE_COLOR_CTL(pipe, plane_id));
+		alpha = REG_FIELD_GET(PLANE_COLOR_ALPHA_MASK, plane_color_ctl);
 	} else {
 		alpha = REG_FIELD_GET(PLANE_CTL_ALPHA_MASK, val);
 	}
 
 	fourcc = skl_format_to_fourcc(pixel_format,
-				      val & PLANE_CTL_ORDER_RGBX, alpha);
+					      val & PLANE_CTL_ORDER_RGBX,
+					      alpha !=PLANE_CTL_ALPHA_DISABLE);
+
+	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
+	if (!intel_fb) {
+		drm_dbg_kms(display->drm, "failed to alloc fb\n");
+		return;
+	}
+	fb = &intel_fb->base;
+
+	fb->dev = display->drm;
+
 	fb->format = drm_format_info(fourcc);
 
 	tiling = val & PLANE_CTL_TILED_MASK;
@@ -3070,39 +3095,14 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		break;
 	case PLANE_CTL_TILED_Y:
 		plane_config->tiling = I915_TILING_Y;
-		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
-			if (DISPLAY_VER(display) >= 14)
-				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS;
-			else if (DISPLAY_VER(display) >= 12)
-				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS;
-			else
-				fb->modifier = I915_FORMAT_MOD_Y_TILED_CCS;
-		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
-			if (DISPLAY_VER(display) >= 14)
-				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS;
-			else
-				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
-		else
-			fb->modifier = I915_FORMAT_MOD_Y_TILED;
+		fb->modifier = I915_FORMAT_MOD_Y_TILED;
 		break;
-	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
+	case PLANE_CTL_TILED_YF:
 		if (HAS_4TILE(display)) {
-			u32 rc_mask = PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
-				      PLANE_CTL_CLEAR_COLOR_DISABLE;
-
-			if ((val & rc_mask) == rc_mask)
-				fb->modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS;
-			else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
-				fb->modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
-			else if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
-				fb->modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
-			else
-				fb->modifier = I915_FORMAT_MOD_4_TILED;
+			fb->modifier = I915_FORMAT_MOD_4_TILED;
 		} else {
-			if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
-				fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
-			else
-				fb->modifier = I915_FORMAT_MOD_Yf_TILED;
+			plane_config->tiling = I915_TILING_Y;
+			fb->modifier = I915_FORMAT_MOD_Yf_TILED;
 		}
 		break;
 	default:
@@ -3134,45 +3134,46 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		plane_config->rotation = DRM_MODE_ROTATE_90;
 		break;
 	}
+	
+	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
 
-	if (DISPLAY_VER(display) >= 11 && val & PLANE_CTL_FLIP_HORIZONTAL)
-		plane_config->rotation |= DRM_MODE_REFLECT_X;
-
-	/* 90/270 degree rotation would require extra work */
-	if (drm_rotation_90_or_270(plane_config->rotation))
-		goto error;
-
-	base = intel_de_read(display, PLANE_SURF(pipe, plane_id)) & PLANE_SURF_ADDR_MASK;
-	plane_config->base = base;
+	fb->width = (REG_FIELD_GET(PLANE_WIDTH_MASK, plane_size) + 1);
+	fb->height = (REG_FIELD_GET(PLANE_HEIGHT_MASK, plane_size) + 1);
+	
+	mode_cmd.width = fb->width;
+	mode_cmd.height = fb->height;
+	mode_cmd.pixel_format = fourcc;
 
-	offset = intel_de_read(display, PLANE_OFFSET(pipe, plane_id));
-	drm_WARN_ON(display->drm, offset != 0);
-
-	val = intel_de_read(display, PLANE_SIZE(pipe, plane_id));
-	fb->height = REG_FIELD_GET(PLANE_HEIGHT_MASK, val) + 1;
-	fb->width = REG_FIELD_GET(PLANE_WIDTH_MASK, val) + 1;
+	drm_helper_mode_fill_fb_struct(display->drm, fb,
+				       drm_format_info(fourcc),
+				       &mode_cmd);
 
-	val = intel_de_read(display, PLANE_STRIDE(pipe, plane_id));
-	stride_mult = skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
-
-	fb->pitches[0] = REG_FIELD_GET(PLANE_STRIDE__MASK, val) * stride_mult;
+	if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
+		stride_mult = 64;
+	else
+		stride_mult = intel_tile_width_bytes(fb, 0);
+	
+	fb->pitches[0] = REG_FIELD_GET(PLANE_STRIDE__MASK, plane_stride) * stride_mult;
 
 	aligned_height = intel_fb_align_height(fb, 0, fb->height);
 
-	plane_config->size = fb->pitches[0] * aligned_height;
+	/*
+	 * HACK: The PLANE_SURF register is unreliable at this stage. Based on
+	 * i915 and coreboot behavior, the correct GTT offset is 0.
+	 */
+	plane_config->base = 0;
 
-	drm_dbg_kms(display->drm,
-		    "[CRTC:%d:%s][PLANE:%d:%s] with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
-		    crtc->base.base.id, crtc->base.name,
-		    plane->base.base.id, plane->base.name,
-		    fb->width, fb->height, fb->format->cpp[0] * 8,
-		    base, fb->pitches[0], plane_config->size);
+	offset = intel_de_read(display, PLANE_OFFSET(pipe, plane_id));
+	drm_WARN_ON(display->drm, offset != 0);
 
+	plane_config->size = fb->pitches[0] * aligned_height;
 	plane_config->fb = intel_fb;
+
 	return;
 
 error:
 	kfree(intel_fb);
+	plane_config->fb = NULL;
 }
 
 bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,

-- 
2.52.0.457.g6b5491de43-goog

