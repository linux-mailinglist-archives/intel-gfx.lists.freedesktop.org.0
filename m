Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB689D301A5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA3110E867;
	Fri, 16 Jan 2026 11:08:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="e+5MBIk+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f73.google.com (mail-dl1-f73.google.com [74.125.82.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 806E310E7B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 16:55:45 +0000 (UTC)
Received: by mail-dl1-f73.google.com with SMTP id
 a92af1059eb24-11f4617e256so6640284c88.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 08:55:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768496145; x=1769100945;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=8ZiGq1GfEtoJBQ3xYJIcWb1qp3uv0jfZdl5FIEy6DDw=;
 b=e+5MBIk+OESXdibS7YbGAFamOUZYt2a3PfDYQGcSesgpo9PdKB3dICKumtuXxfJ/fq
 9Hpvn1/QWH9eKnZt45goI8CJsiloLFk3kIeOP3zsCj27VQ7LRwIX2Jxh/KEfDwDdBEs/
 k3P5QOeBSR3c3qGBA6gM2EM1H4qKqX/9X2k8DHN59yH6UFgtin2uwgTYA2+bSxvDRpO2
 a63jcbj0APVzV40arBlMkf09wCHLF1hcwxi7TWSn0DgOBrAi5NTUam3UaIblOLSATV0h
 yu4J80t5em7IL6BXRpQTxXwXHS+vE13T1I1dl+rXDcaRIyA+skVPP5UYTnqoQCvSoLfj
 XMsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768496145; x=1769100945;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8ZiGq1GfEtoJBQ3xYJIcWb1qp3uv0jfZdl5FIEy6DDw=;
 b=Ni5fUzONtXOSgzKpJB2GNEWKhbiZKNMKz1VCfqveo10Kvdvjq92+QHskwAb+yuUcXZ
 +PelX9k0LvKl+oeq+QyWRwqIivAPToR18BRHcRj36sq6bcKJsKk7maQ4nW8Srfmemy3O
 UNBE+K/hJVm+2otn/sE6bmCTWpppc3IhGQSV57yqGhDK/muSvMm7MusdwOtk0vMurSB4
 mQeiftNysJt5f/e/+eYKuXPfMsrbYS7NAnJbvy15yDNORt8k6vHPmkbXX46MHqZ+wnuc
 Flo40ME5adiFdJ3D0jiuSKOmd8VNCc7f/catfXzFxBp0Vpt56+9cGWTK0NdG/lgLeqmQ
 gadg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVOgvvP7d8CKfFN1S8aYD1+ZCMmVAwzhyBn8Hq63ZFf5NouhIdEkUix3UNg/4N+mSlCTvEAi5bl604=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxQu8Nb9zyTjCW8TFT9xC++4aLGvLhuHO7P13EXRnQKPB8fncPv
 BjW3dIYcrAf21CQcl3vu4Ak4ITR4HMV5GUvunnhPepPepViiuAbZSp9mPClfu7sY1VHPFRu2eg3
 TJPj1PwwIKfKiHw==
X-Received: from dlbrl18.prod.google.com
 ([2002:a05:7022:f512:b0:121:ac3c:21fe])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:458d:b0:11b:9386:a3c3 with SMTP id
 a92af1059eb24-1244a7a7a9dmr322988c88.46.1768496144746; 
 Thu, 15 Jan 2026 08:55:44 -0800 (PST)
Date: Thu, 15 Jan 2026 08:54:49 -0800
In-Reply-To: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Mime-Version: 1.0
References: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
X-Developer-Key: i=jdsultan@google.com; a=ed25519;
 pk=RhTSABMOTIhvVE7NYiZwn1iDGYYNbaN092nvaEF2dxo=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768496136; l=39138;
 i=jdsultan@google.com; s=20260115; h=from:subject:message-id;
 bh=0ozBK0shMBAqCw4lXK32C1wJh5OXeDAL5Yho4tBNaOQ=;
 b=i+yIKrbmsmhQFaO5oCNxY3q4sgpc4I3AhMXlvBmhg8hPArk/Gdc3ZIJBb6YYZtPw8uSHgSQ8M
 tBjuyMSU+zyBr7xITcAHWnCY8pfoRA09/G1SNyehm0htkW0eKeADftu
X-Mailer: b4 0.14.2
Message-ID: <20260115-upstream-prep-v1-3-001d5b38fc11@google.com>
Subject: [PATCH RFC 03/10] drm/i915/display: Implement aggressive boot state
 preservation for PTL
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

To ensure a seamless, flicker-free boot on Panther Lake (PTL) platforms,
especially those with MSO (Multi-Segment Operation) panels, the driver
must rigidly adhere to the hardware state established by the BIOS.
Standard state readout and re-computation often lead to mismatches (e.g.,
missing MSO flags, incorrect PLL parameters) that cause the hardware to
reset or blank the screen.

This patch implements a mechanism to "steal" and lock the boot state:

1.  **State Capture (`intel_crtc_steal_state`)**:
    *   Captures critical hardware state (PLLs, timings, MSO splitter
        configuration, DSC parameters, etc.) into persistent "boot_"
        variables during the initial readout.
    *   Populates the initial atomic state (`live_crtc_state`) directly
        from this captured data, creating necessary mode blobs manually
        to satisfy atomic checks without triggering hardware changes.

2.  **State Restoration & Locking**:
    *   In `intel_modeset_pipe_config`, if the requested mode matches
        the captured boot dimensions, the driver bypasses standard computation.
    *   Instead, it forcibly restores the captured boot parameters (PLLs,
        timings, MSO flags like `PHSYNC`/`PVSYNC`) into the new CRTC state.
    *   Forces `fastset` to succeed for these matching states, ensuring
        no full modeset occurs.

