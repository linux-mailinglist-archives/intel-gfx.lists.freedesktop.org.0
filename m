Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D02BD301B2
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:08:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E8A10E869;
	Fri, 16 Jan 2026 11:08:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="EpI5aVLD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f74.google.com (mail-dl1-f74.google.com [74.125.82.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D543B10E7B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 16:55:59 +0000 (UTC)
Received: by mail-dl1-f74.google.com with SMTP id
 a92af1059eb24-123308e5e6aso2017671c88.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 08:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768496159; x=1769100959;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=s5JRvJY5PsCoSxl8fROgDvzGIXt448NqyR5cNjsxzsc=;
 b=EpI5aVLDiXlLNmn4Qm2kc9dDgrbGM4JorphCX2GfbjqPvTW/adpQE5x6Hm7XGdaagu
 +xfm701ClUPg8ZAfj9atUpC9f3rMYUPLB0qqp/SUlRZ6r7zmRDyrmm7K8yn2QNAh5A6K
 8pDkhqYVPWZ1aenPPWZzleB3swEsy4JLuW5Z/4JQY2EzSpo0JK9HDsNeKYDqCh5Yuy+n
 tGtUISziSUMCNB6AE2L/wpMCRL6B89aMHOse2rVdP6JV7kPJyn73/7qed/QpqQbZSIH5
 9lHa8UzqccfU+6eUqzlxn12zQhbi+ic4K1NYa0AvxMEqm0LIDwhN+n6iyu1BdscSam98
 ITvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768496159; x=1769100959;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=s5JRvJY5PsCoSxl8fROgDvzGIXt448NqyR5cNjsxzsc=;
 b=hlRMcjaNxH5z7IwsJjWjk70z+a1adMXccr9Rm6uur8ec/2vfK+POHKrHtANDYw107x
 z61mpNAU8Xwd7eNaZjc0Eox3kP4bwU02Yp07Fs93cwElNQws/6MoaGYHQnp/Igor+BZe
 CcB/YH/GcSjbD7iLTGt1Ikj/M1rcEe4OnQLkTVHaojZzqHtvl9VEsHmhT4fYQCWrCOjn
 Di3Lv2pt+1WU+vwGkgSzodnTVJ/eLTzDYgJZWuJ7lPUYZ60t3O2ZpK9IC8Hxx29yNkdB
 J3lwfM4CG35iMx9K3A6B+/rZD2NBFfqamDGBAJNAY2Yk7P63qrAnmU4iHNE0WpNggTiI
 dFxg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUw4fLgFvYHDUvAihoNkPYzo/O1Tlacrp37qFwweMb2dc7U0SXd+wBQzzeExWSPGjjYqVPzAA+itx4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzMZtyemBMZNI0cGQSxXKzw3UK24jU21GwbbaFbBXuZ1MagKwZ9
 wJA4SR70giAuWjFQF71ofaOtgy1xiUn7QvqV1gTRxcrdveVJgn8FlcXyhQyOeZvcDKlAfRSHCLD
 To6xm6ymTy/C+vw==
X-Received: from dlbeg15.prod.google.com ([2002:a05:7022:f8f:b0:11d:cde5:d78e])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:2489:b0:119:e56b:98bf with SMTP id
 a92af1059eb24-1244a7463eemr310413c88.38.1768496159105; 
 Thu, 15 Jan 2026 08:55:59 -0800 (PST)
Date: Thu, 15 Jan 2026 08:54:56 -0800
In-Reply-To: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Mime-Version: 1.0
References: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
X-Developer-Key: i=jdsultan@google.com; a=ed25519;
 pk=RhTSABMOTIhvVE7NYiZwn1iDGYYNbaN092nvaEF2dxo=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768496136; l=27134;
 i=jdsultan@google.com; s=20260115; h=from:subject:message-id;
 bh=dezIbvoiCye7uQM/hRB3sjNZFoTcQN+2CmZOYv4cVVo=;
 b=99mQiIDCggI9eS5aUIdeOSonL18NDX3cUuzxFRY6MYSKVpnCRipe4IY8mN0GTnPZzw6vnOeSr
 /UeQcql9++iAVP6U2xZJS1Zyp7ISJMtg0kwGhi25GNPSMLHN/TNnRXG
