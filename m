Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45691B526CE
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 04:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D178010EA1A;
	Thu, 11 Sep 2025 02:59:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f9u6Q1rv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DECAF10EA17;
 Thu, 11 Sep 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757559594; x=1789095594;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iJuUW1u532jTdcRBwNpqV+7T4zbwVI1o+3MaHr9e40U=;
 b=f9u6Q1rvIVUP8YPDhjG9qUVTx3Fxlv+AFwiEF134g0Id70t2uc6Fcg/r
 OxyzHysDMiUGmxE2QSkylYvaXtBrOgBaHkY49by9XDmnBfU4+25jM4TDy
 m2oPuy5RHOeU7ztScYSZLoECu0HoMsQRW2+qNMkrQ/XErU3yspuz+HUDb
 62uRbGwQJ0eVK4aoUfTLzCDYWyioaRep3TZ829BfR2n8R9NDxg1E6fAUg
 3qAWtoTecp11lLvWzW3AFyDv4SLm200FKhYl7xXi/HtX21qUY1AQFwAdc
 af4nUSA4vXgFW5UaGutLHyMAHexkPc1WW9fbGogNzy32ks24UqpgO+KLY w==;
X-CSE-ConnectionGUID: uHbbfy9zSgiPbmTnyJHG6w==
X-CSE-MsgGUID: 9dLalhnGQQW44YnCXv+4mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="85327092"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="85327092"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 19:59:54 -0700
X-CSE-ConnectionGUID: qbMtCBR9Q3uCj7Y1D2bT4g==
X-CSE-MsgGUID: e1tXD8R+Rd6KiC9Fh3dUGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="173955587"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 19:59:52 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 15/15] drm/i915/vrr: Fix seamless_mn drrs for PTL
Date: Thu, 11 Sep 2025 08:15:54 +0530
Message-ID: <20250911024554.692469-16-ankit.k.nautiyal@intel.com>
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

With VRR timing generator always on, the fixed refresh rate is achieved
by setting vrr.flipline and vrr.vmax as the vtotal for the desired mode.

This creates a problem for seamless_mn drrs feature, where user can
seamlessly set a lower mode on the supporting panels. With VRR timing
generator, the vrr.flipline and vrr.vmax are set to vtotal, but that
corresponds to the higher mode.

To fix this, re-compute the vrr timings when seamless_mn drrs is in
picture. At the same time make sure that the vrr.guardband is set as
per the highest mode for such panels, so that switching between higher
to lower mode, does not change the vrr.guardband.

v2: Add a new member `use_highest_mode` to vrr struct to help set the
vrr timings for highest mode for the seamless_mn drrs case.
v3:
-Modify existing function to compute fixed refresh rate timings instead
of adding a new function. (Mitul)
-Tweak computation for scaling the vtotal and use DIV_ROUND_UP_ULL.
-Improve documentation.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 90 ++++++++++++++++++-
 4 files changed, 90 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 358ab922d7a7..9796c7b855d0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1321,6 +1321,8 @@ struct intel_crtc_state {
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
 		u32 vsync_end, vsync_start;
+		/* Indicates VRR timing is scaled to highest mode for seamless M/N */
+		bool use_highest_mode;
 	} vrr;
 
 	/* Content Match Refresh Rate state */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f74ac98062d4..5c29c696c83e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1742,7 +1742,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
 	return bpp;
 }
 
-static bool has_seamless_m_n(struct intel_connector *connector)
+bool has_seamless_m_n(struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index d222749b191c..6da0196c23d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -217,5 +217,6 @@ void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
 bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
 int intel_dp_compute_sdp_latency(const struct intel_crtc_state *crtc_state,
 				 bool assume_all_enabled);
+bool has_seamless_m_n(struct intel_connector *connector);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 002165026a20..80bbe4b1ef7f 100644
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
 
+	if (crtc_state->vrr.use_highest_mode) {
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
@@ -307,15 +318,69 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
 		       intel_vrr_fixed_rr_flipline(crtc_state) - 1);
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
+static int intel_vrr_scale_vtotal_for_seamless_m_n(struct intel_crtc_state *crtc_state,
+						   struct intel_connector *connector)
+{
+	const struct drm_display_mode *highest_mode = intel_panel_highest_mode(connector);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int vtotal = adjusted_mode->crtc_vtotal;
+
+	/*
+	 * For panels with seamless_m_n drrs, the user can seamlessly switch to
+	 * a lower mode, which has a lower clock. This works with legacy timing
+	 * generator, but not with the VRR timing generator.
+	 *
+	 * The VRR timing generator requires flipline and vmax to be equal for
+	 * fixed refresh rate operation. The default fixed RR computation sets
+	 * these to the current mode's vtotal. However, when switching to a
+	 * lower clock mode, this would result in a higher refresh rate than
+	 * desired.
+	 *
+	 * To simulate the lower refresh rate correctly, we scale the vtotal
+	 * based on the ratio of the highest mode's clock to the current mode's
+	 * clock.
+	 *
+	 * When switching to a higher clock mode, the current vtotal already
+	 * results in the desired refresh rate, so no scaling is needed.
+	 *
+	 * So compute the scaled vtotal if required, and update vrr.vmin to
+	 * the scaled value. Also, set vrr.use_highest_mode to indicate that
+	 * VRR timings are based on the highest mode.
+	 */
+	if (highest_mode && adjusted_mode->crtc_clock < highest_mode->clock) {
+		vtotal = DIV_ROUND_UP_ULL(vtotal * highest_mode->clock,
+					  adjusted_mode->crtc_clock);
+		crtc_state->vrr.vmin = vtotal;
+		crtc_state->vrr.use_highest_mode = true;
+	}
+
+	return vtotal;
+}
+
 static
-void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
+void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state,
+					struct intel_connector *connector)
 {
+	int vtotal = crtc_state->hw.adjusted_mode.crtc_vtotal;
+
+	if (needs_seamless_m_n_timings(crtc_state, connector))
+		vtotal = intel_vrr_scale_vtotal_for_seamless_m_n(crtc_state, connector);
+
 	/*
 	 * For fixed rr,  vmin = vmax = flipline.
 	 * vmin is already set to crtc_vtotal set vmax and flipline the same.
 	 */
-	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
-	crtc_state->vrr.flipline = crtc_state->hw.adjusted_mode.crtc_vtotal;
+	crtc_state->vrr.vmax = vtotal;
+	crtc_state->vrr.flipline = vtotal;
 }
 
 static
@@ -397,7 +462,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	else if (is_cmrr_frac_required(crtc_state) && is_edp)
 		intel_vrr_compute_cmrr_timings(crtc_state);
 	else
-		intel_vrr_compute_fixed_rr_timings(crtc_state);
+		intel_vrr_compute_fixed_rr_timings(crtc_state, connector);
 
 	/*
 	 * flipline determines the min vblank length the hardware will
@@ -876,6 +941,7 @@ int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
 {
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	struct intel_display *display = to_intel_display(crtc_state);
+	const struct drm_display_mode *highest_mode;
 	int dsc_prefill_time = 0;
 	int psr2_pr_latency = 0;
 	int scaler_prefill_time;
@@ -888,6 +954,22 @@ int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
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
+	highest_mode = intel_panel_highest_mode(connector);
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

