Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 477A8BBD0BD
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 06:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF20C10E2E3;
	Mon,  6 Oct 2025 04:42:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CYwFqbwE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FDF910E3AD;
 Mon,  6 Oct 2025 04:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759725740; x=1791261740;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mCIF9uwGvBHOuItVYFj+YSUspYdHqCCMihd8kf6AYR8=;
 b=CYwFqbwEIaTpk8XmYYaVmfnOdHpIziCVvzoyAkicdEEQvEcWgUL5GdeK
 yJpvzEL1TEezWG/XkF+QUBoTfVfBqRF6fXeHvzFNGnKqegfT1VRFR9qmn
 B1A4//jkt1ZGdXJX8SFVrrBmA7iPhIVd/8iS8rFsuD7ZkBISz9pKiBoEF
 4UNFjsJsIppO8bxQznYa+M/zlOjziSucFYowVjcNy9oqjOtKqfyojWuty
 GPJOVVQuBPn29wwCf2gGMnbWA7k5YUskUuu6VHldJa26Pd2guKt/m8MDV
 pLX+AO6HZzqsUaUVGVHEoRzYA0zlH0Q4NUqKgxTgpREKNpjAj9felPIpT w==;
X-CSE-ConnectionGUID: kmufe3NgQnKlgo9k0Q4zTQ==
X-CSE-MsgGUID: Y/U6RIe1SyK2B7XhE99rpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11573"; a="61996417"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61996417"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:19 -0700
X-CSE-ConnectionGUID: lyx8V7W3T226jOmPqdCgVw==
X-CSE-MsgGUID: fKJ71mvJQSKbSdW2CaoCuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="179063010"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:18 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 08/16] drm/i915/display: Add guardband check for feature
 latencies
Date: Mon,  6 Oct 2025 09:58:44 +0530
Message-ID: <20251006042852.263249-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
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

Add a check during atomic crtc check phase to ensure the programmed VRR
guardband is sufficient to cover latencies introduced by enabled features
such as DSC, PSR/PR, scalers, and DP SDPs.

Currently, the guardband is programmed to match the vblank length, so
existing checks in skl_is_vblank_too_short() are valid. However, upcoming
changes will optimize the guardband independently of vblank, making those
checks incorrect.

Introduce an explicit guardband check to prepare for future updates
that will remove checking against the vblank length and later program an
optimized guardband.

Note: Need some work to account for package C state latency and the use
of PKG_C_Latency register. When PKG_C_LATENCY is configured hardware will
automatically wake from package C states before framestart so that
package C state latency can be considered to be 0.

v2: Use new helper for PSR2/Panel Replay latency.

v3:
- Align the name of helper with intel_crtc_atomic_check and rename it to
  intel_crtc_guardband_atomic_check(). (Jani)
- Simplify checks in the helper. (Mitul)
- Make a separate helper to compute wm0 prefill time. (Mitul)

v4: Drop redundant HAS_VRR() check. (Jani).

v5:
- Use intel_usecs_to_scanlines() instead of hand rolled stuff. (Ville)
- Allow guardband check on all VRR supporting platforms.
- Add a TODO note for accounting for pkgc latency.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> (#v3)
---
 drivers/gpu/drm/i915/display/intel_display.c | 147 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 3 files changed, 149 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b57efd870774..ec415b939770 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4189,6 +4189,147 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
 	return 0;
 }
 