X-Mailer: b4 0.14.2
Message-ID: <20260115-upstream-prep-v1-10-001d5b38fc11@google.com>
Subject: [PATCH RFC 10/10] drm/i915/display: Refactor initial plane readout
 and harden boot handover
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

Refactor the initial plane configuration and atomic commit path to
ensure a seamless transition from the bootloader to the driver,
specifically targeting Panther Lake (PTL) platforms.

Key changes include:

1.  **Robust Initial Plane Readout**: Rewrote
    `skl_get_initial_plane_config` to correctly identify tiling
    modifiers (including CCS/MC variants) instead of relying on
    fallbacks. This ensures the framebuffer is created with the
    correct format layout and rotation.

2.  **Hardened Atomic Handover**: Added checks for
    `old_crtc_state->inherited` in `intel_pre_plane_update`,
    `intel_pre_update_crtc`, and `intel_old_crtc_state_disables`.
    This prevents the driver from prematurely disabling the pipe,
    updating watermarks, or touching FBC during the initial takeover,
    preserving the boot image.

3.  **Removal of Hardcoded Hacks**: Removed temporary workarounds,
    including hardcoded MSO stride (0x8d), link rate overrides
    (216000), and forced sync flags. The driver now relies on correct
    hardware readout and state persistence.

4.  **Splash Screen Preservation**: Disabled the framebuffer clear loop
    in `xe_plane_initial.c` to prevent overwriting the BIOS splash
    screen during initialization.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 195 +++++++++------------
 .../gpu/drm/i915/display/intel_display_driver.c    |  35 +---
 drivers/gpu/drm/i915/display/intel_dp.c            |  15 --
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 147 +++++++++-------
 drivers/gpu/drm/xe/display/xe_plane_initial.c      |   4 +-
 5 files changed, 167 insertions(+), 229 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e0020f6e21bc95f57348d5733bac8542a00f672d..5ba82abb7e33b2f62d595bd425a1f7a9c9c23270 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1301,7 +1301,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 		 * us to.
 		 */
 		if (!intel_initial_watermarks(state, crtc))
-			if (new_crtc_state->update_wm_pre)
+			if (new_crtc_state->update_wm_pre && !old_crtc_state->inherited)
 				intel_update_watermarks(display);
 	}
 
@@ -2967,7 +2967,7 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 		      REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1,
 		      REG_FIELD_GET(PIPESRC_HEIGHT_MASK, tmp) + 1);
 
-	/* [FB-FIX] Force pipe source size from boot state if HW readout is invalid (seamless handoff) */
+	/* Force pipe source size from boot state if HW readout is invalid (seamless handoff) */
 	if (boot_state_captured && crtc->pipe == boot_pipe &&
 	    (drm_rect_width(&pipe_config->pipe_src) <= 1 || drm_rect_height(&pipe_config->pipe_src) <= 1)) {
 		drm_rect_init(&pipe_config->pipe_src, 0, 0, boot_hdisplay, boot_vdisplay);
@@ -7149,7 +7149,8 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 		    intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_load_luts(new_crtc_state);
 
-		intel_pre_plane_update(state, crtc);
+		if (!old_crtc_state->inherited)
+			intel_pre_plane_update(state, crtc);
 
 		if (intel_crtc_needs_fastset(new_crtc_state))
 			intel_encoders_update_pipe(state, crtc);
@@ -7163,7 +7164,8 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
-	intel_fbc_update(state, crtc);
+	if (!old_crtc_state->inherited)
+		intel_fbc_update(state, crtc);
 
 	drm_WARN_ON(display->drm, !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF));
 
@@ -7275,24 +7277,17 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 }
 
 static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
-					  struct intel_crtc *crtc)
-{
-	struct intel_display *display = to_intel_display(state);
-	const struct intel_crtc_state *old_crtc_state =
-		intel_atomic_get_old_crtc_state(state, crtc);
-	const struct intel_crtc_state *new_crtc_state =
-		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_crtc *pipe_crtc;
-
-	if (old_crtc_state->inherited && new_crtc_state->uapi.active) {
-		return;
-	}
-
-	/*
-	 * We need to disable pipe CRC before disabling the pipe,
-	 * or we race against vblank off.
-	 */
-	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
+					                        struct intel_crtc *crtc)
+					  {
+					  	struct intel_display *display = to_intel_display(state);
+					  	const struct intel_crtc_state *old_crtc_state =
+					  		intel_atomic_get_old_crtc_state(state, crtc);
+					  	struct intel_crtc *pipe_crtc;
+					  
+					  	/*
+					  	 * We need to disable pipe CRC before disabling the pipe,
+					  	 * or we race against vblank off.
+					  	 */	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(old_crtc_state))
 		intel_crtc_disable_pipe_crc(pipe_crtc);
 
