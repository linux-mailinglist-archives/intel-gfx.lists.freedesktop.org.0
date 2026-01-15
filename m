Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6A4D3018E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6A010E1E6;
	Fri, 16 Jan 2026 11:08:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="MWai50Ub";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f73.google.com (mail-dl1-f73.google.com [74.125.82.73])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F2F10E7B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 16:55:53 +0000 (UTC)
Received: by mail-dl1-f73.google.com with SMTP id
 a92af1059eb24-121b1cb8377so2145064c88.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 08:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768496153; x=1769100953;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=aUfgbjlk+oCRuYuk3n9o+FjPCOtDA20kNyuDihWC6Gw=;
 b=MWai50Ubh1r9uUrJT6IC3viQunUWbR3wcD8SMduYMPs8+Z1i5AKMUGUhh63tYR0g2Q
 6U0g3ewwP7SmF+YoGTVVd346qxrfFvb9iAgtnKFKM9RWnXjF4WL2Yf7ycVjGjmBw+8PZ
 5eoBT7k7M6/UPHGQD7o2gwsrrhxpxl5HYbLPKVS1AFwh40w3yJKVPYKak9NjA4k8ANPT
 5OuAUrSH2JN9SoxCYD2UahQpiPbtA8+x5WYPehFx+D7Qaz+yMbCQPERm2HWBgKwbZiIT
 SCgcC3BLoo6eqDAkh8d2epx6BYWRHfPKgvkbjzR7szWNEswcQQdwubjOSdYcRHLOtKbs
 oJ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768496153; x=1769100953;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=aUfgbjlk+oCRuYuk3n9o+FjPCOtDA20kNyuDihWC6Gw=;
 b=XnnQRdl1lMuFrUxi2kzkFSMCZaOufvhjZyHVZownRKAFHc4DPmTf6p8Qk4xCKm1Aoq
 9lhRGOP1G6XnWjygrrArNsin+OoXygvaXFEv54yE5s2FGEf7YtxWI7hF50q6HDju5bjD
 NBA8M9sr7UpC6jcvTQS+CBRibs70toRKxnVG7//432Vo0UQhyP0IB18MC+d8BXvIOujp
 NtqGAVPGxuf9ZN4bbQjMwJONhfpakHxCzommojqT4wkOzCy4CpGNh5yCfPunOsirGkj9
 HNfBUsZZ45zYllmJatsR6TbHcb8eoW8f9+uaRdBsUkVPyHEImhjk8gG3TZ7S0iRUa414
 yzAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXg0XKwSHbTUy7KTcA1ks7jbyPyGo+u5xM+23sKZ2A0ELyQcacWWaB6nCkAr7tiCZwzMs5rHUShiIM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwXBjgeeR0f8EqNubRwkO1RhDdwgAHEWFZBaXqSNsUmaJB2wfF/
 cefbROwXlgMnfewkqqUJe9SKh6PYpaiZZbQN6zWuwDGThgU/nm0cOkExwXdNWZP0aAjv7oHHQ6i
 SDcMtpezoyQlCGg==
X-Received: from dyot37.prod.google.com ([2002:a05:7300:6da5:b0:2ae:51c6:b62])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:61a7:b0:11a:5065:8763 with SMTP id
 a92af1059eb24-1244a7195bfmr313682c88.5.1768496152922; 
 Thu, 15 Jan 2026 08:55:52 -0800 (PST)
Date: Thu, 15 Jan 2026 08:54:53 -0800
In-Reply-To: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Mime-Version: 1.0
References: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
X-Developer-Key: i=jdsultan@google.com; a=ed25519;
 pk=RhTSABMOTIhvVE7NYiZwn1iDGYYNbaN092nvaEF2dxo=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768496136; l=17248;
 i=jdsultan@google.com; s=20260115; h=from:subject:message-id;
 bh=v7z/HxlcVgsPbzm7xiDYjVYOSQxb2FitXVH6KO1GjV4=;
 b=jKuaHHaSGaibWpD7KE35bWEgMw21QagkbvhDS0Gkgl9P2l2kvpvMkAhjqm0bmhkZrtqIDiQ5D
 QgxEk3ZC4ZiBHyFLGE44AU8C5lfj9I6NuUd1PiZNvhcX51XU12Ap7c/
