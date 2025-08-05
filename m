Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 53629B1B504
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 15:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD2410E696;
	Tue,  5 Aug 2025 13:34:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VPp/i8Bj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E34310E684;
 Tue,  5 Aug 2025 13:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754400879; x=1785936879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W15UuWECiXPlF9y8BNaDrxZMufCYW7C8L8jpltfIS1Q=;
 b=VPp/i8Bj7HtD9JgsgisEDZDf5MfzivcTOqJFmrFLTjIUmoz3+Tu0qXSk
 WMneLLSJSAXvF0onfhq8moo0GCWndl8RsApg/bo9e3/Voyv4wNFan5L3R
 hxPcob0hLgHI08xqARDf3GjQKty+6f3HxjexKIc6qRptGhdIiGcJIn7AU
 C8/xY4BU3ICCxmU/4/KhnkZiN9/+NRQJTpmlO5lOej/VIgimeZ1ASwE1+
 4764A2dP/Heb3E09ZJvU7noS7ANT71QB/lMeGSYenN0shLOMH54aPyJBF
 HK1pLd+6rQe6owvaAEw3HiFh8lyy7UH78N+0kQWbSMD3SbzT5hdglIXWg w==;
X-CSE-ConnectionGUID: D07Y6XqWQQOpXaVCiMiYfw==
X-CSE-MsgGUID: /yhyeH/IRmmfbhFKqLsZzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="67768970"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="67768970"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:39 -0700
X-CSE-ConnectionGUID: 1VFEhzbWRV2s3lRZ30k9fQ==
X-CSE-MsgGUID: X9dg8/0NTqaqvaOVUQ/V+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="164915474"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 06:34:37 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 13/13] drm/i915/vrr: Fix seamless_mn drrs for PTL
Date: Tue,  5 Aug 2025 18:50:16 +0530
Message-ID: <20250805132016.1250202-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
References: <20250805132016.1250202-1-ankit.k.nautiyal@intel.com>
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

With VRR timing generator always on, the fixed refresh rate is achieved
by setting vrr.flipline and vrr.vmax as the vtotal for the desired mode.

This creates a problem for seamless_mn drrs feature, where user can
seamlessly set a lower mode on the supporting panels by just changing
the mode clock, with desired lower rate. With VRR timing generator,
the vrr.flipline and vrr.vmax are set to vtotal, but that corresponds
to the higher mode.

To fix this, re-compute the vrr timings when seamless_mn drrs is in
picture. At the same time make sure that the vrr.guardband is set as
per the highest mode for such panels, so that switching between higher
to lower mode, does not change the vrr.guardband.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.h  |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c | 73 ++++++++++++++++++++++++
 3 files changed, 75 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0c2bec1fbe42..809a192c46d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1741,7 +1741,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 	return bpp;
 }
 
-static bool has_seamless_m_n(struct intel_connector *connector)
+bool has_seamless_m_n(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 994994d68475..75470eb7022a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -215,5 +215,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
 int intel_dp_compute_sdp_latency(struct intel_crtc_state *crtc_state, bool assume_all_enabled);
+bool has_seamless_m_n(struct intel_connector *connector);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 170f7bcdb8a8..4a20e68854df 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -11,6 +11,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_panel.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
 #include "skl_scaler.h"
@@ -299,6 +300,16 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
+	if (crtc_state->update_m_n) {
+		intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
+			       crtc_state->vrr.vmin - 1);
+		intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
+			       crtc_state->vrr.vmax - 1);
+		intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
+			       crtc_state->vrr.flipline - 1);
+		return;
+	}
+
 	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
 		       intel_vrr_fixed_rr_vmin(crtc_state) - 1);
 	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
@@ -318,6 +329,48 @@ void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
 	crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;
 }
 
+static bool needs_seamless_m_n_timings(struct intel_crtc_state *crtc_state,
+				       struct intel_connector *connector)
+{
+	if (!has_seamless_m_n(connector) || crtc_state->joiner_pipes)
+		return false;
+
+	return true;
+}
+
+static
+void intel_vrr_compute_fixed_rr_for_seamless_m_n(struct intel_crtc_state *crtc_state,
+						 struct intel_connector *connector)
+{
+	const struct drm_display_mode *highest_mode = intel_panel_highest_fixed_mode(connector);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int vtotal_new;
+
+	/*
+	 * For panels with seamless_m_n drrs, the user can seamlessly switch to
+	 * a lower mode, which has a lower clock. This works with legacy timing
+	 * generator, but not with the VRR timing generator. To run the
+	 * VRR timing generator in fixed refresh rate mode flipline and vmax
+	 * need to be set to same value.
+	 *
+	 * The function intel_vrr_compute_fixed_rr_timings set these to the
+	 * VTOTAL. However, for this case we need to set the set the flipline
+	 * and vmax to a higher value such that the VRR Timing generator can
+	 * work with the desired fixed lower rate.
+	 */
+	if (highest_mode && adjusted_mode->crtc_clock < highest_mode->clock) {
+		vtotal_new = adjusted_mode->crtc_vtotal * DIV_ROUND_UP(highest_mode->clock,
+								       adjusted_mode->crtc_clock);
+		crtc_state->vrr.flipline = vtotal_new;
+		crtc_state->vrr.vmax = vtotal_new;
+		crtc_state->vrr.vmin = vtotal_new;
+
+		return;
+	}
+
+	intel_vrr_compute_fixed_rr_timings(crtc_state);
+}
+
 static
 int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
 {
@@ -396,6 +449,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		intel_vrr_compute_vrr_timings(crtc_state);
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
+
+	else if (needs_seamless_m_n_timings(crtc_state, connector))
+		intel_vrr_compute_fixed_rr_for_seamless_m_n(crtc_state, connector);
 	else
 		intel_vrr_compute_fixed_rr_timings(crtc_state);
 
@@ -478,6 +534,7 @@ int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
 {
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *highest_mode;
 	int dsc_prefill_time = 0;
 	int psr2_pr_latency = 0;
 	int scaler_prefill_time;
@@ -490,6 +547,22 @@ int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
 	int guardband;
 	int pm_delay;
 
+	/*
+	 * For seamless m_n the clock is changed while other modeline
+	 * parameters are same. In that case the linetime_us will change,
+	 * causing the guardband to change, and the seamless switch to
+	 * lower mode would not take place.
+	 * To avoid this, take the highest mode where panel supports
+	 * seamless drrs and make guardband equal to the vblank length
+	 * for the highest mode.
+	 */
+	highest_mode = intel_panel_highest_fixed_mode(connector);
+	if (needs_seamless_m_n_timings(crtc_state, connector) && highest_mode) {
+		guardband = highest_mode->vtotal - highest_mode->vdisplay;
+
+		return guardband;
+	}
+
 	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
 				   adjusted_mode->crtc_clock);
 
-- 
2.45.2