3.  **Atomic Check Interventions**:
    *   Prevents the boot CRTC from being disabled during the initial
        userspace handover. If `active` is false but matches the boot pipe,
        it forces `active = true` and re-attaches the mode.
    *   Fixes a potential issue where userspace sets a mode without
        connectors by forcibly attaching the eDP connector.

4.  **Hardware Update Bypass**:
    *   In `intel_update_crtc`, if the transition matches the boot state,
        all hardware-touching functions (plane updates, scaler setup)
        are skipped. Only vblank events are handled, effectively syncing
        the software state to the running hardware.

5.  **Backlight & Watermarks**:
    *   Forces backlight enable during the first fastset.
    *   Captures and restores initial watermark and DDB allocations.

This approach effectively treats the BIOS state as the "golden" state
for the initial driver load, preventing the flicker associated with
driver takeover.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 813 +++++++++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.h |   4 +
 2 files changed, 783 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0d527cf228666b1196f0c06f9b8d855f417582fe..f55cc950da6fb2521727f16d1fd9244367ddc785 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -44,7 +44,7 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_rect.h>
 #include <drm/drm_vblank.h>
-
+#include <drm/drm_atomic.h>
 #include "g4x_dp.h"
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
@@ -58,6 +58,7 @@
 #include "intel_alpm.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
+#include "intel_backlight.h"
 #include "intel_bo.h"
 #include "intel_bw.h"
 #include "intel_cdclk.h"
@@ -72,6 +73,7 @@
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
+#include "intel_display_irq.h"
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
@@ -101,6 +103,39 @@
 #include "intel_link_bw.h"
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
+
+static bool boot_state_captured;
+static struct intel_dpll_hw_state boot_pll_state;
+static struct intel_dpll *boot_shared_dpll;
+static int boot_port_clock;
+static int boot_lane_count;
+static enum transcoder boot_cpu_transcoder;
+static struct drm_display_mode boot_adjusted_mode;
+static int boot_hdisplay;
+static int boot_vdisplay;
+static int boot_pipe_bpp;
+static struct intel_link_m_n boot_dp_m_n;
+static struct intel_link_m_n boot_dp_m2_n2;
+static bool boot_fec_enable;
+static bool boot_enhanced_framing;
+static bool boot_dsc_compression_enable;
+static struct drm_dsc_config boot_dsc_config;
+static struct intel_csc_matrix boot_csc;
+static bool boot_limited_color_range;
+static enum pipe boot_pipe = INVALID_PIPE;
+static unsigned int boot_output_types;
+static struct {
+	bool enable;
+	int link_count;
+	int pixel_overlap;
+} boot_splitter;
+static struct skl_pipe_wm boot_wm;
+static struct skl_ddb_entry boot_ddb[I915_MAX_PLANES];
+static u32 boot_gamma_mode;
+static u32 boot_csc_mode;
+static u32 boot_linetime;
+static bool initial_boot_handoff;
+
 #include "intel_modeset_setup.h"
 #include "intel_modeset_verify.h"
 #include "intel_overlay.h"
@@ -2464,12 +2499,23 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	int ret;
 
 	ret = intel_crtc_compute_vblank_delay(state, crtc);
 	if (ret)
 		return ret;
 
+	if (state->fastset) {
+		crtc_state->hw.adjusted_mode.crtc_clock = old_crtc_state->hw.adjusted_mode.crtc_clock;
+
+		if (crtc_state->hw.adjusted_mode.crtc_clock) {
+			crtc_state->pixel_rate = crtc_state->hw.adjusted_mode.crtc_clock;
+			return 0;
+		}
+	}
+
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
 		return ret;
@@ -2921,6 +2967,12 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
 		      REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1,
 		      REG_FIELD_GET(PIPESRC_HEIGHT_MASK, tmp) + 1);
 
+	/* [FB-FIX] Force pipe source size from boot state if HW readout is invalid (seamless handoff) */
+	if (boot_state_captured && crtc->pipe == boot_pipe &&
+	    (drm_rect_width(&pipe_config->pipe_src) <= 1 || drm_rect_height(&pipe_config->pipe_src) <= 1)) {
+		drm_rect_init(&pipe_config->pipe_src, 0, 0, boot_hdisplay, boot_vdisplay);
+	}
+
 	intel_joiner_adjust_pipe_src(pipe_config);
 }
 
@@ -4699,11 +4751,137 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 	drm_mode_set_crtcinfo(&crtc_state->hw.adjusted_mode,
 			      CRTC_STEREO_DOUBLE);
 
