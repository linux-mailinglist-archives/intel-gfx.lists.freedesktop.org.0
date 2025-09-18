Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CC19B1D6C4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 13:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A24D910E829;
	Thu,  7 Aug 2025 11:33:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Im3yV8nP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F7110E829;
 Thu,  7 Aug 2025 11:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754566380; x=1786102380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S7/6B6W7GG5j3ah05U+TYJ/6AqK/Hv5j7y90xDeO6dY=;
 b=Im3yV8nPcZBULiaI5rzzjA066be0HkOGsd6Ef/By9umHWtS98fAOuq+h
 Q9etwQ8LG+tIjzDt1R6I5L+qHWL2oNtCpE1l6ycKn0kCzPFDLPTz8Deq/
 ZW5uph5I3sUJmH059QEmenYl/G46vzAqiUjYANZSKgFiukWW8owKZkg/6
 eUTSaYdO28ckQMkOUrKhmuGRUU5Je1goLo3rex5iOwo314QoT5Ygo+u6W
 IIEL8mWzt5RaOkuTD5lxMcEoowNs+OQNr1zRlrenph3uNCy1l7L0ZYfYh
 T6mLXbilhwh03+Zg6yBuWnznuJbr8SuhmqySFZdORW4Lc+nJXi58uL00n g==;
X-CSE-ConnectionGUID: 2IyOReFySX61ulvkWJZALQ==
X-CSE-MsgGUID: DyNMLMkhQ3qVVuby1zJpNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67167081"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="67167081"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:30:07 -0700
X-CSE-ConnectionGUID: IMPG1M1cR1K+xZgX+NjHmQ==
X-CSE-MsgGUID: H7dj46wpRPGolXs6zPDAJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="188716741"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:30:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 mitulkumar.ajitkumar.golani@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 10/12] drm/i915/vrr: Use static guardband to support seamless
 LRR switching
Date: Thu,  7 Aug 2025 16:45:46 +0530
Message-ID: <20250807111548.1490624-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
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

v2:
-Use helpers for dsc/scaler prefill latencies. (Mitul)
-Account for pkgc latency and take max of pkgc and sagv latencies.
v3: Use new helper for PSR2/Panel Replay latency.

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |   2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c     | 132 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_vrr.h     |   3 +-
 3 files changed, 133 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c542a3110051..a80a220ffc0d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4898,7 +4898,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 	struct drm_connector *connector;
 	int i;
 
-	intel_vrr_compute_config_late(crtc_state);
 
 	for_each_new_connector_in_state(&state->base, connector,
 					conn_state, i) {
@@ -4910,6 +4909,7 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
 		    !encoder->compute_config_late)
 			continue;
 
+		intel_vrr_compute_config_late(crtc_state, conn_state);
 		ret = encoder->compute_config_late(encoder, crtc_state,
 						   conn_state);
 		if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 46a85720411f..170f7bcdb8a8 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -6,12 +6,15 @@
 
 #include <drm/drm_print.h>
 
+#include "intel_alpm.h"
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
+#include "skl_scaler.h"
+#include "skl_watermark.h"
 
 #define FIXED_POINT_PRECISION		100
 #define CMRR_PRECISION_TOLERANCE	10
@@ -413,15 +416,140 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	}
 }
 
-void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
+static
+int scaler_prefill_latency(struct intel_crtc_state *crtc_state, int linetime_us)
+{
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
+	u64 hscale_k, vscale_k;
+	int cdclk_adjustment;
+	int num_scaler_users;
+
+	/*
+	 * Assuming:
+	 * Both scaler enabled.
+	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
+	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
+	 * Cdclk Adjustment : 1
+	 */
+	num_scaler_users = 2;
+	hscale_k = 2 * 1000;
+	vscale_k = 2 * 1000;
+	cdclk_adjustment = 1;
+
+	return intel_display_scaler_prefill_latency(num_scaler_users, hscale_k, vscale_k,
+						    chroma_downscaling_factor,
+						    cdclk_adjustment,
+						    linetime_us);
+}
+
+static
+int dsc_prefill_latency(struct intel_crtc_state *crtc_state, int linetime_us)
+{
+#define MAX_SCALERS 2
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
+	u64 hscale_k[MAX_SCALERS], vscale_k[MAX_SCALERS];
+	int cdclk_adjustment;
+	int num_scaler_users;
+
+	/*
+	 * Assuming:
+	 * Both scaler enabled.
+	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
+	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
+	 * Cdclk Adjustment : 1
+	 */
+	num_scaler_users = MAX_SCALERS;
+	hscale_k[0] = 2 * 1000;
+	vscale_k[0] = 2 * 1000;
+	hscale_k[1] = 2 * 1000;
+	vscale_k[1] = 1 * 1000;
+
+	cdclk_adjustment = 1;
+
+	return intel_display_dsc_prefill_latency(num_scaler_users, hscale_k, vscale_k,
+						 chroma_downscaling_factor,
+						 cdclk_adjustment,
+						 linetime_us);
+}
+
+static
+int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
+				struct intel_connector *connector)
+{
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct intel_display *display = to_intel_display(crtc_state);
+	int dsc_prefill_time = 0;
+	int psr2_pr_latency = 0;
+	int scaler_prefill_time;
+	int wm0_prefill_time;
+	int pkgc_max_latency;
+	int sagv_latency;
+	int sdp_latency = 0;
+	int guardband_us;
+	int linetime_us;
+	int guardband;
+	int pm_delay;
+
+	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
+				   adjusted_mode->crtc_clock);
+
+	pkgc_max_latency = skl_watermark_max_latency(display, 1);
+	sagv_latency = display->sagv.block_time_us;
+
+	/* Assuming max wm0 lines = 4 */
+	wm0_prefill_time = 4 * linetime_us + 20;
+
+	scaler_prefill_time = scaler_prefill_latency(crtc_state, linetime_us);
+
+	if (crtc_state->dsc.compression_enable)
+		dsc_prefill_time = dsc_prefill_latency(crtc_state, linetime_us);
+
+	pm_delay = crtc_state->framestart_delay +
+		   max(sagv_latency, pkgc_max_latency) +
+		   wm0_prefill_time +
+		   scaler_prefill_time +
+		   dsc_prefill_time;
+
+	switch (connector->base.connector_type) {
+	case DRM_MODE_CONNECTOR_eDP:
+	case DRM_MODE_CONNECTOR_DisplayPort:
+		psr2_pr_latency = intel_alpm_compute_max_link_wake_latency(crtc_state, true);
+		sdp_latency = intel_dp_compute_sdp_latency(crtc_state, true);
+		break;
+	default:
+		break;
+	}
+
+	guardband_us = max(sdp_latency, psr2_pr_latency);
+	guardband_us = max(guardband_us, pm_delay);
+
+	guardband = DIV_ROUND_UP(guardband_us, linetime_us);
+
+	/* guardband cannot be more than the Vmax vblank */
+	guardband = min(guardband, crtc_state->vrr.vmax - adjusted_mode->crtc_vblank_start);
+
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
+		if (crtc_state->uapi.vrr_enabled) {
+			crtc_state->vrr.vmin = crtc_state->vrr.guardband +
+					       adjusted_mode->crtc_vblank_start;
+			crtc_state->vrr.flipline = crtc_state->vrr.vmin;
+		}
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

