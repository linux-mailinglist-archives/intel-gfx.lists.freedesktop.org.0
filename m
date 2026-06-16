Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i9S9FGVjMWqKiQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 16:53:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3168690B01
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 16:53:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="iw5EJoR/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8817C10EC34;
	Tue, 16 Jun 2026 14:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E6A10EC20;
 Tue, 16 Jun 2026 14:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781621597; x=1813157597;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8A/mZ4mX9K9NgXCgWVCX3d7KRQ27oX2NACIVGZxYoNw=;
 b=iw5EJoR/lqMCw8BWlOnD63abxnYtES7jJdJNnsXUOG8J3SGzmRMYaPZZ
 m+cEOkHgOIbIVlmcOWtXiS6EWNO6Mtu7efDnmCHig5XpSMRrFVjpaN52s
 u+rMW+lM3fpWqwVBwNd6SX3srzgyspRptSXaBenYBBbyMYMDwshkWGTvM
 2PmgientcGUnP4p/L6az0KMC3YCvyl9O0hbXJOwlpbZhtgWYuxCDV8/tm
 RWpxwW1FZUIBjCiB/IW5clQdRSLbN1EL8A9jn9MspZ5ZXk/elnP8WV9o7
 BT35DvyYkMm9GqR5DCuykV7sWih7JdkWwhfh0TsopbxlESzkoV85qZV5s Q==;
X-CSE-ConnectionGUID: tggEYyK9TG+e9dHimsAJDg==
X-CSE-MsgGUID: 42FLLVSuSmuhdF+4VGxHbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="69932821"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="69932821"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 07:53:16 -0700
X-CSE-ConnectionGUID: 41xaKU3OTt6qksZM3jUuqg==
X-CSE-MsgGUID: wr2n5I8QQmWwPq/1uhLQeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="285896294"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 16 Jun 2026 07:53:14 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 02/11] drm/i915/vrr: compute CMRR fractional timings
 generically
Date: Tue, 16 Jun 2026 20:12:23 +0530
Message-ID: <20260616144233.832276-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F3168690B01

Replace the disabled, eDP-only, fractional-CMRR code
with a generic, transcoder-agnostic computation driven by an
explicit per-CRTC target. Compute CMRR_M and CMRR_N timings
based on video mode reqirement if CMRR is required to be enabled.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 121 +++++++++---------
 2 files changed, 63 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 897a1ffd7b79..39e11362630c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1548,6 +1548,8 @@ struct intel_crtc {
 	struct {
 		u32 numerator;
 		u32 denominator;
+		/* Derived during atomic check: 1000/1001 video timing required */
+		bool video_mode;
 	} cmrr;
 
 	int scanline_offset;
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 41118883b845..e36c0cab096a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -26,9 +26,6 @@
 #include "skl_prefill.h"
 #include "skl_watermark.h"
 
-#define FIXED_POINT_PRECISION		100
-#define CMRR_PRECISION_TOLERANCE	10
-
 /*
  * Tunable parameters for DC Balance correction.
  * These are captured based on experimentations.
@@ -186,69 +183,69 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
 }
 
-static bool
-is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
+static void
+intel_vrr_cmrr_compute_config(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-
-	/* Avoid CMRR for now till we have VRR with fixed timings working */
-	if (!HAS_CMRR(display) || true)
-		return false;
-
-	actual_refresh_k =
-		drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
-	pixel_clock_per_line =
-		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
-	calculated_refresh_k =
-		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
-
-	if ((actual_refresh_k - calculated_refresh_k) < CMRR_PRECISION_TOLERANCE)
-		return false;
-
-	return true;
-}
-
-static unsigned int
-cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
-{
-	int multiplier_m = 1, multiplier_n = 1, vtotal, desired_refresh_rate;
 	u64 adjusted_pixel_rate;
-	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int requested_refresh_rate, current_refresh_rate;
+	int multiplier_m = 1, multiplier_n = 1;
 
-	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
+	if (!HAS_CMRR(display))
+		return;
 
-	if (video_mode_required) {
-		multiplier_m = 1001;
-		multiplier_n = 1000;
-	}
+	/* No CMRR ratio configured through debugfs */
+	if (!crtc->cmrr.numerator)
+		return;
 
-	crtc_state->cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
-					      multiplier_n);
-	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_n),
-				  crtc_state->cmrr.cmrr_n);
-	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_m);
-	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
+	/*
+	 * The numerator encodes the requested refresh rate in kHz, so the
+	 * requested refresh rate in Hz is numerator / 1000. It must match the
+	 * refresh rate of the current mode.
+	 */
+	requested_refresh_rate = crtc->cmrr.numerator / 1000;
+	current_refresh_rate = drm_mode_vrefresh(adjusted_mode);
+
+	if (requested_refresh_rate != current_refresh_rate) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] CMRR requested refresh rate %d Hz does not match current mode refresh rate %d Hz\n",
+				crtc->base.base.id, crtc->base.name,
+				requested_refresh_rate, current_refresh_rate);
+		return;
+	}
 
-	return vtotal;
-}
+	/*
+	 * A 1:1 ratio (denominator == 1000) means no video timing is required
+	 * Any other ratio (e.g. 1000/1001) requires the video timing.
+	 */
+	crtc->cmrr.video_mode = crtc->cmrr.denominator != 1000;
+	if (crtc->cmrr.video_mode) {
+		multiplier_m = 1000;
+		multiplier_n = 1001;
+	}
 
-static
-void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
-{
 	/*
-	 * TODO: Compute precise target refresh rate to determine
-	 * if video_mode_required should be true. Currently set to
-	 * false due to uncertainty about the precise target
-	 * refresh Rate.
+	 * Let pixel_clock_hz = adjusted_mode->crtc_clock * 1000.
+	 *
+	 * cmrr_n = requested_refresh_rate x htotal x multiplier_m
+	 * cmrr_m = (pixel_clock_hz x scale_m) % cmrr_n
+	 *
+	 * where multiplier_m/multiplier_n = 1000/1001 when the
+	 * video timing is required, else 1/1. The integer vtotal
+	 * term is tracked in SW (it is the programmed mode vtotal)
+	 * while the fractional part represented by cmrr_m/cmrr_n
+	 * is tracked in HW.
 	 */
-	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
-	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
-	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 
-	crtc_state->cmrr.enable = true;
-	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+	crtc_state->cmrr.cmrr_n =
+		mul_u32_u32(requested_refresh_rate * adjusted_mode->crtc_htotal,
+			    multiplier_m);
+	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock, 1000) * multiplier_n;
+	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
+
+	return;
 }
 
 static
@@ -424,8 +421,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int vmin, vmax;
 
@@ -459,13 +454,19 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		vmax = vmin;
 	}
 
-	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
+	if (crtc_state->uapi.vrr_enabled && vmin < vmax) {
 		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
-	else if (is_cmrr_frac_required(crtc_state) && is_edp)
-		intel_vrr_compute_cmrr_timings(crtc_state);
-	else
+	} else {
 		intel_vrr_compute_fixed_rr_timings(crtc_state);
 
+		/*
+		 * CMRR is a fixed average Vtotal mode and is only computed on
+		 * the fixed refresh rate path. It is generic across transcoders
+		 * and gated on platform support and a valid debugfs ratio.
+		 */
+		intel_vrr_cmrr_compute_config(crtc_state);
+	}
+
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
-- 
2.48.1