X-Mailer: b4 0.14.2
Message-ID: <20260115-upstream-prep-v1-7-001d5b38fc11@google.com>
Subject: [PATCH RFC 07/10] drm/i915/display: Implement seamless fastboot for
 MSO panels on PTL
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

The standard display probe and modeset setup path (`intel_setup_outputs`,
`intel_modeset_setup_hw_state`) often resets the hardware or fails to
perfectly match the BIOS configuration for dual-link MSO (Multi-Segment
Operation) panels. This causes screen flickering or black screens during
boot on Panther Lake (PTL).

This patch introduces a specialized "fastboot" probe path in
`intel_display_driver_probe_nogem`:

1.  **Active Pipe Detection**: Iterates through pipes to find the one
    left active by the BIOS.
2.  **Hardware State Readout**: Uses `intel_crtc_get_pipe_config` to
    accurately read the current hardware state.
3.  **MSO Timing Reconstruction**: Detects if the hardware is driving
    an MSO split mode (e.g., 1128px width) and manually scales the
    timings (hdisplay, htotal, clock, etc.) to the full logical
    resolution (2256px). This ensures the mode matches VBT/userspace
    expectations and prevents invalid mode rejection.
4.  **Topology Reconstruction**: Identifies the active encoder and
    connector, links them to the CRTC, and synthesizes a valid DRM
    mode from the readout.
5.  **State Locking**: Invokes `intel_crtc_steal_state` to persist
    this configuration as the initial atomic state.
6.  **Cleanup & Bypass**: Removes unused connectors to prevent interference
    and skips the standard heavyweight output setup if a valid BIOS
    configuration is successfully reconstructed.

This ensures the kernel driver seamlessly takes over the display without
an intermediate modeset, preserving the splash screen.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_display.h       |   2 -
 .../gpu/drm/i915/display/intel_display_driver.c    | 309 +++++++++++++++++++--
 2 files changed, 286 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 2a6a75fc8e0e202c7d63478c3d9541248e474d6a..0eb6d08e95f412a7d0999ee846f2769ce13ff2ab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -531,8 +531,6 @@ int intel_initial_commit(struct intel_display *display);
 void intel_panel_sanitize_ssc(struct intel_display *display);
 void intel_update_czclk(struct intel_display *display);
 void intel_setup_encoders(struct intel_display *display);
-void intel_panel_sanitize_ssc(struct drm_i915_private *i915);
-void intel_update_czclk(struct drm_i915_private *i915);
 void intel_atomic_helper_free_state_worker(struct work_struct *work);
 enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 				      const struct drm_display_mode *mode);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index cf1c14412abea724a549c5670b6344522fd36037..80927d2674d32c0d96b141a97e1c60217b4d01b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/vga_switcheroo.h>
+#include <linux/slab.h>
 #include <acpi/video.h>
 #include <drm/display/drm_dp_mst_helper.h>
 #include <drm/drm_atomic_helper.h>
@@ -17,48 +18,62 @@
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
 
+#include <drm/drm_atomic_uapi.h>
+
+#include "intel_display_regs.h"
+#include <drm/drm_encoder.h>
 #include "i915_drv.h"
 #include "i915_utils.h"
+#include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "intel_acpi.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
+#include "intel_backlight.h"
 #include "intel_bios.h"
-#include "intel_bw.h"
 #include "intel_cdclk.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_display_core.h"
+#include "intel_ddi.h"
+#include "intel_de.h"
+#include "intel_display.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_driver.h"
 #include "intel_display_irq.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_display_wa.h"
