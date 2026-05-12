Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFjSLXcvA2qN1QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C42521963
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA40410EAE9;
	Tue, 12 May 2026 13:47:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UGj8nDJe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2BE110EAEA;
 Tue, 12 May 2026 13:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778593653; x=1810129653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=axnefGPYFL6LOcuwTaBAEGHGBEvZTk+EQUYRQBzxXo8=;
 b=UGj8nDJeovPYUDqxerzucgoiQl/56CS/1o82/OKQBa0eBek/bojvt7aG
 kzkDr5VbZF9gTc/IdkOjs9S2OQnVD9RPb9tmd6l/nhuu1JsFPldlsJya2
 6HvD7ELOwuMvLQVe95UxHUXPExWDJb7PReddfyICXHd2HkNKd5L8+vOa/
 q01fjAs5lSlMUsqiav9U4mai3RMSikCYsOyXg4X1NnyQb5p49qphABq5k
 EfzhI/Iy5X9rVgl0ZsmdGuFg3iOikBY/kTcqpH91umFhnSsyblpqHgDTC
 psFan4V/IiFADjBNtW1ojmsp/AeKmMu7MrW+riU5dzQuWyp2crXyohg+h w==;
X-CSE-ConnectionGUID: aZaQfL6TQFO+MXL48YhKYQ==
X-CSE-MsgGUID: of15aCtdTsiJiqb6Ynva7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90604355"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="90604355"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:33 -0700
X-CSE-ConnectionGUID: tHeEen83SmSW2q0gXCw+Uw==
X-CSE-MsgGUID: 5/ntyGwbR4SugvUkadQjug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="261257400"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:30 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/6] drm/i915/intel_panel: Refine VRR fixed mode selection for
 DRRS panels
Date: Tue, 12 May 2026 19:02:49 +0530
Message-ID: <20260512133249.2475882-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
References: <20260512133249.2475882-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 65C42521963
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

There are two kinds of VRR panels with fixed modes to consider:

Type 1: Modes with different clocks (e.g. 60Hz @ 347MHz, 120Hz @ 695MHz)
For such panels, it is not possible to seamlessly switch from a lower RR
mode to a higher RR mode, since at lower clock we cannot increase the
clock without a full modeset. But seamless switch from 120Hz to 60Hz can
be achieved by running at the same (higher) clock and just extending the
vtotal.

Type 2: Modes with same clock but different vtotal
Here the clock is the same, so we can go from higher RR to lower RR or
vice versa just by changing the vtotal. Seamless switching is possible
in both directions.

The previous change makes intel_panel_fixed_mode() always return the
highest refresh rate mode for all VRR panels. This works well for Type 2
panels since there is no clock advantage from picking a lower mode.

However for Type 1 (seamless DRRS) panels, if the user sets the
allow_modeset flag they really want a lower RR mode with a lower clock
to save power. So avoid selecting the highest RR mode when allow_modeset
is set for such panels.

Also, for seamless DRRS panels on platforms with double-buffered M/N
support, the clock can be changed on the fly, so we don't need the
highest RR + vtotal adjustment approach.

To understand the user requirement for full modeset/seamless switch, add
a nullable struct drm_atomic_commit state parameter to
intel_panel_fixed_mode() to check the allow_modeset flag.

