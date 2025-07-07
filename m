Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3464FAFAA9C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 06:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3E610E3F7;
	Mon,  7 Jul 2025 04:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kxgWSTPL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9578C10E3F7;
 Mon,  7 Jul 2025 04:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751863435; x=1783399435;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r4aDJqwdicsMhVV7PfKf5jzxN8O6GYAZxMqmb5wzyt0=;
 b=kxgWSTPL7WMXUcElV+mIIdESDPR2M9Qm916KKIuHvpCV/sqw5udpDiQA
 LUoZIbqs29ro9X6lgt2aWVLvRrFCt5/W4N9IK6j476RyqbYJrpGgxP17y
 OfqIntoLRt8/8itkvT5GRIbUP9x86+ZUPuiN74966tqdrKA/HaY/gWvwz
 XsWK2C3P7MlET+BH5YVb4a6SM9ROxk/KzHyd8I0WBCkJJKjE6UD5v0z0l
 oA6Fa2oWF9QCWcS5WZ0TN4FaY66QLZ1l22R7m0sMkstslneMA5x/XJAKG
 /ckLQ5mi5swsNTip0MFppdoQxm9mzSncB4j1GNSutKPRuPqEdUybWrXNa Q==;
X-CSE-ConnectionGUID: +9VF9DdZQ7uOT0UPVJNlaw==
X-CSE-MsgGUID: rC+d52YqRFCCQA57T9M3yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="54215816"
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="54215816"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 21:43:55 -0700
X-CSE-ConnectionGUID: +AcnGx0MTOaBy0FRB60fnA==
X-CSE-MsgGUID: yQPNO+rOQb6x/ttNdyh4ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="155209894"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2025 21:43:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/4] drm/i915/vrr: Use static guardband to support seamless
 LRR switching
Date: Mon,  7 Jul 2025 10:03:15 +0530
Message-ID: <20250707043321.97343-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250707043321.97343-1-ankit.k.nautiyal@intel.com>
References: <20250707043321.97343-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

In the current VRR implementation, vrr.vmin and vrr.guardband are set such
that they do not need to change when switching from fixed refresh rate to
variable refresh rate. Specifically, vrr.guardband is always set to match
the vblank length. This approach works for most cases, but not for LRR,
where the guardband would need to change while the VRR timing generator is
still active.

With the VRR TG always active, live updates to guardband are unsafe and not
recommended. To ensure hardware safety, guardband was moved out of the
!fastset block, meaning any change now requires a full modeset.
This breaks seamless LRR switching, which was previously supported.

Since the problem arises from guardband being matched to the vblank length,
solution is to use a minimal, sufficient static value, instead. So we use a
static guardband defined during mode-set that fits within the smallest
expected vblank and remains unchanged in case of features like LRR where
vtotal changes. To compute this minimum guardband we take into account
latencies/delays due to different features as mentioned in the Bspec.

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c     | 41 ++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h     |  2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     | 79 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |  3 +-
 5 files changed, 123 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 456fc4b04cda..c09f0a7f1fc1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4754,7 +4754,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
-	intel_vrr_compute_config_late(crtc_state);
 
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
@@ -4766,6 +4765,7 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 		    !encoder->compute_config_late)
 			continue;
 
+		intel_vrr_compute_config_late(crtc_state, conn_state);
 		ret = encoder->compute_config_late(encoder, crtc_state,
 						   conn_state);
 		if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ae9053919211..e44c95093dc2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -33,6 +33,7 @@
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_cursor_regs.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
@@ -4270,3 +4271,43 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 {
 	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
 }