-#include "intel_dkl_phy.h"
-#include "intel_dmc.h"
+#include "intel_dpll.h"
+#include "intel_dpt.h"
+#include "intel_dpt_common.h"
 #include "intel_dp.h"
 #include "intel_dp_tunnel.h"
-#include "intel_dpll.h"
-#include "intel_dpll_mgr.h"
+#include "intel_dkl_phy.h"
+#include "intel_dmc.h"
+#include "intel_bw.h"
+#include "intel_quirks.h"
+#include "intel_modeset_lock.h"
+#include "intel_hti.h"
+#include "intel_modeset_setup.h"
 #include "intel_fb.h"
-#include "intel_fbc.h"
 #include "intel_fbdev.h"
 #include "intel_fdi.h"
 #include "intel_flipq.h"
 #include "intel_gmbus.h"
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
-#include "intel_hti.h"
-#include "intel_modeset_lock.h"
-#include "intel_modeset_setup.h"
 #include "intel_opregion.h"
 #include "intel_overlay.h"
-#include "intel_plane_initial.h"
+#include "intel_panel.h"
+#include "intel_pch_display.h"
+#include "intel_pcode.h"
 #include "intel_pmdemand.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_quirks.h"
+#include "intel_snps_phy.h"
+#include "intel_tc.h"
 #include "intel_vga.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
