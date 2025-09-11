Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67357B526CB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 04:59:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED91F10E065;
	Thu, 11 Sep 2025 02:59:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hyKJFdor";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08E3F10EA12;
 Thu, 11 Sep 2025 02:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757559588; x=1789095588;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NUAblypG0qm/HbBEVuuMu2pJ0lyFgPxDwBg8gOmpV8o=;
 b=hyKJFdorxl28nYTAT/ZTs5+3J0PWaRefotW2bdLwVtwxUNxmPcmZFmaT
 M3tdXQ6GG7Di5ZGq3xIh2n0Hkyehr9jljai45vkbXz7vKdfv34Ni6fKGk
 8b3Ob/OzCVEhF/qTe6PeGshsJY6dVcHGN2RMhTRRtzWxEieWhAz0sKCNK
 GVZYCeoX79JO3zYxF49FXjpLQoMPrLNAkXCal19CjpJmFGFqnfK9ZpQUx
 mXXDueUs1FNNvW3IumMb1wokkIydSLQItbXdaSLbOX9LlxOmYsXSra8Mm
 hXAt5HiKUO7hIz/EiQsmR6bxObRQLouwUu6hCMC4MAFp72rjzVx8p7oqd w==;
X-CSE-ConnectionGUID: jEIYzvH6T0qKEE8240oKNg==
X-CSE-MsgGUID: QPPGUyrwRqmM2eFlowDp/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="85327087"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="85327087"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 19:59:48 -0700
X-CSE-ConnectionGUID: uErJ6qVjQxCb9FQcNsnjaA==
X-CSE-MsgGUID: 2N3B6WfJQ/SVbY5Iym+K7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="173955564"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 19:59:46 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 12/15] drm/i915/vrr: Introduce helper to compute min static
 guardband
Date: Thu, 11 Sep 2025 08:15:51 +0530
Message-ID: <20250911024554.692469-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
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

Introduce a helper to compute the minimal sufficient guardband.

v2:
-Use helpers for dsc/scaler prefill latencies. (Mitul)
-Account for pkgc latency and take max of pkgc and sagv latencies.
v3: Use new helper for PSR2/Panel Replay latency.
v4: Avoid re-setting the Vmin/Flipline for optimized guardband.
v5:
-Refactor the function to make it as a helper which can be used to
update crtc_vblank_start and guardband can then be derived from it.
(Ville)
-Modify the subject and commit message for the same.

Bspec: 70151
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> (#v3)
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 117 +++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vrr.h |   2 +
 2 files changed, 119 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e124ef4e0ff4..002165026a20 100644
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
@@ -811,3 +814,117 @@ int intel_vrr_guardband_dsc_latency(int num_scaler_users, u64 *hscale, u64 *vsca
 
 	return dsc_prefill_latency;
 }
+
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
+	return intel_vrr_guardband_scaler_latency(num_scaler_users, hscale_k, vscale_k,
+						  chroma_downscaling_factor,
+						  cdclk_adjustment,
+						  linetime_us);
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
+	return intel_vrr_guardband_dsc_latency(num_scaler_users, hscale_k, vscale_k,
+					       chroma_downscaling_factor,
+					       cdclk_adjustment,
+					       linetime_us);
+}
+
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
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index 950041647e47..70a6063ebfb9 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -49,5 +49,7 @@ int intel_vrr_guardband_dsc_latency(int num_scaler_users, u64 *hscale, u64 *vsca
 				    int chroma_downscaling_factor,
 				    int cdclk_prefill_adjustment,
 				    int linetime);
+int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
+				struct intel_connector *connector);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