+
+int intel_psr_compute_max_link_wake_latency(struct intel_dp *intel_dp,
+					    struct intel_crtc_state *crtc_state)
+{
+#define PHY_ESTABLISHMENT_PERIOD_MS	50000
+#define TFW_EXIT_LATENCY_MS		20000
+#define FAST_WAKE_LATENCY_MS		12000 /* Preamble: 8us; PHY wake: 4us */
+#define LFPS_PERIOD_MS			800
+#define SILENCE_MAX_MS			180
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int linkrate_mhz = crtc_state->port_clock / 1000;
+	int io_buffer_wake_ms;
+	int clock_data_switch_ms;
+	int aux_wake_latency_us;
+	int auxless_latency_us;
+	int time_ml_phy_lock_ms;
+	int num_ml_phy_lock;
+
+	io_buffer_wake_ms = intel_encoder_is_c10phy(encoder) ? 9790 : 14790;
+
+	aux_wake_latency_us =
+		DIV_ROUND_UP(io_buffer_wake_ms + TFW_EXIT_LATENCY_MS + FAST_WAKE_LATENCY_MS, 1000);
+
+	/*
+	 * TPS4 length = 252
+	 * tML_PHY_LOCK = TPS4 Length * ( 10 / (Link Rate in MHz) )
+	 * Number ML_PHY_LOCK = ( 7 + CEILING( 6.5us / tML_PHY_LOCK ) + 1)
+	 * t2 = Number ML_PHY_LOCK * tML_PHY_LOCK
+	 * tCDS term  = 2 * t2
+	 * =>tCDS_term  = 2 * (7 * (252 * (10 /linkrate))+6.5)
+	 */
+	time_ml_phy_lock_ms = (1000 * 252 * 10) / linkrate_mhz;
+	num_ml_phy_lock = 7 + DIV_ROUND_UP(6500 * 1000, time_ml_phy_lock_ms) / 1000 + 1;
+	clock_data_switch_ms = 2 * time_ml_phy_lock_ms * num_ml_phy_lock;
+
+	auxless_latency_us = (LFPS_PERIOD_MS  + SILENCE_MAX_MS + PHY_ESTABLISHMENT_PERIOD_MS +
+			      clock_data_switch_ms) / 1000;
+
+	return max(aux_wake_latency_us, auxless_latency_us);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 9b061a22361f..42277842af01 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -81,5 +81,7 @@ void intel_psr_debugfs_register(struct intel_display *display);
 bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
 bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state);
+int intel_psr_compute_max_link_wake_latency(struct intel_dp *intel_dp,
+					    struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PSR_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 46a85720411f..b73d99877ce3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -10,6 +10,8 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_panel.h"
+#include "intel_psr.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
 
@@ -413,15 +415,88 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	}
 }
 
-void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
+static
+int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
+				struct intel_connector *connector)
+{
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_dp *intel_dp;
+	int dsc_prefill_time = 0;
+	int psr2_pr_latency = 0;
+	int scaler_prefill_time;
+	int wm0_prefill_time;
+	int sdp_latency = 0;
+	int guardband_us;
+	int linetime_us;
+	int guardband;
+	int vblank_us;
+	int pm_delay;
+
+	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
+				   adjusted_mode->crtc_clock);
+
+	/* Assuming max wm0 lines = 4 */
+	wm0_prefill_time = 4 * linetime_us + 20;
+
+	/*
+	 * Assuming both scaler enabled.
+	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
+	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
+	 */
+	scaler_prefill_time = 4 * 2 * 2 * linetime_us;
+
+	if (crtc_state->dsc.compression_enable)
+		dsc_prefill_time = (3 * 2 * 2 * 2 * linetime_us) / 2;
+
+	pm_delay = crtc_state->framestart_delay +
+		   display->sagv.block_time_us +
+		   wm0_prefill_time +
+		   scaler_prefill_time +
+		   dsc_prefill_time;
+
+	switch (connector->base.connector_type) {
+	case DRM_MODE_CONNECTOR_eDP:
+	case DRM_MODE_CONNECTOR_DisplayPort:
+		intel_dp = intel_attached_dp(connector);
+		psr2_pr_latency = intel_psr_compute_max_link_wake_latency(intel_dp, crtc_state);
+		/* Assuming VSC_EXT is required */
+		sdp_latency = 10 * linetime_us;
+		break;
+	default:
+		break;
+	}
+
+	guardband_us = max(sdp_latency, psr2_pr_latency);
+	guardband_us = max(guardband_us, pm_delay);
+	vblank_us = (adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start) * linetime_us;
+
+	if (vblank_us > 0 && guardband_us > vblank_us) {
+		drm_dbg_kms(display->drm, "guardband_us %dus  > vblank_us %dus\n", guardband_us, vblank_us);
+		guardband_us = vblank_us;
+	}
+
+	guardband = DIV_ROUND_UP(guardband_us, linetime_us);
+	return guardband;
+}
+
+void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
+				   struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	if (DISPLAY_VER(display) >= 13) {
+	if (intel_vrr_always_use_vrr_tg(display)) {
+		crtc_state->vrr.guardband = intel_vrr_compute_guardband(crtc_state, connector);
+		if (crtc_state->uapi.vrr_enabled)
+			crtc_state->vrr.flipline = crtc_state->vrr.guardband +
+						   adjusted_mode->crtc_vblank_start;
+	} else if (DISPLAY_VER(display) >= 13) {
 		crtc_state->vrr.guardband =
 			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 38bf9996b883..4b15c2838492 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -21,7 +21,8 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
 void intel_vrr_check_modeset(struct intel_atomic_state *state);
 void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 			      struct drm_connector_state *conn_state);
-void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
+void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
+				   struct drm_connector_state *conn_state);
 void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_send_push(struct intel_dsb *dsb,
-- 
2.45.2