@@ -8649,8 +8644,8 @@ void intel_crtc_steal_state(struct intel_crtc_state *crtc_state)
 
 	/* FIX: Also populate pipe_src so pfit doesn't complain */
 	drm_rect_init(&live_crtc_state->pipe_src, 0, 0,
-		      crtc_state->hw.adjusted_mode.crtc_hdisplay,
-		      crtc_state->hw.adjusted_mode.crtc_vdisplay);
+			crtc_state->hw.adjusted_mode.crtc_hdisplay,
+			crtc_state->hw.adjusted_mode.crtc_vdisplay);
 
 	/* Capture boot state for persistence */
 	if (!boot_state_captured && (crtc_state->hw.active || crtc_state->hw.adjusted_mode.crtc_clock > 0)) {
@@ -8673,7 +8668,7 @@ void intel_crtc_steal_state(struct intel_crtc_state *crtc_state)
 		boot_csc_mode = crtc_state->csc_mode;
 		boot_linetime = crtc_state->linetime;
 
-		/* [FB-FIX] Capture Watermark and DDB state */
+		/* Capture Watermark and DDB state */
 		if (DISPLAY_VER(display) >= 9) {
 			memcpy(&boot_wm, &crtc_state->wm.skl.optimal, sizeof(boot_wm));
 			memcpy(&boot_ddb, &crtc_state->wm.skl.plane_ddb, sizeof(boot_ddb));
@@ -8700,53 +8695,45 @@ void intel_crtc_steal_state(struct intel_crtc_state *crtc_state)
 		boot_state_captured = true;
 	}
 
-		if (live_crtc_state->hw.active) {
-			/*
-			 * This is filling in the uapi.mode and creating the blob for it.
-			 * The blob is required for the initial commit to succeed.
-			 */
-			memset(&live_crtc_state->uapi.mode, 0, sizeof(live_crtc_state->uapi.mode));
-
-			struct drm_mode_modeinfo umode;
-			struct drm_property_blob *blob;
-
-			/* Manually create the mode blob to avoid triggering a modeset */
-			memset(&umode, 0, sizeof(umode));
-			umode.clock = crtc_state->hw.adjusted_mode.clock;
-			umode.hdisplay = crtc_state->hw.adjusted_mode.hdisplay;
-			umode.hsync_start = crtc_state->hw.adjusted_mode.hsync_start;
-			umode.hsync_end = crtc_state->hw.adjusted_mode.hsync_end;
-			umode.htotal = crtc_state->hw.adjusted_mode.htotal;
-			umode.hskew = crtc_state->hw.adjusted_mode.hskew;
-			umode.vdisplay = crtc_state->hw.adjusted_mode.vdisplay;
-			umode.vsync_start = crtc_state->hw.adjusted_mode.vsync_start;
-			umode.vsync_end = crtc_state->hw.adjusted_mode.vsync_end;
-			umode.vtotal = crtc_state->hw.adjusted_mode.vtotal;
-
-			/* [FB-FIX] Ensure vtotal is populated to prevent scanline divide-by-zero */
-			if (umode.vtotal == 0) {
-				umode.vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
-			}
-			if (umode.vtotal == 0) {
-				umode.vtotal = 1504; /* Fallback for MSO panel */
-			}
-
-			umode.vscan = crtc_state->hw.adjusted_mode.vscan;
-			umode.vrefresh = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
-			umode.flags = crtc_state->hw.adjusted_mode.flags;
-			umode.type = crtc_state->hw.adjusted_mode.type;
-			strncpy(umode.name, crtc_state->hw.adjusted_mode.name, DRM_DISPLAY_MODE_LEN);
-
-			blob = drm_property_create_blob(display->drm, sizeof(umode), &umode);
-			if (IS_ERR(blob)) {
-			} else {
-				/* This is the key: replace the blob without marking mode_changed */
-				drm_property_replace_blob(&live_crtc_state->uapi.mode_blob, blob);
-				drm_property_blob_put(blob);
-				drm_mode_copy(&live_crtc_state->uapi.mode, &crtc_state->hw.adjusted_mode);
-				live_crtc_state->uapi.enable = true;
-			}
-		}		/* Mark the primary plane as visible in the live state */
+	if (live_crtc_state->hw.active) {
+		/*
+		 * This is filling in the uapi.mode and creating the blob for it.
+		 * The blob is required for the initial commit to succeed.
+		 */
+		memset(&live_crtc_state->uapi.mode, 0, sizeof(live_crtc_state->uapi.mode));
+
+		struct drm_mode_modeinfo umode;
+		struct drm_property_blob *blob;
+
+		/* Manually create the mode blob to avoid triggering a modeset */
+		memset(&umode, 0, sizeof(umode));
+		umode.clock = crtc_state->hw.adjusted_mode.clock;
+		umode.hdisplay = crtc_state->hw.adjusted_mode.hdisplay;
+		umode.hsync_start = crtc_state->hw.adjusted_mode.hsync_start;
+		umode.hsync_end = crtc_state->hw.adjusted_mode.hsync_end;
+		umode.htotal = crtc_state->hw.adjusted_mode.htotal;
+		umode.hskew = crtc_state->hw.adjusted_mode.hskew;
+		umode.vdisplay = crtc_state->hw.adjusted_mode.vdisplay;
+		umode.vsync_start = crtc_state->hw.adjusted_mode.vsync_start;
+		umode.vsync_end = crtc_state->hw.adjusted_mode.vsync_end;
+		umode.vtotal = crtc_state->hw.adjusted_mode.vtotal;
+
+		umode.vscan = crtc_state->hw.adjusted_mode.vscan;
+		umode.vrefresh = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
+		umode.flags = crtc_state->hw.adjusted_mode.flags;
+		umode.type = crtc_state->hw.adjusted_mode.type;
+		strncpy(umode.name, crtc_state->hw.adjusted_mode.name, DRM_DISPLAY_MODE_LEN);
+
+		blob = drm_property_create_blob(display->drm, sizeof(umode), &umode);
+		if (IS_ERR(blob)) {
+		} else {
+			/* This is the key: replace the blob without marking mode_changed */
+			drm_property_replace_blob(&live_crtc_state->uapi.mode_blob, blob);
+			drm_property_blob_put(blob);
+			drm_mode_copy(&live_crtc_state->uapi.mode, &crtc_state->hw.adjusted_mode);
+			live_crtc_state->uapi.enable = true;
+		}
+		/* Mark the primary plane as visible in the live state */
 		live_plane_state->uapi.visible = true;
 		live_crtc_state->uapi.plane_mask |= drm_plane_mask(&primary->base);
 
@@ -8789,10 +8776,12 @@ void intel_crtc_steal_state(struct intel_crtc_state *crtc_state)
 				drm_encoder_mask(&encoder->base);
 
 			connector->base.status = connector_status_connected;
-			} else {
-			    drm_warn(display->drm, "[XE-STEAL] No active connector found for pipe %c!\n",
-				 pipe_name(crtc->pipe));
-			}}
+		} else {
+			drm_warn(display->drm, "[XE-STEAL] No active connector found for pipe %c!\n",
+					pipe_name(crtc->pipe));
+		}
+	}
+}
 #ifdef CONFIG_DRM_I915
 EXPORT_SYMBOL_GPL(intel_crtc_steal_state);
 #endif
