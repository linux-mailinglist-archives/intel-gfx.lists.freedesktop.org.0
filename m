Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFiGHrfxC2rnRgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:14:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B421577615
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BEBA10EA46;
	Tue, 19 May 2026 05:14:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BypeF7TB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F5810EA40
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2026 05:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779167668; x=1810703668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ndnb1efJUmsflhmU6+yHQiPTk9MZiBfOir5FTQYO3D4=;
 b=BypeF7TB96O8/M8rWz7uvxp9TVFn0viqeNCqIsktKfCu8G5A+cCZnZnf
 dC3myU+kzf8LpWDiEk2bgV4vzjv/Ge5OF0S3+mFo7chlZQ2Y39q8LPDJY
 eOTh5r7VOkFzQ1cp9ZTIurlH2uZJoZa8dv2E8ArE2zojCGGqKD/AQaUPL
 3N9fG/EqNCjCL3SzxuhiXaRBtav+wcr8u83VCpKCSxzZE0WuW1eA3GQ93
 TZtvqma1k//mSUHHN0CBl/mlZVysEDs0FomQENTIrcuSRfB8jhuYlGA91
 ZNKVsGU709kugr4BILrRaXrFKc02Uh1J9ekCNnupFAtQEEcP/Dc8dtrVl w==;
X-CSE-ConnectionGUID: TCUA6SA7RYeOBKLv/mdewg==
X-CSE-MsgGUID: X9IuLQDyTuCLS8vQTYSoLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97603546"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="97603546"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:14:28 -0700
X-CSE-ConnectionGUID: v+87iA+BStSrAF9OeR8Hog==
X-CSE-MsgGUID: qo8HHcldSAuSHb2UHMg5Mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="243635814"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 18 May 2026 22:14:26 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com, ankit.k.nautiyal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v1 5/8] i915/display/vrr: Compute CMRR params along with fixed
 refresh rate params
Date: Tue, 19 May 2026 10:33:19 +0530
Message-ID: <20260519050322.3677451-6-mitulkumar.ajitkumar.golani@intel.com>
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
X-Rspamd-Queue-Id: 2B421577615
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

CMRR is not a separate VRR operating mode but a special case of
fixed refresh rate with the VRR timing generator enabled.
Like regular fixed-RR, CMRR operates with vmin = vmax = flipline,
but derives the vtotal via a fractional multiplier rather than using
the nominal mode vtotal directly.

When CMRR fraction is required on an eDP panel,
cmrr_get_vtotal() is used to compute the fractional vtotal; otherwise
the standard mode vtotal is used.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 33 +++++++-----------------
 1 file changed, 10 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8d79d289378b..bbc68c614667 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -230,23 +230,6 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 	return vtotal;
 }
 
-static
-void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
-{
-	/*
-	 * TODO: Compute precise target refresh rate to determine
-	 * if video_mode_required should be true. Currently set to
-	 * false due to uncertainty about the precise target
-	 * refresh Rate.
-	 */
-	crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
-	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
-	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
-
-	crtc_state->vrr.cmrr.enable = true;
-	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
-}
-
 static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
 				   int vmin, int vmax)
@@ -260,10 +243,16 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
 }
 
 static
-void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
+void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state,
+					bool is_edp)
 {
-	/* For fixed rr,  vmin = vmax = flipline */
-	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
+	if (is_cmrr_frac_required(crtc_state) && is_edp) {
+		/* For CMRR, vmin = vmax = flipline = Dethered Vtotal */
+		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state, false);
+	} else {
+		/* For fixed rr,  vmin = vmax = flipline */
+		crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.crtc_vtotal;
+	}
 	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 }
@@ -468,10 +457,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
 		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
-	else if (is_cmrr_frac_required(crtc_state) && is_edp)
-		intel_vrr_compute_cmrr_timings(crtc_state);
 	else
-		intel_vrr_compute_fixed_rr_timings(crtc_state);
+		intel_vrr_compute_fixed_rr_timings(crtc_state, is_edp);
 
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
-- 
2.48.1

