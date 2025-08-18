Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07295B29B13
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Aug 2025 09:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3BF10E3F0;
	Mon, 18 Aug 2025 07:45:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OSC6NtWr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8955610E3EF;
 Mon, 18 Aug 2025 07:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755503148; x=1787039148;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NJIw98LZ1hHqQsApGHs7NmnaQ7AyC4uBv6iyegMJxNY=;
 b=OSC6NtWradtdg/eSYpddAZiL4s2t+aRCxEnqLf9W274p388I1WXlVlFf
 SBB0MJCfOPG/6eFEkoByP1FL4XxzhmV9cglMYrhviD5mkExqeOB/+sLcc
 izx08vrrin8s/v9dXohXmAXd42jQ7jzdqnseIRtvS+KNL8v5mzVc+oCzP
 zwh8cmNE/0RRLWHH+f3VIN91vdKTqCNUM48eKLa9Xff2cqkbi9lquV2/j
 akXXBlgO2QA1CCQQk2DB7yTUf/dx0RUXSf8A/t5iP3ofeSLwY8FWu736G
 BeJLQGNR4VMVXXLMAHuhLpd7g/AKq+OANnqOHUxiMhW0ZuL9WAke+UCnh w==;
X-CSE-ConnectionGUID: OS+SazHmQvKGm/cD93KefQ==
X-CSE-MsgGUID: 7+qcTgOATembO3JNnVc7NA==
X-IronPort-AV: E=McAfee;i="6800,10657,11524"; a="61347934"
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="61347934"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 00:45:48 -0700
X-CSE-ConnectionGUID: 07kA568rRbih7umgLgIsOA==
X-CSE-MsgGUID: 5eusm8cNSS2N+7UxR5/z5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,293,1747724400"; d="scan'208";a="167121976"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2025 00:45:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/12] drm/i915/display: Add guardband check for feature
 latencies
Date: Mon, 18 Aug 2025 13:01:24 +0530
Message-ID: <20250818073128.2319762-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
References: <20250818073128.2319762-1-ankit.k.nautiyal@intel.com>
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

v2: Use new helper for PSR2/Panel Replay latency.

v3:
-Align the name of helper with intel_crtc_atomic_check and rename it to
intel_crtc_guardband_atomic_check(). (Jani)
-Simplify checks in the helper. (Mitul)
-Make a separate helper to compute wm0 prefill time. (Mitul)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 143 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.c |   2 +-
 drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
 3 files changed, 145 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 62ec95a75154..9138cd1d6284 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4227,6 +4227,143 @@ static int hsw_compute_linetime_wm(struct intel_atomic_state *state,
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
+	    num_scaler_users > crtc->num_scalers ||
+	    num_scaler_users > ARRAY_SIZE(scaler_state->scalers))
+		return dsc_prefill_latency;
+
+	for (int i = 0; i < num_scaler_users; i++) {
+		hscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
+		vscale_k[i] = max(1000, mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
+	}
+
+	dsc_prefill_latency =
+		intel_display_dsc_prefill_latency(num_scaler_users, hscale_k, vscale_k,
+						  chroma_downscaling_factor,
+						  cdclk_prefill_adjustment(crtc_state),
+						  linetime);
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
+		intel_display_scaler_prefill_latency(num_scaler_users, hscale_k, vscale_k,
+						     chroma_downscaling_factor,
+						     cdclk_prefill_adjustment(crtc_state),
+						     linetime);
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
+	int pkgc_max_latency;
+	int psr2_pr_latency;
+	int min_guardband;
+	int guardband_us;
+	int sagv_latency;
+	int linetime_us;
+	int sdp_latency;
+	int pm_delay;
+
+	if (!crtc_state->vrr.enable && !intel_vrr_always_use_vrr_tg(display))
+		return 0;
+
+	if (!adjusted_mode->crtc_clock)
+		return 0;
+
+	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
+				   adjusted_mode->crtc_clock);
+
+	pkgc_max_latency = skl_watermark_max_latency(display, 1);
+	sagv_latency = display->sagv.block_time_us;
+
+	wm0_prefill_time = wm0_prefill_latency(linetime_us, skl_max_wm0_lines(crtc_state));
+
+	scaler_prefill_time = scaler_prefill_latency(crtc_state, linetime_us);
+
+	dsc_prefill_time = dsc_prefill_latency(crtc_state, linetime_us);
+
+	pm_delay = crtc_state->framestart_delay +
+		   max(sagv_latency, pkgc_max_latency) +
+		   wm0_prefill_time +
+		   scaler_prefill_time +
+		   dsc_prefill_time;
+
+	psr2_pr_latency = intel_alpm_compute_max_link_wake_latency(crtc_state, false);
+	sdp_latency = intel_dp_compute_sdp_latency(crtc_state, false);
+
+	guardband_us = max(sdp_latency, psr2_pr_latency);
+	guardband_us = max(guardband_us, pm_delay);
+	min_guardband = DIV_ROUND_UP(guardband_us, linetime_us);
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
@@ -4289,6 +4426,12 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
+	if (HAS_VRR(display) && intel_vrr_possible(crtc_state)) {
+		ret = intel_crtc_guardband_atomic_check(crtc_state);
+		if (ret)
+			return ret;
+	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index f0213785e9fc..6e9cdf5bc60b 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2249,7 +2249,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
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

