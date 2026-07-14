Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3fvaGGIUVmqNywAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 12:50:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D434753937
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 12:50:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="V/zdF03V";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54CD610E6B5;
	Tue, 14 Jul 2026 10:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CF5510E687;
 Tue, 14 Jul 2026 10:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784026206; x=1815562206;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HhxR+iahIrmZ0LB/n7Qf3ddTesdS6r9lujEjQ85/TwY=;
 b=V/zdF03VeiAjYeJd0AOT4eiyzsn3wWJAHJGp3lGmCoYxX58iS50r9At9
 unJw+wFg4DfMpxhJBr7Y6SWXg8qOAeLzQf+3akUhPWTbj5SS/N7W2JN1c
 nhgQ++t1sZkk/YQyZkkS3PEMoJdn6AXG8ZUaRISOolNG7OZ8iVKO7OMp9
 GFd9qd8qJnm4gz3MZ6gH8DeRsrWOslLHqBugzOk4Qmxeyjlc9Kpuworcd
 4f28/MiTMFBGWq3D01fZCNltXJ2iMR8H4qMd0/e10ERmzDkGPg2qDK/67
 y3XPhEJ1lwl0smoVJX3oHZS+xDodwHXiEzqPg0x/NElXfg9oo1ibXcT2p Q==;
X-CSE-ConnectionGUID: iRpvVYJjTlyXRBc2QtR2YA==
X-CSE-MsgGUID: Xbog+yLgSUOjj9TxyxcblQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="88544449"
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="88544449"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 03:50:05 -0700
X-CSE-ConnectionGUID: MgjAxfUgSIGYRsABzNrZdw==
X-CSE-MsgGUID: 37zkB4dHTgG8tC0+mQgllA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,163,1779174000"; d="scan'208";a="260134504"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 14 Jul 2026 03:50:04 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, chaitanya.kumar.borah@intel.com
Subject: [PATCH v3 3/8] drm/i915/vrr: Compute CMRR fractional timings
 generically
Date: Tue, 14 Jul 2026 16:09:32 +0530
Message-ID: <20260714103938.2371448-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260714103938.2371448-1-mitulkumar.ajitkumar.golani@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D434753937

Rework the fractional-CMRR computation into a generic,
transcoder-agnostic helper driven by an explicit per-CRTC debugfs
target, replacing the previous disabled, eDP-only code path. Compute
CMRR_M and CMRR_N timings based on the video mode requirement. Note the
CMRR enable path is wired up separately; this patch only lays down the
generic computation.

--v2:
- Derive video_mode locally instead of caching it in persistent
  struct intel_crtc state (Jani, Chaitanya)
- Fix numerator unit in comment: milli-Hz, not kHz (Chaitanya)
- Fix "reqirement" typo and clarify CMRR is not yet enabled in the
  commit message (Chaitanya)
- Fix precision issue while computing M/N ration (Chaitanya)
- Multiplier_m and n naming update to increase readability. (Chaitanya)
- Compute vtotal as it is required to deither as per algo
implementation. (Chaitanya)
- Replace misleading adjusted_pixel_rate to dividend which is somewhat
relatable.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 128 +++++++++++------------
 1 file changed, 63 insertions(+), 65 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index b36026183399..25ce56d48bb1 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -27,9 +27,6 @@
 #include "skl_prefill.h"
 #include "skl_watermark.h"
 
-#define FIXED_POINT_PRECISION		100
-#define CMRR_PRECISION_TOLERANCE	10
-
 /*
  * Tunable parameters for DC Balance correction.
  * These are captured based on experimentations.
@@ -191,69 +188,72 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
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
+	u64 dividend;
+	int requested_refresh_rate, current_refresh_rate;
+	int rr_multiplier = 1, rr_divider = 1;
+	bool video_mode;
 
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
-	u64 adjusted_pixel_rate;
-	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	if (!HAS_CMRR(display))
+		return;
 
-	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
+	/* No CMRR ratio configured through debugfs */
+	if (!crtc->force_cmrr.numerator)
+		return;
 
