Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 404B9D301C2
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D5710E87A;
	Fri, 16 Jan 2026 11:08:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="RF2cfMK+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f74.google.com (mail-dl1-f74.google.com [74.125.82.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93ED310E7B2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 16:55:43 +0000 (UTC)
Received: by mail-dl1-f74.google.com with SMTP id
 a92af1059eb24-11b9786fb51so7136703c88.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jan 2026 08:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1768496143; x=1769100943;
 darn=lists.freedesktop.org; 
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=Nn6cPsAYtQFTKYtJyUKSSUcHQ6X5lDM8Qh43AxxJzlA=;
 b=RF2cfMK+EC5E5pxPF8q3NDY/MVumoFB01R21lc1qdPTvnhh01KGl1kx/+mE618Ywen
 VTb+gar2IHdxz8m9PKSncK9gT1cds1BFxMgFXZM0shmaNdpkTeerrXj7tFHulk2zPKku
 AkEs57HOCVtQ5CpRRQ14ahQqWAupsDvb58CSppH8EJ9ke55Q+s3DMh5KZeYwbBqNUKLt
 a1UmZ8LWpB3vctdlc2WLCdSZ8Cr+1/8Hq1BKQmAjirR3kuZdVa2oNTGpEsxQiSmDkp6D
 oeqnvN/iuXj2wVpX2OfcmuuqZQCQGwPZ4MJgq8iV/4Hr5OO+eHVsuAB91qCYAj81QXhN
 ncqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768496143; x=1769100943;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Nn6cPsAYtQFTKYtJyUKSSUcHQ6X5lDM8Qh43AxxJzlA=;
 b=RhjbULxqKrrBkf394DHpDB8AH2Eo337Zd3BDnfFzIJ3kYWHHOuFg2IH2t9YXWbNNgQ
 0o5ZU9e+Is4ioNWmkSIBOP6sXHGam1rXdq9KwluA124n+pJCZlfVQBX6SttbYAsUNpFy
 8rBLcQUKF+K7jyHlyQsHRFTBq0uaJbpUZSCwIUmZsCbQl4PUpwu8rxw5kf7EONaSawDJ
 QYYo2hncO/RygVJ1yt0QUjpJQOQw8OpUSPccgR5hB/yyNrN8zmZtnCSl/uWXYJhgyQr1
 hJvSUA8ihOIVCOcvOD0jOCIc23IFirT5Hz6dUQc9Fc5msbxFj11ubMTXP/QMyymRPkj0
 RWTA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWdt6+wLxoBP7HM1sRotQEXECJitF/b4j8HPCMND+JsaciwKnvPguflKdEMQcxIsDXEqQ6usMM78dE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxOA2rdaVLHzkE7YWEPBvzBt22xJlBDN2UfJiI7WCiSU1u+WJve
 DDeZdrkmChFh3FfoxbGhpfdoCgsDwoNZQS5fGQ2TP+eYZ1uiJ89HwRnXcnm9aEF+dhm30Ztd8h6
 75W6RZ+4Bvxqgow==