@@ -8840,37 +8829,21 @@ int intel_initial_commit(struct intel_display *display)
 			crtc_state->hw.enable = true; /* Force hw.enable to match uapi.enable */
 			crtc_state->inherited = true;
 
-				    crtc_state->pixel_rate =
-
-					to_intel_crtc_state(crtc->base.state)->uapi.adjusted_mode.crtc_clock;
-
-
-
-				    /* Find and link the connector for this CRTC */
-
-				    for_each_intel_encoder(display->drm, encoder) {
-
-					if (crtc_state->uapi.encoder_mask & drm_encoder_mask(&encoder->base)) {
-
-							break;
-
-					}
+			crtc_state->pixel_rate =
+				to_intel_crtc_state(crtc->base.state)->uapi.adjusted_mode.crtc_clock;
 
-					}
-
-
-
-					if (encoder) {
-
-					drm_connector_list_iter_begin(display->drm, &conn_iter);
-
-					drm_for_each_connector_iter(iter_conn, &conn_iter) {
-
-							if (to_intel_connector(iter_conn)->encoder == encoder) {
+			/* Find and link the connector for this CRTC */
+			for_each_intel_encoder(display->drm, encoder) {
+				if (crtc_state->uapi.encoder_mask & drm_encoder_mask(&encoder->base)) {
+					break;
+				}
+			}
 
+			if (encoder) {
+				drm_connector_list_iter_begin(display->drm, &conn_iter);
+				drm_for_each_connector_iter(iter_conn, &conn_iter) {
+					if (to_intel_connector(iter_conn)->encoder == encoder) {
 						connector = to_intel_connector(iter_conn);
-
-
 						break;
 					}
 				}
@@ -8881,7 +8854,7 @@ int intel_initial_commit(struct intel_display *display)
 				struct drm_connector_state *conn_state;
 
 				conn_state = drm_atomic_get_connector_state(state,
-									&connector->base);
+						&connector->base);
 				if (IS_ERR(conn_state)) {
 					ret = PTR_ERR(conn_state);
 					goto out;
@@ -8900,7 +8873,7 @@ int intel_initial_commit(struct intel_display *display)
 					crtc_state->uapi.encoder_mask |= drm_encoder_mask(&connector->encoder->base);
 			} else {
 				drm_warn(dev, "[FB-COMMIT] No connector found for CRTC %s\n",
-					 crtc->base.name);
+						crtc->base.name);
 			}
 
 			ret = drm_atomic_add_affected_planes(state, &crtc->base);
@@ -8916,11 +8889,11 @@ int intel_initial_commit(struct intel_display *display)
 			crtc_state->uapi.color_mgmt_changed = true;
 
 			for_each_intel_encoder_mask(display->drm, encoder,
-						    crtc_state->uapi.encoder_mask) {
+					crtc_state->uapi.encoder_mask) {
 				if (encoder->initial_fastset_check &&
-				    !encoder->initial_fastset_check(encoder, crtc_state)) {
+						!encoder->initial_fastset_check(encoder, crtc_state)) {
 					ret = drm_atomic_add_affected_connectors(state,
-										 &crtc->base);
+							&crtc->base);
 					if (ret)
 						goto out;
 				}
@@ -8938,11 +8911,9 @@ int intel_initial_commit(struct intel_display *display)
 		goto retry;
 	}
 
+	initial_boot_handoff = false;
 	if (ret) {
 		drm_atomic_state_put(state);
-		initial_boot_handoff = false;
-	} else {
-		initial_boot_handoff = false;
 	}
 out_no_state:
 	drm_modeset_drop_locks(&ctx);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 73de39f655d9bb4435c21ac67d19d1bb7ace759d..5f3ae482d24a57a9268c2739c745912e8edab2db 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -542,40 +542,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 				 */
 				encoder->get_config(encoder, crtc_state);
 
-				/*
-				 * HACK: MSO Fixup for readout (Fastboot path).
-				 * If we read out the split MSO mode (1128), scale it up to the
-				 * logical mode (2256) so it matches the VBT/User mode.
-				 */
-				if (crtc_state->hw.pipe_mode.hdisplay == 1128) {
-
-					/* Scale ALL horizontal timings to prevent invalid mode (Sync < Active) */
-					crtc_state->hw.pipe_mode.hdisplay *= 2;
-					crtc_state->hw.pipe_mode.hsync_start *= 2;
-					crtc_state->hw.pipe_mode.hsync_end *= 2;
-					crtc_state->hw.pipe_mode.htotal *= 2;
-
-					crtc_state->hw.pipe_mode.crtc_hdisplay *= 2;
-					crtc_state->hw.pipe_mode.crtc_hsync_start *= 2;
-					crtc_state->hw.pipe_mode.crtc_hsync_end *= 2;
-					crtc_state->hw.pipe_mode.crtc_htotal *= 2;
-					crtc_state->hw.pipe_mode.crtc_hblank_start *= 2;
-					crtc_state->hw.pipe_mode.crtc_hblank_end *= 2;
-
-					/* Fix name */
-					snprintf(crtc_state->hw.pipe_mode.name, DRM_DISPLAY_MODE_LEN, "%dx%d",
-							crtc_state->hw.pipe_mode.hdisplay, crtc_state->hw.pipe_mode.vdisplay);
-				} else if (crtc_state->hw.pipe_mode.hdisplay == 2256 &&
-						crtc_state->hw.pipe_mode.crtc_hsync_start == 1152) {
-
-					/* Geometry is already scaled, but Sync/Blank are raw. Fix them. */
-					crtc_state->hw.pipe_mode.hsync_start *= 2;
-					crtc_state->hw.pipe_mode.hsync_end *= 2;
-					crtc_state->hw.pipe_mode.crtc_hsync_start *= 2;
-					crtc_state->hw.pipe_mode.crtc_hsync_end *= 2;
-					crtc_state->hw.pipe_mode.crtc_hblank_start *= 2;
-					crtc_state->hw.pipe_mode.crtc_hblank_end *= 2;
-				}
+
 				/* Link the encoder to the CRTC */
 				encoder->base.crtc = &crtc->base;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f73a7f9d2198b418cea06cc3c1636f09bb681dee..4d7a6f98efa2489ecbea24d8eda22f7fb4ff0ffb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3276,12 +3276,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	/* [FB-FIX] Force 216000 link rate for MSO. Found 216000 in HW. Override compute result. */
-	if (pipe_config->hw.pipe_mode.hdisplay == 2256) {
-		pipe_config->lane_count = 4;
-		pipe_config->port_clock = 216000;
-	}
-
 	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
 	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
 		ret = intel_pfit_compute_config(pipe_config, conn_state);
@@ -3314,15 +3308,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		pipe_config->splitter.link_count = n;
 		pipe_config->splitter.pixel_overlap = overlap;
 
-		/*
-		 * [FB-FIX] Force Positive Sync for MSO panels.
-		 * If we fell through here (skipped restore_boot), we must ensure flags are correct.
-		 */
-		if ((adjusted_mode->flags & (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_NHSYNC |
-					     DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC)) == 0) {
-			adjusted_mode->flags |= DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC;
-		}
-
 		adjusted_mode->crtc_hdisplay = adjusted_mode->crtc_hdisplay / n + overlap;
 		adjusted_mode->crtc_hblank_start = adjusted_mode->crtc_hblank_start / n + overlap;
 		adjusted_mode->crtc_hblank_end = adjusted_mode->crtc_hblank_end / n + overlap;
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 3db998edf8fe15e4bc07318c15c009688bf1fbbc..dfe670d81aba64207d5ea348c346125e9ab49398 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1540,11 +1540,6 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
 	int src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
 	u32 plane_color_ctl;
 
-	/* [] Hack: Force stride 0x8d for MSO 2256px to fix display artifacts */
-	if (fb->width == 2256 && crtc_state->inherited) {
-		stride = 0x8d;
-	}
-
 	plane_color_ctl = plane_state->color_ctl |
 		glk_plane_color_ctl_crtc(crtc_state);
 
@@ -1651,18 +1646,18 @@ icl_plane_update_arm(struct intel_dsb *dsb,
 	icl_plane_update_sel_fetch_arm(dsb, plane, crtc_state, plane_state);
 
 	/*
-	 * The control register self-arms if the plane was previously
+	 * Enable the plane.
+	 *
+	 * The hardware will ignore the plane enable bit if the plane
+	 * is not armed (FRAME_START_DELAY not elapsed yet).
+	 *
+	 * However, on Gen11+ the plane enable bit is double buffered.
+	 * If we write the control register with the enable bit set
+	 * before the surface register, the plane will be enabled
+	 * immediately (on the next vblank) even if the plane was
 	 * disabled. Try to make the plane enable atomic by writing
 	 * the control register just before the surface register.
 	 */
-	u32 hw_ctl = intel_de_read(display, PLANE_CTL(pipe, plane_id));
-
-	if (crtc_state->inherited) {
-		if (hw_ctl & 0x8) {
-			plane_ctl |= 0x8;
-		}
-	}
-
 	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id),
 			   plane_ctl);
 	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id),