Note: The mode_valid callers pass NULL since they have no atomic state.
In that case use the existing approach to select the closest-match to
avoid pruning valid modes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 35 ++++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_panel.h |  3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c  |  5 ++--
 3 files changed, 34 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 1c2a8cd454be..cc228ff81510 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -72,8 +72,10 @@ static bool is_best_fixed_mode(int vrefresh, int fixed_mode_vrefresh,
 }
 
 static bool need_higher_rr_mode(struct intel_connector *connector,
-				const struct drm_display_mode *mode)
+				const struct drm_display_mode *mode,
+				const struct drm_atomic_commit *state)
 {
+	struct intel_display *display = to_intel_display(connector);
 	int vrefresh = drm_mode_vrefresh(mode);
 
 	if (!intel_vrr_is_capable(connector))
@@ -82,12 +84,33 @@ static bool need_higher_rr_mode(struct intel_connector *connector,
 	if (!intel_vrr_is_in_range(connector, vrefresh))
 		return false;
 
-	return true;
+	if (!state)
+		return false;
+
+	/*
+	 * If Seamless switch requested, use highest RR mode + vtotal
+	 * adjustment, unless DRRS with double-buffered M/N which
+	 * can change the clock on the fly.
+	 */
+	if (!state->allow_modeset) {
+		if (intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS &&
+		    HAS_DOUBLE_BUFFERED_M_N(display))
+			return false;
+		return true;
+	}
+
+	/*
+	 * If full modeset is allowed, then for DRRS panels, use nearest mode
+	 * (lower clock saves power). For non-DRRS VRR panels, use highest RR
+	 * mode (no clock advantage from picking a lower mode).
+	 */
+	return intel_panel_drrs_type(connector) != DRRS_TYPE_SEAMLESS;
 }
 
 const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
-		       const struct drm_display_mode *mode)
+		       const struct drm_display_mode *mode,
+		       const struct drm_atomic_commit *state)
 {
 	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
 	int vrefresh = drm_mode_vrefresh(mode);
@@ -97,7 +120,7 @@ intel_panel_fixed_mode(struct intel_connector *connector,
 	 * which we can then reduce to match the requested
 	 * vrefresh by extending the vblank length.
 	 */
-	if (need_higher_rr_mode(connector, mode))
+	if (need_higher_rr_mode(connector, mode, state))
 		return intel_panel_highest_vrefresh_mode(connector);
 
 	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
@@ -229,7 +252,7 @@ int intel_panel_compute_config(struct intel_connector *connector,
 {
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_mode *fixed_mode =
-		intel_panel_fixed_mode(connector, adjusted_mode);
+		intel_panel_fixed_mode(connector, adjusted_mode, state);
 	int vrefresh, fixed_mode_vrefresh;
 	bool is_vrr;
 
@@ -435,7 +458,7 @@ intel_panel_mode_valid(struct intel_connector *connector,
 		       int *target_clock)
 {
 	const struct drm_display_mode *fixed_mode =
-		intel_panel_fixed_mode(connector, mode);
+		intel_panel_fixed_mode(connector, mode, NULL);
 
 	if (target_clock)
 		*target_clock = mode->clock;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 3c4ff6735c21..c44323918768 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -33,7 +33,8 @@ const struct drm_display_mode *
 intel_panel_preferred_fixed_mode(struct intel_connector *connector);
 const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
-		       const struct drm_display_mode *mode);
+		       const struct drm_display_mode *mode,
+		       const struct drm_atomic_commit *state);
 const struct drm_display_mode *
 intel_panel_downclock_mode(struct intel_connector *connector,
 			   const struct drm_display_mode *adjusted_mode);
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index e11c1dfc602a..0574a027526a 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -797,7 +797,7 @@ intel_sdvo_create_preferred_input_timing(struct intel_sdvo *intel_sdvo,
 
 	if (IS_LVDS(intel_sdvo_connector)) {
 		const struct drm_display_mode *fixed_mode =
-intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
+			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, NULL);
 
 		if (fixed_mode->hdisplay != args.width ||
 		    fixed_mode->vdisplay != args.height)
@@ -1564,7 +1564,8 @@ static void intel_sdvo_pre_enable(struct intel_atomic_state *state,
 	/* lvds has a special fixed output timing. */
 	if (IS_LVDS(intel_sdvo_connector)) {
 		const struct drm_display_mode *fixed_mode =
-			intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
+			intel_panel_fixed_mode(&intel_sdvo_connector->base,
+					       mode, conn_state->state);
 
 		intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
 	} else {
-- 
2.45.2

