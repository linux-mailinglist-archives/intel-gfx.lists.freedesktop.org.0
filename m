Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePqtL3UvA2qN1QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 731AE52195C
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 15:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0197D10EB16;
	Tue, 12 May 2026 13:47:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IntdmWWC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 844BD10EB0E;
 Tue, 12 May 2026 13:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778593651; x=1810129651;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DzDJMhY/IhdakaoW/1M+W31oPxzn7iTFyYba0LI4Idk=;
 b=IntdmWWCE7doML9plpZlMhA7PMJYskOrzmb3bc4JU/d+SYWV9MmEaPWe
 NibOLXI78/qa6g4cQdk1obgG09xLHAT/oBv4u3sAG0C1M0gsOs4RHoOtf
 GLP3rqbrcsrIQ9LEFBiUgqYAN6nU8LdzsqjLRO9RS/6iWo3ZXU9IhtnQ8
 jBB9VX+O2F18tY8dk4yZMwHREb6YuNKMez79NRrAs60pjdEaVJqQGKmTX
 e4VfA66BQm6GKEclsg6LhxHab6/jkM29p0w3CWMDwCBG/C/lWCGf2SL+9
 gHrNOHz+8n270NpRTmjFsSGjc19Y7YnvvLeGT0LsiJILh6Tk+t2XYUDXo A==;
X-CSE-ConnectionGUID: DA6VFh95QSiKH3mgHOgAJw==
X-CSE-MsgGUID: wolD8Dh/Tv2HjGmKjeAmFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90604351"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="90604351"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:31 -0700
X-CSE-ConnectionGUID: gVk2sndFRl6BG82At1+qRg==
X-CSE-MsgGUID: 0KH85Q3hQR6mGCaWM0rW7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="261257397"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 06:47:28 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 navaremanasi@google.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/6] drm/i915/intel_panel: Use highest refresh rate mode for
 VRR panels
Date: Tue, 12 May 2026 19:02:48 +0530
Message-ID: <20260512133249.2475882-6-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 731AE52195C
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

intel_panel_fixed_mode() intends to choose a fixed mode at or above the
requested refresh rate for VRR panels, so the requested refresh can be
reached by extending vblank.

However, as per the current logic in is_best_fixed_mode(), the helper
can return a lower refresh rate mode if it appears first in the list of
fixed modes. This is because is_best_fixed_mode() picks the closest
match, and the VRR check only rejects candidates where both rates are in
VRR range and the candidate is lower, but the first mode bypasses this
via the !best_mode early return.

For seamless switch features like LRR (Lower Refresh Rate) this creates
a problem as selecting a lower fixed mode results in a change in
vsync_start/end, forcing a full modeset.

To fix this, introduce need_higher_rr_mode() which returns true for all
VRR capable panels when the requested rate is in VRR range. When true,
intel_panel_fixed_mode() returns the highest refresh rate mode upfront,
which can then be reduced to match the requested vrefresh by extending
the vblank length.

Also remove the VRR check from is_best_fixed_mode() since the selection
is now handled upfront in intel_panel_fixed_mode().

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 37 ++++++++++++++--------
 1 file changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 2765d87ddca7..1c2a8cd454be 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -59,29 +59,32 @@ intel_panel_preferred_fixed_mode(struct intel_connector *connector)
 					struct drm_display_mode, head);
 }
 
-static bool is_best_fixed_mode(struct intel_connector *connector,
-			       int vrefresh, int fixed_mode_vrefresh,
+static bool is_best_fixed_mode(int vrefresh, int fixed_mode_vrefresh,
 			       const struct drm_display_mode *best_mode)
 {
 	/* we want to always return something */
 	if (!best_mode)
 		return true;
 
-	/*
-	 * With VRR always pick a mode with equal/higher than requested
-	 * vrefresh, which we can then reduce to match the requested
-	 * vrefresh by extending the vblank length.
-	 */
-	if (intel_vrr_is_in_range(connector, vrefresh) &&
-	    intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
-	    fixed_mode_vrefresh < vrefresh)
-		return false;
-
 	/* pick the fixed_mode that is closest in terms of vrefresh */
 	return abs(fixed_mode_vrefresh - vrefresh) <
 		abs(drm_mode_vrefresh(best_mode) - vrefresh);
 }
 
+static bool need_higher_rr_mode(struct intel_connector *connector,
+				const struct drm_display_mode *mode)
+{
+	int vrefresh = drm_mode_vrefresh(mode);
+
+	if (!intel_vrr_is_capable(connector))
+		return false;
+
+	if (!intel_vrr_is_in_range(connector, vrefresh))
+		return false;
+
+	return true;
+}
+
 const struct drm_display_mode *
 intel_panel_fixed_mode(struct intel_connector *connector,
 		       const struct drm_display_mode *mode)
@@ -89,10 +92,18 @@ intel_panel_fixed_mode(struct intel_connector *connector,
 	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
 	int vrefresh = drm_mode_vrefresh(mode);
 
+	/*
+	 * With VRR always pick the highest refresh rate mode,
+	 * which we can then reduce to match the requested
+	 * vrefresh by extending the vblank length.
+	 */
+	if (need_higher_rr_mode(connector, mode))
+		return intel_panel_highest_vrefresh_mode(connector);
+
 	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
 		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
 
-		if (is_best_fixed_mode(connector, vrefresh,
+		if (is_best_fixed_mode(vrefresh,
 				       fixed_mode_vrefresh, best_mode))
 			best_mode = fixed_mode;
 	}
-- 
2.45.2