@@ -3027,13 +3022,14 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe;
 	u32 val, offset, stride_mult, tiling, alpha;
-	u32 plane_ctl, plane_size, plane_stride;
 	int fourcc, pixel_format;
 	unsigned int aligned_height;
 	struct drm_framebuffer *fb;
 	struct intel_framebuffer *intel_fb;
+	static_assert(PLANE_CTL_TILED_YF == PLANE_CTL_TILED_4);
 
-	pipe = plane->pipe;
+	if (!plane->get_hw_state(plane, &pipe))
+		return;
 
 	drm_WARN_ON(display->drm, pipe != crtc->pipe);
 
@@ -3044,44 +3040,34 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		return;
 	}
 
-	plane_ctl = intel_de_read(display, PLANE_CTL(plane->i9xx_plane, pipe));
-
-	if (!(plane_ctl & PLANE_CTL_ENABLE)) {
-		to_intel_crtc_state(crtc->base.state)->uapi.active = false;
+	intel_fb = intel_framebuffer_alloc();
+	if (!intel_fb) {
+		drm_dbg_kms(display->drm, "failed to alloc fb\n");
 		return;
 	}
 
-	plane_size = intel_de_read(display, PLANE_SIZE(plane->i9xx_plane, pipe));
-	plane_stride = intel_de_read(display, PLANE_STRIDE(plane->i9xx_plane, pipe));
+	fb = &intel_fb->base;
+
+	fb->dev = display->drm;
 
-	val = plane_ctl;
+	val = intel_de_read(display, PLANE_CTL(pipe, plane_id));
 
 	if (DISPLAY_VER(display) >= 11)
 		pixel_format = val & PLANE_CTL_FORMAT_MASK_ICL;
 	else
-		pixel_format = REG_FIELD_GET(PLANE_CTL_FORMAT_MASK_SKL, val);
+		pixel_format = val & PLANE_CTL_FORMAT_MASK_SKL;
 
 	if (DISPLAY_VER(display) >= 10) {
-		u32 plane_color_ctl =
-			intel_de_read(display, PLANE_COLOR_CTL(pipe, plane_id));
-		alpha = REG_FIELD_GET(PLANE_COLOR_ALPHA_MASK, plane_color_ctl);
+		u32 color_ctl;
+
+		color_ctl = intel_de_read(display, PLANE_COLOR_CTL(pipe, plane_id));
+		alpha = REG_FIELD_GET(PLANE_COLOR_ALPHA_MASK, color_ctl);
 	} else {
 		alpha = REG_FIELD_GET(PLANE_CTL_ALPHA_MASK, val);
 	}
 
 	fourcc = skl_format_to_fourcc(pixel_format,
-					      val & PLANE_CTL_ORDER_RGBX,
-					      alpha !=PLANE_CTL_ALPHA_DISABLE);
-
-	intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
-	if (!intel_fb) {
-		drm_dbg_kms(display->drm, "failed to alloc fb\n");
-		return;
-	}
-	fb = &intel_fb->base;
-
-	fb->dev = display->drm;
-
+				      val & PLANE_CTL_ORDER_RGBX, alpha);
 	fb->format = drm_format_info(fourcc);
 
 	tiling = val & PLANE_CTL_TILED_MASK;