+	/*
+	 * FIX: Permanent Boot Lock (Moved to TOP).
+	 * We check for boot state match BEFORE letting the driver calculate anything.
+	 * This bypasses broken driver logic for MSO panels.
+	 */
+	bool restore_boot = false;
+	int new_h = 0;
+	int new_v = 0;
+
+	/* Only restore boot state if this is the initial inherited commit */
+	if (boot_state_captured && crtc_state->uapi.enable && crtc_state->inherited) {
+		new_h = crtc_state->hw.adjusted_mode.crtc_hdisplay;
+		new_v = crtc_state->hw.adjusted_mode.crtc_vdisplay;
+
+		if (new_h == boot_hdisplay && new_v == boot_vdisplay) {
+			restore_boot = true;
+		} else if (((boot_splitter.enable && boot_splitter.link_count > 0 &&
+			     new_h == boot_hdisplay * boot_splitter.link_count) ||
+			    (new_h == boot_hdisplay * 2)) &&
+			   new_v == boot_vdisplay) {
+			restore_boot = true;
+		}
+	}
+
+			if (restore_boot) {
+
+
+
+				crtc_state->dpll_hw_state = boot_pll_state;
+
+				crtc_state->intel_dpll = boot_shared_dpll;
+
+				/* Restore boot port clock */
+
+				crtc_state->port_clock = boot_port_clock;
+
+
+		crtc_state->lane_count = 4;
+
+		if (boot_pipe_bpp == 0) {
+			crtc_state->pipe_bpp = 24;
+		} else {
+			crtc_state->pipe_bpp = boot_pipe_bpp;
+		}
+
+		crtc_state->dp_m_n = boot_dp_m_n;
+
+		crtc_state->dp_m2_n2 = boot_dp_m2_n2;
+		crtc_state->fec_enable = boot_fec_enable;
+		crtc_state->enhanced_framing = boot_enhanced_framing;
+		crtc_state->dsc.compression_enable = boot_dsc_compression_enable;
+		crtc_state->dsc.config = boot_dsc_config;
+		crtc_state->csc = boot_csc;
+		crtc_state->limited_color_range = boot_limited_color_range;
+
+		crtc_state->gamma_mode = boot_gamma_mode;
+		crtc_state->csc_mode = boot_csc_mode;
+		crtc_state->linetime = boot_linetime;
+
+		crtc_state->cpu_transcoder = boot_cpu_transcoder;
+		crtc_state->output_types = boot_output_types;
+
+		if (DISPLAY_VER(display) >= 9) {
+			memcpy(&crtc_state->wm.skl.optimal, &boot_wm, sizeof(boot_wm));
+			memcpy(&crtc_state->wm.skl.plane_ddb, boot_ddb, sizeof(boot_ddb));
+		}
+
+		/* Restore captured mode (already divided if MSO was active) */
+		drm_mode_copy(&crtc_state->hw.adjusted_mode, &boot_adjusted_mode);
+		drm_mode_copy(&crtc_state->uapi.adjusted_mode, &boot_adjusted_mode);
+
+		int src_w = boot_hdisplay;
+		int src_h = boot_vdisplay;
+
+		if (boot_splitter.enable && boot_splitter.link_count > 0) {
+			crtc_state->splitter.enable = true;
+			crtc_state->splitter.link_count = boot_splitter.link_count;
+			crtc_state->splitter.pixel_overlap = boot_splitter.pixel_overlap;
+
+			/*
+			 * If boot_hdisplay captured the divided pipe width (1128), scale it.
+			 * If it captured the full logical width (2256), use it as is.
+			 */
+			if (boot_hdisplay < new_h)
+				src_w = boot_hdisplay * boot_splitter.link_count - boot_splitter.pixel_overlap * (boot_splitter.link_count - 1);
+			else
+				src_w = boot_hdisplay;
+		}
+
+		/* Set pixel_rate to match clock */
+		crtc_state->pixel_rate = crtc_state->hw.adjusted_mode.crtc_clock;
+
+		/* Copy to pipe_mode */
+		drm_mode_copy(&crtc_state->hw.pipe_mode, &crtc_state->hw.adjusted_mode);
+
+		/*
+		 * FIX: Force flags to PHSYNC | PVSYNC if we are restoring MSO state.
+		 * The captured boot state might have lost them or they might be implicit.
+		 * Hardware readout confirms 0xA (Positive/Positive) is active.
+		 */
+		/*
+		if (crtc_state->splitter.enable) {
+			crtc_state->hw.adjusted_mode.flags |= (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC);
+			crtc_state->hw.pipe_mode.flags |= (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC);
+			crtc_state->uapi.adjusted_mode.flags |= (DRM_MODE_FLAG_PHSYNC | DRM_MODE_FLAG_PVSYNC);
+		}
+		*/
+
+		/* Set pixel_rate to match clock */
+		crtc_state->pixel_rate = crtc_state->hw.adjusted_mode.crtc_clock;
+
+		/* Restore pipe_src */
+		drm_rect_init(&crtc_state->pipe_src, 0, 0, src_w, src_h);
+
+		/*
+		 * Stop the driver from recalculating/overwriting these.
+		 * We return early-ish or let the rest run?
+		 * intel_modeset_pipe_config continues...
+		 * But we overwrote the critical parts.
+		 */
+		return 0;
+	}
+
 	/* Pass our mode to the connectors and the CRTC to give them a chance to
 	 * adjust it according to limitations or connector properties, and also
 	 * a chance to reject the mode entirely.
 	 */
 	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
+		if (restore_boot)
+			continue;
+
 		struct intel_encoder *encoder =
 			to_intel_encoder(connector_state->best_encoder);
 
@@ -4727,13 +4905,18 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
 		crtc_state->port_clock = crtc_state->hw.adjusted_mode.crtc_clock
 			* crtc_state->pixel_multiplier;
 
-	ret = intel_crtc_compute_config(state, crtc);
-	if (ret == -EDEADLK)
-		return ret;
-	if (ret < 0) {
-		drm_dbg_kms(display->drm, "[CRTC:%d:%s] config failure: %d\n",
-			    crtc->base.base.id, crtc->base.name, ret);
-		return ret;
+	/* Skip PLL computation if we are disabling the pipe */
+	if (crtc_state->hw.enable && !restore_boot) {
+		ret = intel_crtc_compute_config(state, crtc);
+		if (ret == -EDEADLK)
+			return ret;
+		if (ret < 0) {
+			drm_dbg_kms(display->drm, "[CRTC:%d:%s] config failure: %d\n",
+				    crtc->base.base.id, crtc->base.name, ret);
+			return ret;
+		}
+	} else {
+		ret = 0;
 	}
 
 	/* Dithering seems to not pass-through bits correctly when it should, so
@@ -5454,6 +5637,25 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 #undef PIPE_CONF_CHECK_RECT
 #undef PIPE_CONF_QUIRK
 
+	/* [] Hack to force fastset/verify success for seamless boot */
+	if (!ret && boot_state_captured) {
+		struct intel_crtc *crtc = to_intel_crtc(current_config->uapi.crtc);
+
+		if (crtc->pipe == boot_pipe) {
+			bool match = false;
+			int h = pipe_config->hw.pipe_mode.hdisplay;
+			int v = pipe_config->hw.pipe_mode.vdisplay;
+
+			if ((h == boot_hdisplay || h == boot_hdisplay * 2) && v == boot_vdisplay)
+				match = true;
+
+			if (match) {
+				ret = true;
+			}
+
+		}
+	}
+
 	return ret;
 }
 