+static int
+cdclk_prefill_adjustment(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_atomic_state *state =
+		to_intel_atomic_state(crtc_state->uapi.state);
+	const struct intel_cdclk_state *cdclk_state;
+
+	cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(cdclk_state)) {
+		drm_WARN_ON(display->drm, PTR_ERR(cdclk_state));
+		return 1;
+	}
+
+	return min(1, DIV_ROUND_UP(crtc_state->pixel_rate,
+				   2 * intel_cdclk_logical(cdclk_state)));
+}
+
+static int
+dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
+{
+	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int num_scaler_users = hweight32(scaler_state->scaler_users);
+	u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
+	u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
+	u32 dsc_prefill_latency = 0;
+
+	if (!crtc_state->dsc.compression_enable ||
+	    !num_scaler_users ||
+	    num_scaler_users > crtc->num_scalers)
+		return dsc_prefill_latency;
+
+	for (int i = 0; i < num_scaler_users; i++) {
+		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
+		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
+	}
+
+	dsc_prefill_latency =
+		intel_dsc_guardband_latency(num_scaler_users, hscale_k, vscale_k,
+					    chroma_downscaling_factor,
+					    cdclk_prefill_adjustment(crtc_state),
+					    linetime);
+
+	return dsc_prefill_latency;
+}
+
+static int
+scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
+{
+	const struct intel_crtc_scaler_state *scaler_state = &crtc_state->scaler_state;
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
+	int num_scaler_users = hweight32(scaler_state->scaler_users);
+	u64 hscale_k = 0, vscale_k = 0;
+	int scaler_prefill_latency = 0;
+
+	if (!num_scaler_users)
+		return scaler_prefill_latency;
+
+	if (num_scaler_users > 1) {
+		hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
+		vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
+	}
+
+	scaler_prefill_latency =
+		skl_scaler_guardband_latency(num_scaler_users, hscale_k, vscale_k,
+					     chroma_downscaling_factor,
+					     cdclk_prefill_adjustment(crtc_state),
+					     linetime);
+
+	return scaler_prefill_latency;
+}
+
+static int
+wm0_prefill_latency(int linetime_us, int max_wm0_lines)
+{
+	return 20 + linetime_us * max_wm0_lines;
+}
+
+static int intel_crtc_guardband_atomic_check(struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int dsc_prefill_time = 0;
+	int scaler_prefill_time;
+	int wm0_prefill_time;
+	int psr2_pr_latency;
+	int min_guardband;
+	int guardband_us;
+	int sagv_latency;
+	int linetime_us;
+	int sdp_latency;
+	int pm_delay;
+
+	if (!adjusted_mode->crtc_clock)
+		return 0;
+
+	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
+				   adjusted_mode->crtc_clock);
+
+	/*
+	 * #TODO
+	 * Account for package C state latency and setting of PKG_C_LATENCY
+	 * register.
+	 * When PKG_C_LATENCY is configured (not all 1s), hardware will
+	 * automatically wake from package C states before framestart so
+	 * that package C state latency can be considered to be 0.
+	 *
+	 * Use max of sagv and package C state latency.
+	 */
+	sagv_latency = display->sagv.block_time_us;
+
+	wm0_prefill_time = wm0_prefill_latency(linetime_us, skl_max_wm0_lines(crtc_state));
+
+	scaler_prefill_time = scaler_prefill_latency(crtc_state, linetime_us);
+
+	dsc_prefill_time = dsc_prefill_latency(crtc_state, linetime_us);
+
+	pm_delay = crtc_state->framestart_delay +
+		   sagv_latency +
+		   wm0_prefill_time +
+		   scaler_prefill_time +
+		   dsc_prefill_time;
+
+	psr2_pr_latency = intel_alpm_compute_max_link_wake_latency(crtc_state, false);
+	sdp_latency = intel_dp_compute_sdp_latency(crtc_state, false);
+
+	guardband_us = max(sdp_latency, psr2_pr_latency);
+	guardband_us = max(guardband_us, pm_delay);
+	min_guardband = intel_usecs_to_scanlines(adjusted_mode, guardband_us);
+
+	if (crtc_state->vrr.guardband < min_guardband) {
+		drm_dbg_kms(display->drm, "vrr.guardband %d < min guardband %d\n",
+			    crtc_state->vrr.guardband, min_guardband);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
@@ -4251,6 +4392,12 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	if (intel_vrr_possible(crtc_state)) {
+		ret = intel_crtc_guardband_atomic_check(crtc_state);
+		if (ret)
+			return ret;
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index deb43f0c348a..9a368bb9e92a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2254,7 +2254,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
 }
 
-static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
+int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum plane_id plane_id;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index 62790816f030..8706c2010ebe 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -78,6 +78,7 @@ void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
 void intel_program_dpkgc_latency(struct intel_atomic_state *state);
 
 bool intel_dbuf_pmdemand_needs_update(struct intel_atomic_state *state);
+int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state);
 
 #endif /* __SKL_WATERMARK_H__ */
 
-- 
2.45.2