@@ -3095,14 +3081,39 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		break;
 	case PLANE_CTL_TILED_Y:
 		plane_config->tiling = I915_TILING_Y;
-		fb->modifier = I915_FORMAT_MOD_Y_TILED;
+		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
+			if (DISPLAY_VER(display) >= 14)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_RC_CCS;
+			else if (DISPLAY_VER(display) >= 12)
+				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS;
+			else
+				fb->modifier = I915_FORMAT_MOD_Y_TILED_CCS;
+		else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
+			if (DISPLAY_VER(display) >= 14)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_MTL_MC_CCS;
+			else
+				fb->modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS;
+		else
+			fb->modifier = I915_FORMAT_MOD_Y_TILED;
 		break;
-	case PLANE_CTL_TILED_YF:
+	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
 		if (HAS_4TILE(display)) {
-			fb->modifier = I915_FORMAT_MOD_4_TILED;
+			u32 rc_mask = PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
+				      PLANE_CTL_CLEAR_COLOR_DISABLE;
+
+			if ((val & rc_mask) == rc_mask)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS;
+			else if (val & PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
+			else if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
+				fb->modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
+			else
+				fb->modifier = I915_FORMAT_MOD_4_TILED;
 		} else {
-			plane_config->tiling = I915_TILING_Y;
-			fb->modifier = I915_FORMAT_MOD_Yf_TILED;
+			if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
+				fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
+			else
+				fb->modifier = I915_FORMAT_MOD_Yf_TILED;
 		}
 		break;
 	default:
@@ -3134,48 +3145,52 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 		plane_config->rotation = DRM_MODE_ROTATE_90;
 		break;
 	}
