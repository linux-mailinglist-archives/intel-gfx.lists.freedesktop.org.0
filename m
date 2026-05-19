Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EIguB7zxC2rnRgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:14:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEFF577623
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4718D10EA48;
	Tue, 19 May 2026 05:14:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bo8AXj9J";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C95B10EA44
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2026 05:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779167672; x=1810703672;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oeoPLNMvOWK8TcItRnk3YGh5QNmigpJQjrczJUvnZp4=;
 b=Bo8AXj9JEoZHqaRm53l5iYRK/sEVOWw1oc+6NBdPgApI57zaz3mfbOZW
 pVtXu8Ioyt2n3DzcHArYPmjGRzqOhNukYFWVo68JRgXhOwbZYHwwtsNzn
 RQ/nFLT4RFP2S4w5w1qtRH50AQ2wgoHCBhGQqzEKINFsT+pUnfeNViuSG
 86TI747/+YqSTHY1ZfEbozkEQ7I8V7vzMqKJDy626Oj1TTphHqnn+ELP9
 wHZlGAKQg+Hedm7pF1JbpxkvPyowvV8d9EVXs0neiyhZJNxGUUJ4GXaXs
 V74Lac/uCxADlOUPtyPOiHPB8E7Efte9Lcs2DykpEZBt8JlJ3/Ur/mF9y w==;
X-CSE-ConnectionGUID: RQvfitQ/QEq5GRU/4g5OWw==
X-CSE-MsgGUID: 1JPkWQOWTA+rpBqMlu96QQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97603551"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="97603551"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:14:32 -0700
X-CSE-ConnectionGUID: +Qh3OfLPSiCaZQSvnXZ+wg==
X-CSE-MsgGUID: DrGroN1ZTP2ivMvZffiIFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="243635825"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 18 May 2026 22:14:30 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com, ankit.k.nautiyal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v1 7/8] drm/i915/vrr: Compute CMRR vtotal based on configured
 scaling level
Date: Tue, 19 May 2026 10:33:21 +0530
Message-ID: <20260519050322.3677451-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260519050322.3677451-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20260519050322.3677451-1-mitulkumar.ajitkumar.golani@intel.com>
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
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: BFEFF577623
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Compute mode timings based on direct inspection of
crtc_state->vrr.cmrr.level instead of hardcoding it.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 57 +++++++++---------------
 1 file changed, 21 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index e31778367245..975c87c4ffbb 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -22,9 +22,6 @@
 
 #include "linux/debugfs.h"
 
-#define FIXED_POINT_PRECISION		100
-#define CMRR_PRECISION_TOLERANCE	10
-
 /*
  * Tunable parameters for DC Balance correction.
  * These are captured based on experimentations.
@@ -184,42 +181,27 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
 	return intel_vrr_vmax_vtotal(crtc_state) - crtc_state->vrr.guardband;
 }
 
-static bool
-is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
+static unsigned int
+cmrr_get_vtotal(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
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
-
-	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
+	int multiplier_m = 1, multiplier_n = 1, vtotal;
+	int desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
 
-	if (video_mode_required) {
+	if (crtc_state->vrr.cmrr.level == CMRR_HIGH) {
 		multiplier_m = 1001;
 		multiplier_n = 1000;
+	} else if (crtc_state->vrr.cmrr.level == CMRR_LOW) {
+		multiplier_m = 1000;
+		multiplier_n = 1001;
+	} else if (crtc_state->vrr.cmrr.level == CMRR_DEFAULT) {
+		multiplier_m = 1000;
+		multiplier_n = 1000;
+	} else {
+		drm_WARN_ON_ONCE(display->drm, 1);
+		return crtc_state->hw.adjusted_mode.crtc_vtotal;
 	}
 
 	crtc_state->vrr.cmrr.cmrr_n = mul_u32_u32(desired_refresh_rate * adjusted_mode->crtc_htotal,
@@ -227,7 +209,8 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 	vtotal = DIV_ROUND_UP_ULL(mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_n),
 				  crtc_state->vrr.cmrr.cmrr_n);
 	adjusted_pixel_rate = mul_u32_u32(adjusted_mode->crtc_clock * 1000, multiplier_m);
-	crtc_state->vrr.cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->vrr.cmrr.cmrr_n);
+	crtc_state->vrr.cmrr.cmrr_m = do_div(adjusted_pixel_rate,
+					     crtc_state->vrr.cmrr.cmrr_n);
 
 	return vtotal;
 }
@@ -248,9 +231,11 @@ static
 void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state,
 					bool is_edp)
 {
-	if (is_cmrr_frac_required(crtc_state) && is_edp) {
-		/* For CMRR, vmin = vmax = flipline = Dethered Vtotal */
-		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (HAS_CMRR(display) && is_edp) {
+		/* For CMRR, vmin = vmax = flipline = Dithered Vtotal */
+		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
 	} else {
 		/* For fixed rr,  vmin = vmax = flipline */
 		crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
-- 
2.48.1

