Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AE/MAnldEGqDWgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4E45B5630
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 15:43:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E8E210F618;
	Fri, 22 May 2026 13:43:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QDkg1ALO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0273510F64D;
 Fri, 22 May 2026 13:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779457396; x=1810993396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fb6zhpE0r0i7RUGb4vj/FPwUTu0UGdsqAKuzExImLBM=;
 b=QDkg1ALOpQGH44GZ+dArnPt4to2ql2eqEnlDeT6rUh/wMe0boDWOejFZ
 2c18VAcMXrOKRgDbzDAthSjR0oPet85+9PPd1uRaTHm/T33/hjT4pCsii
 YqEhocjb08Tw7uXpA8q3lbceGCp1E6uJX7cAEIs4gOcCSoeOwhiHo/tWb
 tDxFie9HOz6Zvda/VFc9K+A2KtGbZk46zQyFD+phpLDxEgP7WqQyn8v4f
 dLY7OT6UhF8+9eO3TxyprfdJEhSIv09olnO6rEU/kVBWlAZoObUa6vaXY
 5TgiOmn5+3FAABeK3EWkKDkfYQWDTSaj2VW4/LVOurEZpR7eAyZZztvWh g==;
X-CSE-ConnectionGUID: ihCozvRiQSKKB+J2hug+PQ==
X-CSE-MsgGUID: k4nr6HKCSbmRXrspGgbQpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="105850610"
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="105850610"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:15 -0700
X-CSE-ConnectionGUID: veG7hGX+T2mehXs2wkUJQQ==
X-CSE-MsgGUID: hA1EtK1kTAGetWvtriEmdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,162,1774335600"; d="scan'208";a="238317232"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 06:43:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/6] drm/i915/intel_panel: Refine VRR fixed mode selection for
 DRRS panels
Date: Fri, 22 May 2026 18:55:11 +0530
Message-ID: <20260522132511.321540-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
References: <20260522132511.321540-1-ankit.k.nautiyal@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AD4E45B5630
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
 drivers/gpu/drm/i915/display/intel_panel.c | 41 +++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_panel.h |  3 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c  |  5 +--
 3 files changed, 41 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 1c2a8cd454be..7f67b6ae45a9 100644
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
@@ -82,12 +84,41 @@ static bool need_higher_rr_mode(struct intel_connector *connector,
 	if (!intel_vrr_is_in_range(connector, vrefresh))
 		return false;
 
+	/* For mode valid path do not use High RR mode */
+	if (!state)
+		return false;
+
+	/* For seamless switch use High RR mode */
+	if (!state->allow_modeset)
+		return true;
+
+	/*
+	 * For DRRS panels with platforms that do not support
+	 * Double buffered MN, if allow modeset is set then
+	 * user might really need a lower clock mode, so do not
+	 * pick Higher RR mode in such a case.
+	 *
+	 * Platforms with Double buffered MN do not need this
+	 * since the lower clock can be achieved by seamless MN
+	 * switch by DRRS.
+	 */
+	if (intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS &&
+	    !HAS_DOUBLE_BUFFERED_M_N(display)) {
+		const struct drm_display_mode *downclock_mode =
+			intel_panel_downclock_mode(connector, mode);
+
+		if (downclock_mode &&
+		    drm_mode_vrefresh(downclock_mode) == drm_mode_vrefresh(mode))
+			return false;
+	}
+
 	return true;
 }
 
 const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
-		       const struct drm_display_mode *mode)
+		       const struct drm_display_mode *mode,
+		       const struct drm_atomic_commit *state)
 {
 	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
 	int vrefresh = drm_mode_vrefresh(mode);
@@ -97,7 +128,7 @@ intel_panel_fixed_mode(struct intel_connector *connector,
 	 * which we can then reduce to match the requested
 	 * vrefresh by extending the vblank length.
 	 */
-	if (need_higher_rr_mode(connector, mode))
+	if (need_higher_rr_mode(connector, mode, state))
 		return intel_panel_highest_vrefresh_mode(connector);
 
 	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
@@ -229,7 +260,7 @@ int intel_panel_compute_config(struct intel_connector *connector,
 {
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	const struct drm_display_mode *fixed_mode =
-		intel_panel_fixed_mode(connector, adjusted_mode);
+		intel_panel_fixed_mode(connector, adjusted_mode, state);
 	int vrefresh, fixed_mode_vrefresh;
 	bool is_vrr;
 
@@ -435,7 +466,7 @@ intel_panel_mode_valid(struct intel_connector *connector,
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
index 51746e10359f..9182a7f6b776 100644
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