-	
-	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
-
-	fb->width = (REG_FIELD_GET(PLANE_WIDTH_MASK, plane_size) + 1);
-	fb->height = (REG_FIELD_GET(PLANE_HEIGHT_MASK, plane_size) + 1);
-	
-	mode_cmd.width = fb->width;
-	mode_cmd.height = fb->height;
-	mode_cmd.pixel_format = fourcc;
 
-	drm_helper_mode_fill_fb_struct(display->drm, fb,
-				       drm_format_info(fourcc),
-				       &mode_cmd);
-
-	if (fb->modifier == DRM_FORMAT_MOD_LINEAR)
-		stride_mult = 64;
-	else
-		stride_mult = intel_tile_width_bytes(fb, 0);
-	
-	fb->pitches[0] = REG_FIELD_GET(PLANE_STRIDE__MASK, plane_stride) * stride_mult;
+	if (DISPLAY_VER(display) >= 11 && val & PLANE_CTL_FLIP_HORIZONTAL)
+		plane_config->rotation |= DRM_MODE_REFLECT_X;
 
-	aligned_height = intel_fb_align_height(fb, 0, fb->height);
+	/* 90/270 degree rotation would require extra work */
+	if (drm_rotation_90_or_270(plane_config->rotation))
+		goto error;
 
 	/*
 	 * HACK: The PLANE_SURF register is unreliable at this stage. Based on
 	 * i915 and coreboot behavior, the correct GTT offset is 0.
 	 */