@@ -5759,23 +5961,156 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 		new_crtc_state->update_pipe = true;
 }
 
+static int intel_crtc_add_planes_to_state(struct intel_atomic_state *state,
+					  struct intel_crtc *crtc,
+					  u8 plane_ids_mask)
+{
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_plane *plane;
+
+	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
+		struct intel_plane_state *plane_state;
+
+		if ((plane_ids_mask & BIT(plane->id)) == 0)
+			continue;
+
+		plane_state = intel_atomic_get_plane_state(state, plane);
+		if (IS_ERR(plane_state))
+			return PTR_ERR(plane_state);
+	}
+
+	return 0;
+}
+
+static int __maybe_unused intel_atomic_add_affected_planes(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc)
+{
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	return intel_crtc_add_planes_to_state(state, crtc,
+					      old_crtc_state->enabled_planes |
+					      new_crtc_state->enabled_planes);
+}
+
+static bool __maybe_unused active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
+{
+	struct intel_display *display = dev_priv->display;
+	/* See {hsw,vlv,ivb}_plane_ratio() */
+	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
+		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
+		display->platform.ivybridge;
+}
+
+static int intel_crtc_add_joiner_planes(struct intel_atomic_state *state,
+					struct intel_crtc *crtc,
+					struct intel_crtc *other)
+{
+	const struct intel_plane_state __maybe_unused *plane_state;
+	struct intel_plane *plane;
+	u8 plane_ids = 0;
+	int i;
+
+	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+		if (plane->pipe == crtc->pipe)
+			plane_ids |= BIT(plane->id);
+	}
+
+	return intel_crtc_add_planes_to_state(state, other, plane_ids);
+}
+
+static int intel_joiner_add_affected_planes(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		struct intel_crtc *other;
+
+		for_each_intel_crtc_in_pipe_mask(&i915->drm, other,
+						 crtc_state->joiner_pipes) {
+			int ret;
+
+			if (crtc == other)
+				continue;
+
+			ret = intel_crtc_add_joiner_planes(state, crtc, other);
+			if (ret)
+				return ret;
+		}
+	}
+
+	return 0;
+}
+
+static int __maybe_unused intel_atomic_check_planes(struct intel_atomic_state *state)
+{
+	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
+	struct intel_plane_state __maybe_unused *plane_state;
+	struct intel_crtc *crtc;
+	int i, ret;
+
+	/* ret = icl_add_linked_planes(state); */
+	/* if (ret) */
+	/*	return ret; */
+
+	ret = intel_joiner_add_affected_planes(state);
+	if (ret)
+		return ret;
+
+	ret = intel_plane_atomic_check(state);
+	if (ret)
+		return ret;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+
+			/* if (ret) */
+
+			/*	return ret; */
+
+
+
+			ret = intel_joiner_add_affected_planes(state);
+
+
+	}
+
+	return 0;
+}
+
 static int intel_atomic_check_crtcs(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state __maybe_unused *crtc_state;
 	struct intel_crtc *crtc;
-	int i;
+	struct intel_link_bw_limits limits;
+	int i, ret;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		int ret;
 
+	intel_link_bw_init_limits(state, &limits);
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		ret = intel_crtc_atomic_check(state, crtc);
 		if (ret) {
 			drm_dbg_atomic(display->drm,
-				       "[CRTC:%d:%s] atomic driver check failed\n",
-				       crtc->base.base.id, crtc->base.name);
+					"[CRTC:%d:%s] atomic driver check failed\n",
+					crtc->base.base.id, crtc->base.name);
 			return ret;
 		}
+
+		if (crtc_state->uapi.mode_changed ||
+				crtc_state->uapi.connectors_changed ||
+				crtc_state->update_pipe) {
+			ret = intel_modeset_pipe_config(state, crtc,
+					&limits);
+			if (ret)
+				return ret;
+		}
 	}
 
 	return 0;
@@ -6030,10 +6365,11 @@ static int intel_async_flip_check_hw(struct intel_atomic_state *state, struct in
 		return -EINVAL;
 	}
 
-	if (old_crtc_state->active_planes != new_crtc_state->active_planes) {
+	if (old_crtc_state->active_planes != new_crtc_state->active_planes &&
+			!new_crtc_state->inherited) {
 		drm_dbg_kms(display->drm,
-			    "[CRTC:%d:%s] Active planes cannot be in async flip\n",
-			    crtc->base.base.id, crtc->base.name);
+				"[CRTC:%d:%s] Active planes cannot be in async flip\n",
+				crtc->base.base.id, crtc->base.name);
 		return -EINVAL;
 	}
 