@@ -454,6 +469,8 @@ bool intel_display_driver_check_access(struct intel_display *display)
 /* part #2: call after irq install, but before gem init */
 int intel_display_driver_probe_nogem(struct intel_display *display)
 {
+	bool found_initial_config = false;
+	struct intel_crtc *crtc;
 	enum pipe pipe;
 	int ret;
 
@@ -468,22 +485,264 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 
 	intel_gmbus_setup(display);
 
+	intel_dpll_init(display);
+	intel_setup_encoders(display);
+
 	drm_dbg_kms(display->drm, "%d display pipe%s available.\n",
 		    INTEL_NUM_PIPES(display),
 		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
+		for_each_pipe(display, pipe) {
+			ret = intel_crtc_init(display, pipe);
+			if (ret)
+				goto err_mode_config;
+		}
 
-	for_each_pipe(display, pipe) {
-		ret = intel_crtc_init(display, pipe);
-		if (ret)
-			goto err_mode_config;
+		if (display->funcs.display && display->funcs.display->post_crtc_init_hook)
+			display->funcs.display->post_crtc_init_hook(display);
+	display->funcs.display->initial_plane_config(display);
+
+
+	for_each_intel_crtc(display->drm, crtc) {
+		struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
+
+		if (!to_intel_plane_state(crtc->base.primary->state)->uapi.fb) {
+			crtc_state->uapi.active = false;
+			crtc_state->hw.active = false;
+			crtc->active = false;
+			continue;
+		}
+
+		if (intel_crtc_get_pipe_config(crtc_state)) {
+			if (crtc_state->hw.pipe_mode.hdisplay == 1128) {
+				crtc_state->hw.pipe_mode.hdisplay *= 2;
+				crtc_state->hw.pipe_mode.crtc_hdisplay *= 2;
+				crtc_state->hw.pipe_mode.htotal *= 2;
+				crtc_state->hw.pipe_mode.crtc_htotal *= 2;
+			}
+
+			struct intel_encoder *encoder = NULL;
+			enum port port;
+			u32 tmp;
+
+			/* Find the active encoder to get the clock */
+			tmp = intel_de_read(display, TRANS_DDI_FUNC_CTL(display, crtc_state->cpu_transcoder));
+			port = REG_FIELD_GET(TRANS_DDI_PORT_MASK, tmp);
+			for_each_intel_encoder(display->drm, encoder) {
+				if (encoder->port == port) {
+					break;
+				}
+			}
+
+
+			if (encoder && encoder->port == port) {
+				/*
+				 * The clock is not known at this point. It will be filled in
+				 * when the encoder's get_config is called.
+				 */
+				encoder->get_config(encoder, crtc_state);
+
+				if (crtc_state->hw.adjusted_mode.crtc_clock == 112492) {
+					crtc_state->hw.adjusted_mode.crtc_clock *= 2;
+				}
+
+				/*
+				 * HACK: MSO Fixup for readout (Fastboot path).
+				 * If we read out the split MSO mode (1128), scale it up to the
+				 * logical mode (2256) so it matches the VBT/User mode.
+				 */
+				if (crtc_state->hw.pipe_mode.hdisplay == 1128) {
+
+					/* Scale ALL horizontal timings to prevent invalid mode (Sync < Active) */
+					crtc_state->hw.pipe_mode.hdisplay *= 2;
+					crtc_state->hw.pipe_mode.hsync_start *= 2;
+					crtc_state->hw.pipe_mode.hsync_end *= 2;
+					crtc_state->hw.pipe_mode.htotal *= 2;
+
+					crtc_state->hw.pipe_mode.crtc_hdisplay *= 2;
+					crtc_state->hw.pipe_mode.crtc_hsync_start *= 2;
+					crtc_state->hw.pipe_mode.crtc_hsync_end *= 2;
+					crtc_state->hw.pipe_mode.crtc_htotal *= 2;
+					crtc_state->hw.pipe_mode.crtc_hblank_start *= 2;
+					crtc_state->hw.pipe_mode.crtc_hblank_end *= 2;
+
+					/* Scale clock */
+					crtc_state->hw.pipe_mode.crtc_clock *= 2;
+					crtc_state->hw.pipe_mode.clock *= 2;
+
+					/* Fix name */
+					snprintf(crtc_state->hw.pipe_mode.name, DRM_DISPLAY_MODE_LEN, "%dx%d",
+							crtc_state->hw.pipe_mode.hdisplay, crtc_state->hw.pipe_mode.vdisplay);
+				} else if (crtc_state->hw.pipe_mode.hdisplay == 2256 &&
+						crtc_state->hw.pipe_mode.crtc_hsync_start == 1152) {
+
+					/* Geometry is already scaled, but Sync/Blank are raw. Fix them. */
+					crtc_state->hw.pipe_mode.hsync_start *= 2;
+					crtc_state->hw.pipe_mode.hsync_end *= 2;
+					crtc_state->hw.pipe_mode.crtc_hsync_start *= 2;
+					crtc_state->hw.pipe_mode.crtc_hsync_end *= 2;
+					crtc_state->hw.pipe_mode.crtc_hblank_start *= 2;
+					crtc_state->hw.pipe_mode.crtc_hblank_end *= 2;
+				}
+				/* Link the encoder to the CRTC */
+				encoder->base.crtc = &crtc->base;
+
+				/*
+				 * Copy crtc_clock to clock for drm_mode_vrefresh()
+				 */
+				crtc_state->hw.adjusted_mode.clock = crtc_state->hw.adjusted_mode.crtc_clock;
+
+				/*
+				 * Copy the timings from the pipe_mode to the adjusted_mode
+				 * to ensure the full mode is available for state stealing.
+				 */
+
+				crtc_state->hw.adjusted_mode.hdisplay = crtc_state->hw.pipe_mode.hdisplay;
+				crtc_state->hw.adjusted_mode.vdisplay = crtc_state->hw.pipe_mode.vdisplay;
+				/* Copy to both sets of timing fields for consistency */
+				crtc_state->hw.adjusted_mode.htotal = crtc_state->hw.pipe_mode.crtc_htotal;
+				crtc_state->hw.adjusted_mode.vtotal = crtc_state->hw.pipe_mode.crtc_vtotal;
+				crtc_state->hw.adjusted_mode.crtc_hdisplay = crtc_state->hw.pipe_mode.crtc_hdisplay;
+				crtc_state->hw.adjusted_mode.crtc_htotal = crtc_state->hw.pipe_mode.crtc_htotal;
+				crtc_state->hw.adjusted_mode.crtc_vtotal = crtc_state->hw.pipe_mode.crtc_vtotal;
+
+				/*FIX: Also copy HSync/Blank to ensure valid adjusted_mode */
+				crtc_state->hw.adjusted_mode.hsync_start = crtc_state->hw.pipe_mode.crtc_hsync_start;
+				crtc_state->hw.adjusted_mode.hsync_end = crtc_state->hw.pipe_mode.crtc_hsync_end;
+				crtc_state->hw.adjusted_mode.crtc_hsync_start = crtc_state->hw.pipe_mode.crtc_hsync_start;
+				crtc_state->hw.adjusted_mode.crtc_hsync_end = crtc_state->hw.pipe_mode.crtc_hsync_end;
+
+				crtc_state->hw.adjusted_mode.crtc_hblank_start = crtc_state->hw.pipe_mode.crtc_hblank_start;
+				crtc_state->hw.adjusted_mode.crtc_hblank_end = crtc_state->hw.pipe_mode.crtc_hblank_end;
+				crtc_state->uapi.encoder_mask = drm_encoder_mask(&encoder->base);
+
+				/* Sync the UAPI state with the read-out HW state */
+				drm_mode_copy(&crtc_state->uapi.mode, &crtc_state->hw.adjusted_mode);
+				drm_mode_copy(&crtc_state->uapi.adjusted_mode, &crtc_state->hw.adjusted_mode);
+				crtc->base.enabled = true;
+				crtc->active = true;
+				drm_mode_copy(&crtc->base.mode, &crtc_state->hw.mode);
+				drm_mode_copy(&crtc->base.hwmode, &crtc_state->hw.adjusted_mode);
+				crtc_state->uapi.enable = crtc->base.enabled;
+				crtc_state->uapi.active = crtc->active;
+
+				if (drm_atomic_set_mode_for_crtc(&crtc_state->uapi, &crtc_state->hw.adjusted_mode) < 0) {
+				}
+
+				struct drm_connector *connector = NULL;
+				struct drm_connector_list_iter conn_iter;
+
+				drm_connector_list_iter_begin(display->drm, &conn_iter);
+				drm_for_each_connector_iter(connector, &conn_iter) {
+					if (to_intel_connector(connector)->encoder == encoder) {
+
+						struct drm_display_mode *mode;
+
+						/* Clear out any modes added by VBT parsing */
+						struct drm_display_mode *next;
+
+						mutex_lock(&display->drm->mode_config.mutex);
+						list_for_each_entry_safe(mode, next, &connector->probed_modes, head)
+							drm_mode_destroy(display->drm, mode);
+
+						connector->status = connector_status_connected;
+
+						mode = kzalloc(sizeof(*mode), GFP_KERNEL);
+						if (mode) {
+							drm_mode_copy(mode, &crtc_state->hw.adjusted_mode);
+							drm_mode_probed_add(connector, mode);
+							connector->state->crtc = &crtc->base;
+						}
+						mutex_unlock(&display->drm->mode_config.mutex);
+						break;
+					}
+				}
+				drm_connector_list_iter_end(&conn_iter);
+
+				intel_crtc_steal_state(crtc_state);
+
+				found_initial_config = true;
+			}
+		}
+	}
+
+	if (found_initial_config) {
+		struct intel_crtc *active_crtc = NULL;
+		struct intel_encoder *active_encoder = NULL;
+		struct intel_connector *active_connector = NULL;
+		struct intel_connector *connector, *tmp;
+		struct drm_connector_list_iter conn_iter;
+		enum pipe pipe;
+
+		/* Find the single active CRTC pipe */
+		for_each_intel_crtc(display->drm, crtc) {
+			if (to_intel_crtc_state(crtc->base.state)->hw.active) {
+				active_crtc = crtc;
+				break;
+			}
+		}
+
+		/*
+		 * Find the active encoder by checking the HW state of all encoders
+		 * to see which one is driving the active pipe.
+		 */
+		if (active_crtc) {
+			struct intel_encoder *encoder;
+
+			for_each_intel_encoder(display->drm, encoder) {
+				if (encoder->get_hw_state(encoder, &pipe) && pipe == active_crtc->pipe) {
+					active_encoder = encoder;
+					break;
+				}
+			}
+		}
+
+		/* Find the connector attached to the active encoder */
+		if (active_encoder) {
+			drm_connector_list_iter_begin(display->drm, &conn_iter);
+			for_each_intel_connector_iter(connector, &conn_iter) {
+				if (connector->encoder == active_encoder) {
+					active_connector = connector;
+					break;
+				}
+			}
+			drm_connector_list_iter_end(&conn_iter);
+		}
+
+		/*
+		 * Clean up any connectors that were initialized for probing but
+		 * are not actually part of the active modeset.
+		 */
+		list_for_each_entry_safe(connector, tmp, &display->drm->mode_config.connector_list, base.head) {
+			if (connector != active_connector) {
+				drm_connector_cleanup(&connector->base);
+				kfree(connector);
+			}
+		}
+
+		if (active_connector && active_crtc) {
+
+			if (active_encoder->type == INTEL_OUTPUT_EDP) {
+				struct intel_dp *intel_dp = enc_to_intel_dp(active_encoder);
+
+				intel_pps_vdd_on_unlocked(intel_dp);
+				intel_backlight_setup(active_connector, active_crtc->pipe);
+				intel_pps_vdd_off_unlocked(intel_dp, false);
+			} else {
+				intel_backlight_setup(active_connector, active_crtc->pipe);
+			}
+		}
+		to_intel_cdclk_state(display->cdclk.obj.state)->logical = display->cdclk.hw;
+		to_intel_cdclk_state(display->cdclk.obj.state)->actual = display->cdclk.hw;
+	} else {
+		/* Fallback to full setup if no initial config was found */
+		intel_update_czclk(display);
+		intel_display_driver_init_hw(display);
 	}
 
 	intel_plane_possible_crtcs_init(display);
-	intel_dpll_init(display);
+
 	intel_fdi_pll_freq_update(display);
 
-	intel_update_czclk(display);
-	intel_display_driver_init_hw(display);
 	intel_dpll_update_ref_clks(display);
 
 	if (display->cdclk.max_cdclk_freq == 0)
@@ -491,7 +750,8 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 
 	intel_hti_init(display);
 
-	intel_setup_outputs(display);
+	/* Just disable it once at startup */
+	intel_vga_disable(display);
 
 	ret = intel_dp_tunnel_mgr_init(display);
 	if (ret)
@@ -500,12 +760,15 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 	intel_display_driver_disable_user_access(display);
 
 	drm_modeset_lock_all(display->drm);
-	intel_modeset_setup_hw_state(display, display->drm->mode_config.acquire_ctx);
+
+	if (!found_initial_config) {
+		intel_modeset_setup_hw_state(display, display->drm->mode_config.acquire_ctx);
+	} else {
+	}
+
 	intel_acpi_assign_connector_fwnodes(display);
 	drm_modeset_unlock_all(display->drm);
 
-	intel_initial_plane_config(display);
-
 	/*
 	 * Make sure hardware watermarks really match the state we read out.
 	 * Note that we need to do this after reconstructing the BIOS fb's
@@ -527,7 +790,7 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 /* part #3: call after gem init */
 int intel_display_driver_probe(struct intel_display *display)
 {
-	int ret;
+	int ret = 0;
 
 	if (!HAS_DISPLAY(display))
 		return 0;
@@ -570,8 +833,8 @@ void intel_display_driver_register(struct intel_display *display)
 		return;
 
 	/* Must be done after probing outputs */
+	/* intel_acpi_video_register(display); */
 	intel_opregion_register(display);
-	intel_acpi_video_register(display);
 
 	intel_audio_init(display);
 

-- 
2.52.0.457.g6b5491de43-goog