+	u32 surf = intel_de_read(display, PLANE_SURF(pipe, plane_id));
+	drm_info(display->drm, "[FB-FIX] PLANE_SURF read: 0x%08x, Forcing base to 0\n", surf);
 	plane_config->base = 0;
 
 	offset = intel_de_read(display, PLANE_OFFSET(pipe, plane_id));
 	drm_WARN_ON(display->drm, offset != 0);
 
+	val = intel_de_read(display, PLANE_SIZE(pipe, plane_id));
+	fb->height = REG_FIELD_GET(PLANE_HEIGHT_MASK, val) + 1;
+	fb->width = REG_FIELD_GET(PLANE_WIDTH_MASK, val) + 1;
+
+	val = intel_de_read(display, PLANE_STRIDE(pipe, plane_id));
+	stride_mult = skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
+
+	fb->pitches[0] = REG_FIELD_GET(PLANE_STRIDE__MASK, val) * stride_mult;
+
+	aligned_height = intel_fb_align_height(fb, 0, fb->height);
+
 	plane_config->size = fb->pitches[0] * aligned_height;
-	plane_config->fb = intel_fb;
 
+	drm_dbg_kms(display->drm,
+		    "[CRTC:%d:%s][PLANE:%d:%s] with fb: size=%dx%d@%d, offset=%x, pitch %d, size 0x%x\n",
+		    crtc->base.base.id, crtc->base.name,
+		    plane->base.base.id, plane->base.name,
+		    fb->width, fb->height, fb->format->cpp[0] * 8,
+		    plane_config->base, fb->pitches[0], plane_config->size);
+
+	plane_config->fb = intel_fb;
 	return;
 
 error:
 	kfree(intel_fb);
 	plane_config->fb = NULL;
 }
-
 bool skl_fixup_initial_plane_config(struct intel_crtc *crtc,
 				    const struct intel_initial_plane_config *plane_config)
 {
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 6a987224e90dc5620194a277ec5f52820da5efce..c7b1371d823bbfa71785df61e7aa601bf76d725e 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -192,7 +192,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 	}
 	/* Reference handed over to fb */
 	xe_bo_put(bo);
-	if (bo->vmap.vaddr && plane_config->fb) {
+	/*if (bo->vmap.vaddr && plane_config->fb) {
 		int x, y;
 		void *vaddr = bo->vmap.vaddr;
 		u32 height = plane_config->fb->base.height;
@@ -209,7 +209,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 				row[x] = color;
 			}
 		}
-	}
+	}*/
 
 	return true;
 

-- 
2.52.0.457.g6b5491de43-goog