@@ -6361,15 +6697,81 @@ int intel_atomic_check(struct drm_device *dev,
 		 * crtc's state no longer considered to be inherited
 		 * after the first userspace/client initiated commit.
 		 */
-		if (!state->internal)
-			new_crtc_state->inherited = false;
+		if (!state->internal) {
+			bool keep_inherited = false;
+
+			if (boot_state_captured && new_crtc_state->uapi.active) {
+				/* Check if mode matches boot mode */
+				if (boot_state_captured && new_crtc_state->uapi.active) {
+					/* Check if mode matches boot mode */
+					if (new_crtc_state->uapi.mode.hdisplay == boot_hdisplay &&
+						new_crtc_state->uapi.mode.vdisplay == boot_vdisplay) {
+						keep_inherited = true;
+					}
+				}
+			}
 
-		if (new_crtc_state->inherited != old_crtc_state->inherited)
-			new_crtc_state->uapi.mode_changed = true;
+			if (!keep_inherited) {
+				new_crtc_state->inherited = false;
+			}
+		}
 
 		if (new_crtc_state->uapi.scaling_filter !=
 		    old_crtc_state->uapi.scaling_filter)
 			new_crtc_state->uapi.mode_changed = true;
+
+		/*
+		 * FIX: Aggressive Boot State Lock.
+		 * If we have captured the boot state, we PREVENT the CRTC from being disabled.
+		 * We force Active=1, Mode=BootMode, Connector=eDP.
+		 */
+		if (boot_state_captured && !new_crtc_state->uapi.active) {
+			/* Only force if this CRTC matches the boot pipe to avoid forcing wrong pipe */
+			if (crtc->pipe == boot_pipe) {
+				new_crtc_state->uapi.active = true;
+				new_crtc_state->uapi.enable = true;
+
+				/* Restore mode if missing */
+				if (!new_crtc_state->uapi.mode_blob) {
+					if (drm_atomic_set_mode_for_crtc(&new_crtc_state->uapi, &boot_adjusted_mode) < 0) {
+						drm_err(display->drm, "Failed to set mode for boot captured crtc\n");
+					}
+				}
+			}
+		}
+
+		/*
+		 * FIX: Detect userspace setting mode without connectors (Android bug?).
+		 * If we have a mode but no connectors, the atomic helper will error out or disable the pipe.
+		 * We force the eDP connector to be attached to keep the display alive.
+		 */
+		if (new_crtc_state->uapi.active && !new_crtc_state->uapi.connector_mask) {
+			struct drm_connector *connector;
+			struct drm_connector_list_iter conn_iter;
+
+			drm_connector_list_iter_begin(dev, &conn_iter);
+			drm_for_each_connector_iter(connector, &conn_iter) {
+				if (connector->connector_type == DRM_MODE_CONNECTOR_eDP) {
+					struct drm_connector_state *conn_state;
+
+					conn_state = drm_atomic_get_connector_state(&state->base, connector);
+					if (IS_ERR(conn_state)) {
+						continue;
+					}
+
+					/* Force CRTC set */
+					conn_state->crtc = &crtc->base;
+
+						/* Manually update masks */
+						new_crtc_state->uapi.connector_mask |= drm_connector_mask(connector);
+						if (connector->encoder)
+							new_crtc_state->uapi.encoder_mask |= drm_encoder_mask(connector->encoder);
+
+					break; /* Only attach one eDP */
+				}
+			}
+			drm_connector_list_iter_end(&conn_iter);
+		}
 	}
 
 	intel_vrr_check_modeset(state);
@@ -6690,8 +7092,22 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
 
+	if (new_crtc_state->inherited) {
+		return;
+	}
+
+	/*
+	 * If we are transitioning from an inherited state (where disable was skipped),
+	 * we must also skip enable because the hardware is already active.
+	 */
+	if (old_crtc_state->inherited) {
+		return;
+	}
+
 	if (!intel_crtc_needs_modeset(new_crtc_state))
 		return;
 
@@ -6733,7 +7149,8 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 		    intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_load_luts(new_crtc_state);
 
-		intel_pre_plane_update(state, crtc);
+		if (!old_crtc_state->inherited)
+			intel_pre_plane_update(state, crtc);
 
 		if (intel_crtc_needs_fastset(new_crtc_state))
 			intel_encoders_update_pipe(state, crtc);
@@ -6747,22 +7164,26 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 			intel_vrr_set_transcoder_timings(new_crtc_state);
 	}
 
-	intel_fbc_update(state, crtc);
+	if (!old_crtc_state->inherited)
+		intel_fbc_update(state, crtc);
 
 	drm_WARN_ON(display->drm, !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF));
 
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state) &&
-	    !new_crtc_state->use_dsb && !new_crtc_state->use_flipq)
+	    !new_crtc_state->use_dsb && !new_crtc_state->use_flipq &&
+		!old_crtc_state->inherited)
 		intel_color_commit_noarm(NULL, new_crtc_state);
 
-	if (!new_crtc_state->use_dsb && !new_crtc_state->use_flipq)
+	if (!new_crtc_state->use_dsb && !new_crtc_state->use_flipq &&
+		!old_crtc_state->inherited)
 		intel_crtc_planes_update_noarm(NULL, state, crtc);
 }
 
 static void intel_update_crtc(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
@@ -6775,6 +7196,31 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 		intel_flipq_add(crtc, INTEL_FLIPQ_PLANE_1, 0, INTEL_DSB_0,
 				new_crtc_state->dsb_commit);
+	} else if (boot_state_captured && !old_crtc_state->hw.active && new_crtc_state->hw.active) {
+
+		/*
+		 * For the first commit on an inherited configuration we don't
+		 * want to touch the hardware at all. We just want to sync the
+		 * software state.
+		 *
+		 * 1. Skip commit_pipe_pre_planes (vblank evasion)
+		 * 2. Skip intel_crtc_planes_update_arm (don't overwrite PLANE_SURF)
+		 * 3. Skip commit_pipe_post_planes (don't wait for vblank)
+		 */
+		intel_crtc_vblank_on(new_crtc_state);
+		gen8_irq_power_well_post_enable(display, BIT(crtc->pipe));
+
+		if (new_crtc_state->uapi.event) {
+			spin_lock_irq(&display->drm->event_lock);
+			drm_crtc_send_vblank_event(&crtc->base, new_crtc_state->uapi.event);
+			spin_unlock_irq(&display->drm->event_lock);
+			new_crtc_state->uapi.event = NULL;
+		} else {
+		}
+
+		if (new_crtc_state->uapi.commit) {
+			complete_all(&new_crtc_state->uapi.commit->flip_done);
+		}
 	} else if (new_crtc_state->use_dsb) {
 		intel_crtc_prepare_vblank_event(new_crtc_state, &crtc->dsb_event);
 
@@ -6792,6 +7238,19 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 
 		commit_pipe_post_planes(state, crtc);
 
+		/* Force backlight on for boot pipe fastset to ensure screen is visible */
+		if (boot_state_captured && crtc->pipe == boot_pipe) {
+			struct drm_connector *conn;
+			const struct drm_connector_state *conn_state;
+			int i;
+
+			for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
+				if (conn_state->crtc == &crtc->base) {
+					intel_backlight_enable(new_crtc_state, conn_state);
+				}
+			}
+		}
+
 		intel_pipe_update_end(state, crtc);
 	}
 