-	if (video_mode_required) {
-		multiplier_m = 1001;
-		multiplier_n = 1000;
+	/*
+	 * The numerator encodes the requested refresh rate in milli-Hz, so the
+	 * requested refresh rate in Hz is numerator / 1000. It must match the
+	 * refresh rate of the current mode.
+	 */
+	requested_refresh_rate = crtc->force_cmrr.numerator / 1000;
+	current_refresh_rate = drm_mode_vrefresh(adjusted_mode);
+
+	if (requested_refresh_rate != current_refresh_rate) {
+		drm_dbg_kms(display->drm,
+			    "[CRTC:%d:%s] CMRR requested refresh rate %d Hz does not match current mode refresh rate %d Hz\n",
+				crtc->base.base.id, crtc->base.name,
+				requested_refresh_rate, current_refresh_rate);
+		return;
 	}
 
-	crtc_state->vrr.cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
-						  multiplier_n);
-	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_n),
-				  crtc_state->vrr.cmrr.cmrr_n);
-	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_m);
-	crtc_state->vrr.cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->vrr.cmrr.cmrr_n);
-
-	return vtotal;
-}
+	/*
+	 * A 1:1 ratio (denominator == 1000) means no video timing is required
+	 * Any other ratio (e.g. 1000/1001) requires the video timing.
+	 */
+	video_mode = crtc->force_cmrr.denominator != 1000;
+	if (video_mode) {
+		rr_multiplier = 1000;
+		rr_divider = 1001;
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
+	 * cmrr_n = requested_refresh_rate x htotal x rr_multiplier
+	 * cmrr_m = (pixel_clock_hz x scale_m) % cmrr_n
+	 *
+	 * where rr_multiplier/rr_divider = 1000/1001 when the
+	 * video timing is required, else 1/1. The integer vtotal
+	 * term is tracked in SW (it is the programmed mode vtotal)
+	 * while the fractional part represented by cmrr_m/cmrr_n
+	 * is tracked in HW.
 	 */
-	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
-	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
-	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 
-	crtc_state->vrr.cmrr.enable = true;
-	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+	crtc_state->vrr.cmrr.cmrr_n =
+		(mul_u32_u32(crtc->force_cmrr.numerator, adjusted_mode->crtc_htotal) *
+		rr_multiplier) / 1000;
+	dividend = mul_u32_u32(adjusted_mode->crtc_clock, 1000) * rr_divider;
+	adjusted_mode->crtc_vtotal = div64_u64_rem(dividend,
+						   crtc_state->vrr.cmrr.cmrr_n,
+						   &crtc_state->vrr.cmrr.cmrr_m);
+
+	return;
 }
 
 static
@@ -429,8 +429,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int vmin, vmax;
 
@@ -464,12 +462,17 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		vmax = vmin;
 	}
 
-	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
+	if (crtc_state->uapi.vrr_enabled && vmin < vmax) {
 		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
-	else if (is_cmrr_frac_required(crtc_state) && is_edp)
-		intel_vrr_compute_cmrr_timings(crtc_state);
-	else
+	} else {
+		/*
+		 * CMRR is a fixed average Vtotal mode and is only computed on
+		 * the fixed refresh rate path. It is generic across transcoders
+		 * and gated on platform support and a valid debugfs ratio.
+		 */
+		intel_vrr_cmrr_compute_config(crtc_state);
 		intel_vrr_compute_fixed_rr_timings(crtc_state);
+	}
 
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
@@ -1136,11 +1139,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 	intel_vrr_get_dc_balance_config(crtc_state);
 
-	/*
-	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
-	 * Since CMRR is currently disabled, set this flag for VRR for now.
-	 * Need to keep this in mind while re-enabling CMRR.
-	 */
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 
-- 
2.48.1