X-Received: from dlbcq14.prod.google.com
 ([2002:a05:7022:248e:b0:11d:d033:7c3a])
 (user=jdsultan job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:7022:b8d:b0:11a:3734:3db3 with SMTP id
 a92af1059eb24-1244a769e03mr292497c88.32.1768496142691; 
 Thu, 15 Jan 2026 08:55:42 -0800 (PST)
Date: Thu, 15 Jan 2026 08:54:48 -0800
In-Reply-To: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Mime-Version: 1.0
References: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
X-Developer-Key: i=jdsultan@google.com; a=ed25519;
 pk=RhTSABMOTIhvVE7NYiZwn1iDGYYNbaN092nvaEF2dxo=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768496136; l=24292;
 i=jdsultan@google.com; s=20260115; h=from:subject:message-id;
 bh=/Qw7J7TJrdHaE+WNysw0Fqa4HCl/Jad3uV5ReVuGWBw=;
 b=MNiSRvULNN7h1l1ooBFnjOauVQR+8mCfOOf0xxTWythFRXjOEwtO2t2x/t64ayN2vDdoSpff3
 ejMQZe9QS/8C4yJ5S6tIxrVVW/KND2qQ9qJwjbVjysBJ1O7DTGv4eHb
X-Mailer: b4 0.14.2
Message-ID: <20260115-upstream-prep-v1-2-001d5b38fc11@google.com>
Subject: [PATCH RFC 02/10] drm/xe/display: Implement seamless boot state
 reconstruction for PTL
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

To achieve a flicker-free transition from bootloader to kernel (fastboot)
on Panther Lake (PTL), the driver must accurately reconstruct the
hardware state established by the BIOS before the first atomic commit.

Currently, the Xe driver initialization sequence may reset hardware or
fail to populate essential state (like MSO configurations or DP link
rates), leading to a blank screen or visual artifacts during boot.

This patch introduces a comprehensive state reconstruction path:

1.  **Passive Encoder Setup**: Adds `intel_setup_encoders` to discover
    ports and create encoder objects based on VBT data without triggering
    disruptive probing sequences.

2.  **BIOS State Readout**:
    *   Implements `xe_initial_pll_enable` to identify active pipes
        and ensure PLLs, PPS, and VDD are correctly tracked in software.
    *   Reconstructs `intel_dp` state (link rates, lane counts) using
        hardware readout, falling back to VBT values if DPCD reads fail
        (common during early init).

3.  **MSO & VBT Fixes**:
    *   Parses EDID early to fix up MSO (Multi-Segment Operation)
        timings and flags.
    *   Adds overrides for incorrect VBT link rate reports on PTL.
    *   Forces MSO configuration if detection fails but is required by
        the platform.

4.  **Power Management**:
    *   Grabs a persistent `POWER_DOMAIN_INIT` reference in
        `xe_display_register` to prevent the hardware from power-gating
        active pipes when the initial wakerefs are dropped.

Signed-off-by: Juasheem Sultan <jdsultan@google.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c         |  40 ++-
 drivers/gpu/drm/i915/display/intel_cdclk.c        |  36 ---
 drivers/gpu/drm/i915/display/intel_cdclk.h        |  41 ++-
 drivers/gpu/drm/i915/display/intel_display.h      |   4 +
 drivers/gpu/drm/i915/display/intel_display_core.h |   2 +
 drivers/gpu/drm/xe/display/xe_display.c           | 309 +++++++++++++++++++++-
 drivers/gpu/drm/xe/display/xe_display.h           |   2 +
 drivers/gpu/drm/xe/xe_device.c                    |   2 +-
 8 files changed, 383 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 3596dce84c2863b85dd7c3e3baf0364e560b2777..fc6291e6b3ea6715283fc1cff80a175fdda34045 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -43,6 +43,8 @@
 #include "intel_display_types.h"
 #include "intel_gmbus.h"
 
+#include "intel_ddi.h"
+
 #define _INTEL_BIOS_PRIVATE
 #include "intel_vbt_defs.h"
 
@@ -1540,10 +1542,22 @@ parse_edp(struct intel_display *display,
 	panel->vbt.edp.drrs_msa_timing_delay =
 		panel_bits(edp->sdrrs_msa_timing_delay, panel_type, 2);
 
-	if (display->vbt.version >= 244)
-		panel->vbt.edp.max_link_rate =
-			edp->edp_max_port_link_rate[panel_type] * 20;
+	if (display->vbt.version >= 244) {
+	u8 edp_max_port_link_rate =
+	    edp->edp_max_port_link_rate[panel_type];
 
+	if (display->vbt.version >= 263) {
+			panel->vbt.edp.max_link_rate =
+		(edp_max_port_link_rate & 0x7) * 20;
+	} else {
+	    /*
+	     * HACK: The VBT is reporting a lower max link rate than supported.
+	     * Override to HBR3 (8.1 Gbps) as per direct VBT hexdump analysis.
+	     */
+	    panel->vbt.edp.max_link_rate = 810000; /* Force HBR3 (8.1 Gbps) */
+	}
+
+	}
 	if (display->vbt.version >= 251)
 		panel->vbt.edp.dsc_disable =
 			panel_bool(edp->edp_dsc_disable, panel_type);
@@ -3778,3 +3792,23 @@ void intel_bios_debugfs_register(struct intel_display *display)
 	debugfs_create_file("i915_vbt", 0444, display->drm->debugfs_root,
 			    display, &intel_bios_vbt_fops);
 }
+
+/**
+* intel setup_encoders - minimally initialize encoders to identify ports
+* @dev_priv: i915 device instance
+*
+* This functions is a stripped-down version of intel_setup_outputs(). Its sole purpose is to iterate over the VBT chidl devices to discover which physical prots exist and initialize the corresponding intel_encoder software objects.
+*
+* This is critical for the flicker-free boot path, where we need to identify
+* the active encoder by its port number before a full modeset has occurred.
+* This function populates the required encoder->port fields without creating
+* connectors or triggering a full output probe, which would cause flicker.
+*/
+void intel_setup_encoders(struct intel_display *display)
+{
+	if (HAS_DDI(display)) {
+		intel_bios_for_each_encoder(display, intel_ddi_init_encoder_early);
+	} else {
+		drm_dbg_kms(display->drm, "Non-DDI platform in minimal encoder setup, may need more\n");
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9725eebe5706a8a737d3b8d3f1de65f0e7455343..61ec5d8b14e24e9edb5fb1e2b84d0c8d1519133e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -116,42 +116,6 @@
  * dividers can be programmed correctly.
  */
 
-struct intel_cdclk_state {
-	struct intel_global_state base;
-
-	/*
-	 * Logical configuration of cdclk (used for all scaling,
-	 * watermark, etc. calculations and checks). This is
-	 * computed as if all enabled crtcs were active.
-	 */
-	struct intel_cdclk_config logical;
-
-	/*
-	 * Actual configuration of cdclk, can be different from the
-	 * logical configuration only when all crtc's are DPMS off.
-	 */
-	struct intel_cdclk_config actual;
-
-	/* minimum acceptable cdclk to satisfy bandwidth requirements */
-	int bw_min_cdclk;
-	/* minimum acceptable cdclk for each pipe */
-	int min_cdclk[I915_MAX_PIPES];
-	/* minimum acceptable voltage level for each pipe */
-	u8 min_voltage_level[I915_MAX_PIPES];
-
-	/* pipe to which cd2x update is synchronized */
-	enum pipe pipe;
-
-	/* forced minimum cdclk for glk+ audio w/a */
-	int force_min_cdclk;
-
-	/* bitmask of active pipes */
-	u8 active_pipes;
-
-	/* update cdclk with pipes disabled */
-	bool disable_pipes;
-};
-
 struct intel_cdclk_funcs {
 	void (*get_cdclk)(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index cacee598af0e2a8d0c379b011f65dcc610a7b9d7..07f8b184b5fef1b79959fd4257b1aeb94c81c524 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -8,9 +8,10 @@
 
 #include <linux/types.h>
 
-enum pipe;
+#include "intel_display_limits.h"
+#include "intel_global_state.h"
+
 struct intel_atomic_state;
-struct intel_cdclk_state;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_display;
@@ -22,6 +23,42 @@ struct intel_cdclk_config {
 	bool joined_mbus;
 };
 
+struct intel_cdclk_state {
+	struct intel_global_state base;
+
+	/*
+	 * Logical configuration of cdclk (used for all scaling,
+	 * watermark, etc. calculations and checks). This is
+	 * computed as if all enabled crtcs were active.
+	 */
+	struct intel_cdclk_config logical;
+
+	/*
+	 * Actual configuration of cdclk, can be different from the
+	 * logical configuration only when all crtc's are DPMS off.
+	 */
+	struct intel_cdclk_config actual;
+
+	/* minimum acceptable cdclk to satisfy bandwidth requirements */
+	int bw_min_cdclk;
+	/* minimum acceptable cdclk for each pipe */
+	int min_cdclk[I915_MAX_PIPES];
+	/* minimum acceptable voltage level for each pipe */
+	u8 min_voltage_level[I915_MAX_PIPES];
+
+	/* pipe to which cd2x update is synchronized */
+	enum pipe pipe;
+
+	/* forced minimum cdclk for glk+ audio w/a */
+	int force_min_cdclk;
+
+	/* bitmask of active pipes */
+	u8 active_pipes;
+
+	/* update cdclk with pipes disabled */
+	bool disable_pipes;
+};
+
 void intel_cdclk_init_hw(struct intel_display *display);
 void intel_cdclk_uninit_hw(struct intel_display *display);
 void intel_init_cdclk_hooks(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 37e2ab301a80ef123bbdb4af9d4258b8fb6880ce..20e7ee02d57c28e1b4a67faecc3e82acc7d8cd02 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -529,6 +529,10 @@ void intel_setup_outputs(struct intel_display *display);
 int intel_initial_commit(struct intel_display *display);
 void intel_panel_sanitize_ssc(struct intel_display *display);
 void intel_update_czclk(struct intel_display *display);
+void intel_setup_encoders(struct intel_display *display);
+void intel_panel_sanitize_ssc(struct drm_i915_private *i915);
+void intel_update_czclk(struct drm_i915_private *i915);
+void intel_atomic_helper_free_state_worker(struct work_struct *work);
 enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 				      const struct drm_display_mode *mode);
 int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 8c226406c5cd0a47bd5cd9ddf668e0825103c06f..becdee5109e20d0eb6d1bf80a6a021e25ad7fc1b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -74,6 +74,8 @@ struct intel_display_funcs {
 	void (*crtc_disable)(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc);
 	void (*commit_modeset_enables)(struct intel_atomic_state *state);
+	void (*post_crtc_init_hook)(struct intel_display *display);
+	void (*initial_plane_config)(struct intel_display *display);
 };
 
 /* functions used for watermark calcs for display. */
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 19e691fccf8ce8866cb2ea4e2139a8e5cb3e8bc9..8950880618c2314d62477437d069359cd835bd47 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -13,17 +13,25 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_atomic.h>
+#include <drm/drm_modeset_lock.h>
+#include <drm/drm_edid.h>
 #include <uapi/drm/xe_drm.h>
 
 #include "soc/intel_dram.h"
 #include "intel_acpi.h"
 #include "intel_audio.h"
 #include "intel_bw.h"
+#include "intel_cdclk.h"
 #include "intel_display.h"
 #include "intel_display_device.h"
 #include "intel_display_driver.h"
 #include "intel_display_irq.h"
 #include "intel_display_types.h"
+#include "intel_display_limits.h"
+#include "intel_crtc.h"
+#include "intel_de.h"
+#include "skl_universal_plane_regs.h"
 #include "intel_dmc.h"
 #include "intel_dmc_wl.h"
 #include "intel_dp.h"
@@ -32,7 +40,14 @@
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
 #include "intel_opregion.h"
+#include "intel_pch.h"
 #include "skl_watermark.h"
+#include "intel_plane_initial.h"
+#include "intel_pps.h"
+#include "intel_backlight.h"
+#include "intel_panel.h"
+#include "intel_cx0_phy.h"
+#include "intel_cx0_phy_regs.h"
 #include "xe_module.h"
 
 /* Xe device functions */
@@ -81,7 +96,7 @@ static void unset_display_features(struct xe_device *xe)
 	xe->drm.driver_features &= ~(DRIVER_MODESET | DRIVER_ATOMIC);
 }
 
-static void xe_display_fini_early(void *arg)
+static void xe_display_fini_early(struct drm_device *dev, void *arg)
 {
 	struct xe_device *xe = arg;
 	struct intel_display *display = xe->display;
@@ -99,7 +114,6 @@ static void xe_display_fini_early(void *arg)
 int xe_display_init_early(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
-	int err;
 
 	if (!xe->info.probe_display)
 		return 0;
@@ -107,32 +121,293 @@ int xe_display_init_early(struct xe_device *xe)
 	/* Fake uncore lock */
 	spin_lock_init(&xe->uncore.lock);
 
-	intel_display_driver_early_probe(display);
+	/* This must be called before any calls to HAS_PCH_* */
+	intel_pch_detect(display);
+
+	return drmm_add_action_or_reset(&xe->drm, xe_display_fini_early, xe);
+}
+
+
+
+void skl_get_initial_plane_config(struct intel_crtc *crtc, struct intel_initial_plane_config *plane_config);
+
+static void xe_initial_pll_enable(struct xe_device *xe)
+{
+	struct intel_display *display = xe->display;
+	enum pipe pipe;
+	enum pipe active_pipe = INVALID_PIPE;
+	u32 pipe_val;
+	u32 pll_val;
+	enum plane_id plane_id = PLANE_PRIMARY;
+	struct intel_crtc *crtc = NULL;
+	struct intel_crtc *iter;
+	struct intel_encoder *active_encoder = NULL;
+	struct intel_crtc_state *temp_state = NULL;
+	struct intel_connector *connector = NULL;
+	struct drm_connector *_connector;
+
+	/* 1. Find the active pipe from hardware registers */
+	for_each_pipe(display, pipe) {
+		pipe_val = intel_de_read(display, PLANE_CTL(pipe, plane_id));
+		if (pipe_val & PLANE_CTL_ENABLE) {
+			active_pipe = pipe;
+			break;
+		}
+	}
+
+	if (active_pipe == INVALID_PIPE) {
+		return;
+	}
+
+	/* 2. Find the corresponding software CRTC, encoder, and connector objects */
+	for_each_intel_crtc(&xe->drm, iter) {
+		if (iter->pipe == active_pipe) {
+			crtc = iter;
+			break;
+		}
+	}
+
+	if (!crtc) {
+		return;
+	}
+
+	for_each_intel_encoder(&xe->drm, active_encoder) {
+		if (active_encoder->pipe_mask & BIT(active_pipe))
+			break;
+	}
+
+	if (!active_encoder) {
+		return;
+	}
+
+	list_for_each_entry(_connector, &xe->drm.mode_config.connector_list, head) {
+		if (to_intel_connector(_connector)->encoder == active_encoder) {
+			connector = to_intel_connector(_connector);
+			break;
+		}
+	}
+
+	if (!connector) {
+		return;
+	}
+
+	struct intel_dp *intel_dp = enc_to_intel_dp(active_encoder);
+
+	/* 3. Create a temporary, local state object */
+	temp_state = kzalloc(sizeof(*temp_state), GFP_KERNEL);
+	if (!temp_state)
+		return;
+
+	temp_state->uapi.crtc = &crtc->base;
+	temp_state->hw.active = true;
+	temp_state->hw.enable = true;
+
+	/* 4. Populate the temporary state directly from hardware */
+	if (!intel_crtc_get_pipe_config(temp_state)) {
+		goto out_free;
+	}
+	active_encoder->get_config(active_encoder, temp_state);
+
+	/* 5. Provide VBT hints to guide the config calculation */
+	u8 vbt_lane_count = intel_bios_dp_max_lane_count(active_encoder->devdata);
+	int vbt_max_rate = connector->panel.vbt.edp.max_link_rate;
+	static const int dp_rates[] = {162000, 270000, 540000, 810000};
+	const int *source_rates;
+	int i, size, max_rate;
+
+	/* REORDERED: 7. Enable the PLL */
+	pll_val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, active_encoder->port));
+	if (pll_val & (XELPDP_LANE_PCLK_PLL_ACK(0) | XELPDP_LANE_PCLK_PLL_ACK(1))) {
+	} else {
+		intel_mtl_pll_enable(active_encoder, temp_state);
+	}
+
+	/* 8. With the PLL on, we can now safely read the DPCD */
+
+	/* Initialize PPS so we can safely check panel power state */
+	if (!intel_pps_init(intel_dp))
+		drm_warn(&xe->drm, "DEBUG: intel_pps_init failed\n");
+
+	/* Ensure VDD is on for software tracking to match hardware */
+	intel_pps_vdd_on_unlocked(intel_dp);
+
+	i = drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd);
+	if (i < 0) {
+		drm_warn(&xe->drm, "DEBUG: drm_dp_read_dpcd_caps failed: %d\n", i);
+	}
+
+	/* Fallback: If DPCD read 0 (or failed), use VBT values to avoid RBR fallback mismatch */
+	if (intel_dp->dpcd[DP_MAX_LINK_RATE] == 0) {
+		intel_dp->dpcd[DP_MAX_LINK_RATE] = drm_dp_link_rate_to_bw_code(vbt_max_rate);
+		if (intel_dp->dpcd[DP_MAX_LANE_COUNT] == 0)
+			intel_dp->dpcd[DP_MAX_LANE_COUNT] = vbt_lane_count;
+	}
+
+	/* Read EDID to get the correct panel mode */
+	const struct drm_edid *drm_edid = drm_edid_read_ddc(&connector->base, &intel_dp->aux.ddc);
+
+	if (!drm_edid) {
+		drm_warn(&xe->drm, "DEBUG: EDID read failed\n");
+	} else {
+		/* We need to lock mode_config to update panel modes safely */
+		mutex_lock(&xe->drm.mode_config.mutex);
+
+		/* Re-init panel early with EDID to ensure backlight presence is detected correctly */
+		intel_bios_init_panel_late(display, &connector->panel, active_encoder->devdata, drm_edid);
+
+		/* Update the connector with the EDID we just read */
+		if (drm_edid_connector_update(&connector->base, drm_edid) ||
+			!drm_edid_connector_add_modes(&connector->base)) {
+			drm_warn(&xe->drm, "DEBUG: EDID update failed\n");
+		}
 
+		/* Re-run the fixed mode logic now that we have EDID */
+		intel_panel_add_edid_fixed_modes(connector, true);
+
+		/* Also init MSO since we have EDID now */
+		if (intel_dp->mso_link_count == 0)
+			intel_edp_mso_init(intel_dp);
+
+		/* HACK: Force MSO for Panther Lake if detection failed */
+		if (intel_dp->mso_link_count == 0) {
+			intel_dp->mso_link_count = 2;
+			intel_dp->mso_pixel_overlap = 0;
+		}
+
+		/* multiply the mode clock and horizontal timings for MSO */
+		struct drm_display_mode *fixed_mode;
+
+		list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
+			intel_edp_mso_mode_fixup(connector, fixed_mode);
+		}
+
+		mutex_unlock(&xe->drm.mode_config.mutex);
+		drm_edid_free(drm_edid);
+	}
+
+	/* Now that PPS is ready and DPCD is populated, initialize backlight funcs safely */
+	intel_backlight_init_funcs(&connector->panel);
+
+	/* Replicate intel_dp_set_sink_rates logic */
+	max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
+	for (i = 0; i < ARRAY_SIZE(dp_rates); i++) {
+		if (dp_rates[i] > max_rate)
+			break;
+		intel_dp->sink_rates[i] = dp_rates[i];
+	}
+	intel_dp->num_sink_rates = i;
+
+	/* Replicate intel_dp_set_max_sink_lane_count logic */
+	intel_dp->max_sink_lane_count = drm_dp_max_lane_count(intel_dp->dpcd);
+
+	/* Replicate intel_dp_set_source_rates logic */
+	static const int bmg_rates[] = {21600, 162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000, 810000, 1000000, 1350000};
+	static const int mtl_rates[] = {21600, 162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000, 810000, 1000000, 2000000};
+	static const int icl_rates[] = {21600, 162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000, 1000000, 1350000};
+	static const int default_rates[] = {21600, 162000, 270000, 540000};
+
+	if (DISPLAY_VER(display) >= 14) {
+		if (display->platform.battlemage) {
+			source_rates = bmg_rates;
+			size = ARRAY_SIZE(bmg_rates);
+		} else {
+			source_rates = mtl_rates;
+			size = ARRAY_SIZE(mtl_rates);
+		}
+	} else if (DISPLAY_VER(display) >= 11) {
+		source_rates = icl_rates;
+		size = ARRAY_SIZE(icl_rates);
+	} else {
+		source_rates = default_rates;
+		size = ARRAY_SIZE(default_rates);
+	}
+
+	intel_dp->source_rates = source_rates;
+	intel_dp->num_source_rates = size;
+
+	/* Replicate intel_dp_set_common_rates logic using a simplified intersect_rates */
+	int common_idx = 0;
+	int src_idx = 0, sink_idx = 0;
+
+	while (src_idx < intel_dp->num_source_rates && sink_idx < intel_dp->num_sink_rates) {
+		if (intel_dp->source_rates[src_idx] == intel_dp->sink_rates[sink_idx]) {
+			intel_dp->common_rates[common_idx++] = intel_dp->source_rates[src_idx];
+			src_idx++;
+			sink_idx++;
+		} else if (intel_dp->source_rates[src_idx] < intel_dp->sink_rates[sink_idx]) {
+			src_idx++;
+		} else {
+			sink_idx++;
+		}
+	}
+	intel_dp->num_common_rates = common_idx;
+
+	if (intel_dp->num_common_rates == 0) {
+		intel_dp->common_rates[0] = 162000;
+		intel_dp->num_common_rates = 1;
+	}
+
+out_free:
+	/* 9. Discard the temporary state */
+	kfree(temp_state);
+}
+
+static struct intel_display_funcs xe_display_funcs;
+
+static void xe_display_post_crtc_init(struct intel_display *display)
+{
+	xe_initial_pll_enable(to_xe_device(display->drm));
+}
+
+int xe_display_init_noirq(struct xe_device *xe)
+{
+	struct intel_display *display = xe->display;
+	int err = 0;
+
+	intel_display_driver_early_probe(display);
 	/* Early display init.. */
 	intel_opregion_setup(display);
-
 	/*
 	 * Fill the dram structure to get the system dram info. This will be
 	 * used for memory latency calculation.
 	 */
-	err = intel_dram_detect(xe);
+	intel_dram_detect(xe);
+
 	if (err)
 		goto err_opregion;
 
 	intel_bw_init_hw(display);
-
-	intel_display_device_info_runtime_init(display);
-
 	err = intel_display_driver_probe_noirq(display);
+	if (err) {
+		intel_opregion_cleanup(display);
+		return err;
+	}
+	err = intel_cdclk_init(display);
 	if (err)
-		goto err_opregion;
+		return err;
+	intel_cdclk_init_hw(display);
+	to_intel_cdclk_state(display->cdclk.obj.state)->actual = display->cdclk.hw;
+	to_intel_cdclk_state(display->cdclk.obj.state)->logical = display->cdclk.hw;
+	intel_display_device_info_runtime_init(display);
+	if (xe->info.probe_display) {
+		if (display->funcs.display) {
+			xe_display_funcs = *display->funcs.display;
+			xe_display_funcs.initial_plane_config = intel_initial_plane_config; //xe_initial_plane_config_override;
+			xe_display_funcs.get_initial_plane_config = skl_get_initial_plane_config;
+			xe_display_funcs.post_crtc_init_hook = xe_display_post_crtc_init;
+			display->funcs.display = &xe_display_funcs;
+		}
+	}
 
 	err = intel_display_driver_probe_nogem(display);
 	if (err)
 		goto err_noirq;
 
-	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_early, xe);
+	err = intel_display_driver_probe(display);
+	if (err)
+		goto err_noirq;
+
+	return drmm_add_action_or_reset(&xe->drm, xe_display_fini_early, xe);
 err_noirq:
 	intel_display_driver_remove_noirq(display);
 	intel_power_domains_cleanup(display);
@@ -160,7 +435,7 @@ int xe_display_init(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return 0;
 
-	err = intel_display_driver_probe(display);
+	err = intel_display_driver_probe_nogem(display);
 	if (err)
 		return err;
 
@@ -174,6 +449,18 @@ void xe_display_register(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
+	/*
+	 * FIXME: On PTL, the initial commit fails to grab the necessary runtime
+	 * power references for the active pipes/transcoders. When
+	 * intel_power_domains_enable() drops the POWER_DOMAIN_INIT wakeref,
+	 * the display hardware powers down.
+	 *
+	 * Workaround: Manually grab a persistent reference to POWER_DOMAIN_INIT
+	 * here. This effectively keeps the boot configuration powered until
+	 * driver unload or a future fix addresses the root cause in fastset.
+	 */
+	intel_display_power_get(display, POWER_DOMAIN_INIT);
+
 	intel_display_driver_register(display);
 	intel_power_domains_enable(display);
 }
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index e533aa4750bc11bfaf9a2b81e2dd8c1ac6ee58bc..d891a8abd7fc2293961c4e42be3ccf1dd1a8bb33 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -18,6 +18,7 @@ void xe_display_driver_set_hooks(struct drm_driver *driver);
 int xe_display_probe(struct xe_device *xe);
 
 int xe_display_init_early(struct xe_device *xe);
+int xe_display_init_noirq(struct xe_device *xe);
 int xe_display_init(struct xe_device *xe);
 
 void xe_display_register(struct xe_device *xe);
@@ -47,6 +48,7 @@ static inline void xe_display_driver_remove(struct xe_device *xe) {}
 static inline int xe_display_probe(struct xe_device *xe) { return 0; }
 
 static inline int xe_display_init_early(struct xe_device *xe) { return 0; }
+static inline int xe_display_init_noirq(struct xe_device *xe) { return 0; }
 static inline int xe_display_init(struct xe_device *xe) { return 0; }
 
 static inline void xe_display_register(struct xe_device *xe) {}
diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 456899238377edb92702108f7c43dcfecd635a98..bc3bc1fc91b5782aeab778b7e94ac63c8ed7b514 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -913,7 +913,7 @@ int xe_device_probe(struct xe_device *xe)
 	if (err)
 		return err;
 
-	err = xe_display_init(xe);
+	err = xe_display_init_noirq(xe);
 	if (err)
 		return err;
 

-- 
2.52.0.457.g6b5491de43-goog