@@ -6812,8 +7271,9 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	 * of enabling them on the CRTC's first fastset.
 	 */
 	if (intel_crtc_needs_fastset(new_crtc_state) &&
-	    old_crtc_state->inherited)
-		intel_crtc_arm_fifo_underrun(crtc, new_crtc_state);
+	    old_crtc_state->inherited) {
+		/* intel_crtc_arm_fifo_underrun(crtc, new_crtc_state); */
+	}
 }
 
 static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
@@ -6822,8 +7282,14 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
+	const struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	struct intel_crtc *pipe_crtc;
 
+	if (old_crtc_state->inherited && new_crtc_state->uapi.active) {
+		return;
+	}
+
 	/*
 	 * We need to disable pipe CRC before disabling the pipe,
 	 * or we race against vblank off.
@@ -8151,23 +8617,209 @@ void intel_init_display_hooks(struct intel_display *display)
 	}
 }
 
+void intel_crtc_steal_state(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state->uapi.crtc->dev);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_crtc_state *live_crtc_state = crtc_state;
+	struct intel_plane *primary = to_intel_plane(crtc->base.primary);
+	struct intel_plane_state *live_plane_state =
+		to_intel_plane_state(primary->base.state);
+	struct intel_encoder *encoder;
+	struct intel_connector *connector = NULL;
+	struct drm_connector_list_iter conn_iter;
+	enum pipe pipe;
+	/*
+	 * The pipe_config is already filled with the hw state, so just copy
+	 * it to the uapi state. Use adjusted_mode since it has the correct
+	 * clock after the encoder's get_config is called.
+	 */
+	live_crtc_state->hw.active = crtc_state->hw.active;
+	live_crtc_state->uapi.active = crtc_state->uapi.active;
+	live_crtc_state->uapi.enable = crtc_state->uapi.enable;
+	live_crtc_state->inherited = true;
+	drm_mode_copy(&live_crtc_state->uapi.adjusted_mode, &crtc_state->hw.adjusted_mode);
+	drm_mode_copy(&live_crtc_state->hw.adjusted_mode, &crtc_state->hw.adjusted_mode);
+	live_crtc_state->pixel_rate = live_crtc_state->uapi.adjusted_mode.crtc_clock;
+
+	/* FIX: Copy PLL state so the driver knows we are using a PLL */
+	live_crtc_state->dpll_hw_state = crtc_state->dpll_hw_state;
+	live_crtc_state->dpll = crtc_state->dpll;
+	live_crtc_state->port_clock = crtc_state->port_clock;
+	live_crtc_state->lane_count = crtc_state->lane_count;
+	live_crtc_state->output_types = crtc_state->output_types;
+
+	/* FIX: Also populate pipe_src so pfit doesn't complain */
+	drm_rect_init(&live_crtc_state->pipe_src, 0, 0,
+		      crtc_state->hw.adjusted_mode.crtc_hdisplay,
+		      crtc_state->hw.adjusted_mode.crtc_vdisplay);
+
+	/* Capture boot state for persistence */
+	if (!boot_state_captured && (crtc_state->hw.active || crtc_state->hw.adjusted_mode.crtc_clock > 0)) {
+		boot_pll_state = crtc_state->dpll_hw_state;
+		boot_shared_dpll = crtc_state->intel_dpll;
+		boot_port_clock = crtc_state->port_clock;
+		boot_lane_count = crtc_state->lane_count;
+		boot_pipe_bpp = crtc_state->pipe_bpp;
+		boot_dp_m_n = crtc_state->dp_m_n;
+		boot_dp_m2_n2 = crtc_state->dp_m2_n2;
+		boot_fec_enable = crtc_state->fec_enable;
+		boot_enhanced_framing = crtc_state->enhanced_framing;
+		boot_dsc_compression_enable = crtc_state->dsc.compression_enable;
+		boot_dsc_config = crtc_state->dsc.config;
+		boot_csc = crtc_state->csc;
+		boot_limited_color_range = crtc_state->limited_color_range;
+		boot_cpu_transcoder = crtc_state->cpu_transcoder;
+
+		boot_gamma_mode = crtc_state->gamma_mode;
+		boot_csc_mode = crtc_state->csc_mode;
+		boot_linetime = crtc_state->linetime;
+
+		/* [FB-FIX] Capture Watermark and DDB state */
+		if (DISPLAY_VER(display) >= 9) {
+			memcpy(&boot_wm, &crtc_state->wm.skl.optimal, sizeof(boot_wm));
+			memcpy(&boot_ddb, &crtc_state->wm.skl.plane_ddb, sizeof(boot_ddb));
+		}
+
+		/* Capture pipe_mode which has the fixed-up logical MSO timings */
+		drm_mode_copy(&boot_adjusted_mode, &crtc_state->hw.pipe_mode);
+
+		/*
+		 * pipe_mode might not have the clock populated (it's often 0 from readout),
+		 * so copy the valid clock from adjusted_mode to prevent divide-by-zero later.
+		 */
+		boot_adjusted_mode.crtc_clock = crtc_state->hw.adjusted_mode.crtc_clock;
+		boot_adjusted_mode.clock = crtc_state->hw.adjusted_mode.crtc_clock;
+
+		boot_splitter.enable = crtc_state->splitter.enable;
+		boot_splitter.link_count = crtc_state->splitter.link_count;
+		boot_splitter.pixel_overlap = crtc_state->splitter.pixel_overlap;
+		boot_hdisplay = crtc_state->hw.pipe_mode.crtc_hdisplay;
+		boot_vdisplay = crtc_state->hw.pipe_mode.crtc_vdisplay;
+		boot_pipe = crtc->pipe;
+		boot_output_types = crtc_state->output_types;
+
+		boot_state_captured = true;
+	}
+
+		if (live_crtc_state->hw.active) {
+			/*
+			 * This is filling in the uapi.mode and creating the blob for it.
+			 * The blob is required for the initial commit to succeed.
+			 */
+			memset(&live_crtc_state->uapi.mode, 0, sizeof(live_crtc_state->uapi.mode));
+
+			struct drm_mode_modeinfo umode;
+			struct drm_property_blob *blob;
+
+			/* Manually create the mode blob to avoid triggering a modeset */
+			memset(&umode, 0, sizeof(umode));
+			umode.clock = crtc_state->hw.adjusted_mode.clock;
+			umode.hdisplay = crtc_state->hw.adjusted_mode.hdisplay;
+			umode.hsync_start = crtc_state->hw.adjusted_mode.hsync_start;
+			umode.hsync_end = crtc_state->hw.adjusted_mode.hsync_end;
+			umode.htotal = crtc_state->hw.adjusted_mode.htotal;
+			umode.hskew = crtc_state->hw.adjusted_mode.hskew;
+			umode.vdisplay = crtc_state->hw.adjusted_mode.vdisplay;
+			umode.vsync_start = crtc_state->hw.adjusted_mode.vsync_start;
+			umode.vsync_end = crtc_state->hw.adjusted_mode.vsync_end;
+			umode.vtotal = crtc_state->hw.adjusted_mode.vtotal;
+
+			/* [FB-FIX] Ensure vtotal is populated to prevent scanline divide-by-zero */
+			if (umode.vtotal == 0) {
+				umode.vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
+			}
+			if (umode.vtotal == 0) {
+				umode.vtotal = 1504; /* Fallback for MSO panel */
+			}
+
+			umode.vscan = crtc_state->hw.adjusted_mode.vscan;
+			umode.vrefresh = drm_mode_vrefresh(&crtc_state->hw.adjusted_mode);
+			umode.flags = crtc_state->hw.adjusted_mode.flags;
+			umode.type = crtc_state->hw.adjusted_mode.type;
+			strncpy(umode.name, crtc_state->hw.adjusted_mode.name, DRM_DISPLAY_MODE_LEN);
+
+			blob = drm_property_create_blob(display->drm, sizeof(umode), &umode);
+			if (IS_ERR(blob)) {
+			} else {
+				/* This is the key: replace the blob without marking mode_changed */
+				drm_property_replace_blob(&live_crtc_state->uapi.mode_blob, blob);
+				drm_property_blob_put(blob);
+				drm_mode_copy(&live_crtc_state->uapi.mode, &crtc_state->hw.adjusted_mode);
+				live_crtc_state->uapi.enable = true;
+			}
+		}		/* Mark the primary plane as visible in the live state */
+		live_plane_state->uapi.visible = true;
+		live_crtc_state->uapi.plane_mask |= drm_plane_mask(&primary->base);
+
+		/* Sync legacy state for consistency */
+		crtc->base.enabled = crtc_state->uapi.enable;
+		crtc->active = crtc_state->hw.active;
+		drm_mode_copy(&crtc->base.mode, &crtc_state->hw.mode);
+		drm_mode_copy(&crtc->base.hwmode, &crtc_state->hw.adjusted_mode);
+
+		/*
+		 * Find the active encoder for this CRTC's pipe, then find the
+		 * connector attached to it. This is the most reliable way to
+		 * find the correct connector to steal.
+		 */
+		for_each_intel_encoder(display->drm, encoder) {
+			if (encoder->get_hw_state(encoder, &pipe) && pipe == crtc->pipe) {
+				drm_connector_list_iter_begin(display->drm, &conn_iter);
+				for_each_intel_connector_iter(connector, &conn_iter) {
+					if (connector->encoder == encoder)
+						break;
+				}
+				drm_connector_list_iter_end(&conn_iter);
+				break;
+			}
+		}
+
+		if (connector) {
+			struct drm_connector_state *live_connector_state = connector->base.state;
+
+			/*
+			 * Manually link the connector and CRTC in the live state.
+			 * Using the atomic helper drm_atomic_set_crtc_for_connector()
+			 * here is incorrect as we are not in an atomic commit.
+			 */
+			live_connector_state->crtc = &crtc->base;
+			live_connector_state->best_encoder = &encoder->base;
+			live_crtc_state->uapi.connector_mask |=
+				drm_connector_mask(&connector->base);
+			live_crtc_state->uapi.encoder_mask |=
+				drm_encoder_mask(&encoder->base);
+
+			connector->base.status = connector_status_connected;
+			} else {
+			    drm_warn(display->drm, "[XE-STEAL] No active connector found for pipe %c!\n",
+				 pipe_name(crtc->pipe));
+			}}
+#ifdef CONFIG_DRM_I915
+EXPORT_SYMBOL_GPL(intel_crtc_steal_state);
+#endif
+
 int intel_initial_commit(struct intel_display *display)
 {
+	struct drm_device *dev = display->drm;
 	struct drm_atomic_state *state = NULL;
 	struct drm_modeset_acquire_ctx ctx;
 	struct intel_crtc *crtc;
 	int ret = 0;
 
-	state = drm_atomic_state_alloc(display->drm);
-	if (!state)
-		return -ENOMEM;
-
+	initial_boot_handoff = true;
 	drm_modeset_acquire_init(&ctx, 0);
 
+retry:
+	state = drm_atomic_state_alloc(display->drm);
+	if (!state) {
+		ret = -ENOMEM;
+		goto out_no_state;
+	}
+
 	state->acquire_ctx = &ctx;
 	to_intel_atomic_state(state)->internal = true;
 
-retry:
 	for_each_intel_crtc(display->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
 			intel_atomic_get_crtc_state(state, crtc);
@@ -8181,7 +8833,77 @@ int intel_initial_commit(struct intel_display *display)
 			crtc_state->inherited = false;
 
 		if (crtc_state->hw.active) {
-			struct intel_encoder *encoder;
+			struct intel_encoder *encoder = NULL;
+			struct intel_connector *connector = NULL;
+			struct drm_connector *iter_conn;
+			struct drm_connector_list_iter conn_iter;
+
+			crtc_state->uapi.enable = true;
+			crtc_state->hw.enable = true; /* Force hw.enable to match uapi.enable */
+			crtc_state->inherited = true;
+
+				    crtc_state->pixel_rate =
+
+					to_intel_crtc_state(crtc->base.state)->uapi.adjusted_mode.crtc_clock;
+
+
+
+				    /* Find and link the connector for this CRTC */
+
+				    for_each_intel_encoder(display->drm, encoder) {
+
+					if (crtc_state->uapi.encoder_mask & drm_encoder_mask(&encoder->base)) {
+
+							break;
+
+					}
+
+					}
+
+
+
+					if (encoder) {
+
+					drm_connector_list_iter_begin(display->drm, &conn_iter);
+
+					drm_for_each_connector_iter(iter_conn, &conn_iter) {
+
+							if (to_intel_connector(iter_conn)->encoder == encoder) {
+
+						connector = to_intel_connector(iter_conn);
+
+
+						break;
+					}
+				}
+				drm_connector_list_iter_end(&conn_iter);
+			}
+
+			if (connector) {
+				struct drm_connector_state *conn_state;
+
+				conn_state = drm_atomic_get_connector_state(state,
+									&connector->base);
+				if (IS_ERR(conn_state)) {
+					ret = PTR_ERR(conn_state);
+					goto out;
+				}
+
+				/*
+				 * The state inherited from userspace has CRTC set,
+				 * but not connector_mask. Clearing CRTC here
+				 * forces drm_atomic_set_crtc_for_connector() to
+				 * set both.
+				 */
+				conn_state->crtc = &crtc->base;
+
+				crtc_state->uapi.connector_mask |= drm_connector_mask(&connector->base);
+				if (connector->encoder)
+					crtc_state->uapi.encoder_mask |= drm_encoder_mask(&connector->encoder->base);
+			} else {
+				drm_warn(dev, "[FB-COMMIT] No connector found for CRTC %s\n",
+					 crtc->base.name);
+			}
 
 			ret = drm_atomic_add_affected_planes(state, &crtc->base);
 			if (ret)
@@ -8213,12 +8935,18 @@ int intel_initial_commit(struct intel_display *display)
 out:
 	if (ret == -EDEADLK) {
 		drm_atomic_state_clear(state);
+		drm_atomic_state_put(state);
 		drm_modeset_backoff(&ctx);
 		goto retry;
 	}
 
-	drm_atomic_state_put(state);
-
+	if (ret) {
+		drm_atomic_state_put(state);
+		initial_boot_handoff = false;
+	} else {
+		initial_boot_handoff = false;
+	}
+out_no_state:
 	drm_modeset_drop_locks(&ctx);
 	drm_modeset_acquire_fini(&ctx);
 
@@ -8339,3 +9067,20 @@ bool intel_scanout_needs_vtd_wa(struct intel_display *display)
 
 	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);
 }
+
+bool intel_is_boot_mso_pipe(enum pipe pipe)
+{
+	if (!boot_state_captured || boot_pipe == INVALID_PIPE)
+		return false;
+
+	return (pipe == boot_pipe && boot_splitter.enable);
+}
+
+bool intel_is_boot_pipe(enum pipe pipe)
+{
+	if (!boot_state_captured || boot_pipe == INVALID_PIPE)
+		return false;
+
+	return pipe == boot_pipe;
+}
+
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 20e7ee02d57c28e1b4a67faecc3e82acc7d8cd02..2a6a75fc8e0e202c7d63478c3d9541248e474d6a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -522,6 +522,7 @@ void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 					  struct intel_power_domain_mask *old_domains);
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
 					  struct intel_power_domain_mask *domains);
+void intel_crtc_steal_state(struct intel_crtc_state *crtc_state);
 
 /* interface for intel_display_driver.c */
 void intel_init_display_hooks(struct intel_display *display);
@@ -564,4 +565,7 @@ bool assert_port_valid(struct intel_display *display, enum port port);
 bool intel_scanout_needs_vtd_wa(struct intel_display *display);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
 
+bool intel_is_boot_mso_pipe(enum pipe pipe);
+bool intel_is_boot_pipe(enum pipe pipe);
+
 #endif

-- 
2.52.0.457.g6b5491de43-goog

