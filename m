Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jxfZGOyqOWqawAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 23:36:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC886B2863
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 23:36:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fJCJWfTt;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E98110E8AD;
	Mon, 22 Jun 2026 21:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 734F010E8A4;
 Mon, 22 Jun 2026 21:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782164195; x=1813700195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CZGWdKE7n79xijnprnE3oRUPsBpauizUSM9b/EjUw28=;
 b=fJCJWfTtTQq2NFSkJ3Tq3wWBNlk7wXOK3SnEafXxAyIULafMEMP90yLg
 lpoR4EjnhSKILH5l9ugEC64x/kkFHfiLXAFGp7UHaQ+P8BZDFSvet8Kfb
 Toi1jt4VjEMv5E1BcQ2FSTW0+GBRVqq6mzlhifM7j/gGYzpQi+Cz/N+J0
 Ku9ecOTrEuoX9o7MpxTXjwCYszoYd5FzpMMnuo4AAyBPsNSpuyjpDvjnS
 OwxSIyyHMrywD8l9D1S3DYFiWISz1r/P0no0OPENGbyAWz8Ap5FLrbNR5
 UgfttJ4xPY/TD6UIRva5fk75yzMleioTdlYZOo+Kd0FxKurHhDiCmAZ6E A==;
X-CSE-ConnectionGUID: weC4HCGJSHG9XZ+oqDXVgQ==
X-CSE-MsgGUID: Jtet/ynJS82KPB/4h2XDNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="82673629"
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="82673629"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 14:36:34 -0700
X-CSE-ConnectionGUID: PwaQt6r7RWaGrF2wSY9rZA==
X-CSE-MsgGUID: +HULcFKPT9yRATGJqf2qKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,219,1774335600"; d="scan'208";a="246422789"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 14:36:32 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 5/5] drm/i915/panel: Attempt VRR based refresh rate change
 for !allow_modeset
Date: Tue, 23 Jun 2026 00:36:02 +0300
Message-ID: <20260622213602.7244-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
References: <20260622213602.7244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDC886B2863

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Adjust the panel fixed mode selection algorithm to only consider
fixed modes that are "VRR compatible" with the old fixed mode
when userspace doesn't want to allow full modesets. This will
allow a VRR based refresh rate changes (ie. just a change in
the vblank length) via the fastset path.

When full modesets are allowed, we still use the original algorithm
as that may pick a fixed mode with a more optimal dotclock, potentially
leading to reduced power consumption.

This approach works as long as userspace does the initial
allow_modeset=true commit using the highest refresh rate it will
want to use. Subsequent commits with allow_modeset=false can then
switch between lower refresh rates without blinks.

One remaining hurdle we may need to solve is the guardband length.
Assuming the highest refresh rate vblank is too short for
intel_vrr_compute_optimized_guardband() the intitial guardband will
match the highest refresh rate vblank. A subsequent switch to a lower
refresh rate will then recompute the guardband and select a value
that is higher (since the vblank will be longer). The mismatch in
guardband lengths will prevent the fastset. We may either have to
preserve the original (sub-optimal) guardband, or we'll have to
revisit the idea of changing the guardband without a full modeset.

Note that I'm not 100% happy with this solution because
intel_panel_fixed_mode() is no longer fully idempotent, but I wasn't
able to come up with anything truly better either :/ The simple
solution would be just to always pick the fixed mode with the highest
dotclock, but that could lead to increased power consumption even
when high refresh rates are never used.

Perhaps the proper solution would be to just deprecate this
idea of taking in random modes for internal panels and then
cooking up a compatible fixed modes. Life would be easier if
userspace was required to provide the desired fixed mode directly.
But in order to do that we'd need to introduce new uapi properties
to control the pfit aspect of this, and we'd probably need a new
client cap to select between the old and new userspace behaviour.
Something to consider in the future...

v2: Rebase due to earlier changes to VRR fixed mode selection

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_panel.c | 42 ++++++++++++++++++++--
 1 file changed, 39 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index faa24537ef63..81e638d0c7b3 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -72,9 +72,20 @@ static bool is_best_fixed_mode(struct intel_connector *connector,
 		abs(drm_mode_vrefresh(best_mode) - vrefresh);
 }
 
+static bool is_vrr_compatible(const struct drm_display_mode *mode1,
+			      const struct drm_display_mode *mode2)
+{
+	return drm_mode_match(mode1, mode2,
+			      DRM_MODE_MATCH_CLOCK |
+			      DRM_MODE_MATCH_TIMINGS_VRR |
+			      DRM_MODE_MATCH_FLAGS |
+			      DRM_MODE_MATCH_3D_FLAGS);
+}
+
 static const struct drm_display_mode *
 intel_panel_fixed_mode_vrr(struct intel_connector *connector,
-			   const struct drm_display_mode *mode)
+			   const struct drm_display_mode *mode,
+			   const struct drm_display_mode *vrr_ref_mode)
 {
 	const struct drm_display_mode *fixed_mode, *best_mode = NULL;
 	int vrefresh = drm_mode_vrefresh(mode);
@@ -82,6 +93,10 @@ intel_panel_fixed_mode_vrr(struct intel_connector *connector,
 	if (!intel_vrr_is_in_range(connector, vrefresh))
 		return NULL;
 
+	if (vrr_ref_mode &&
+	    !intel_vrr_is_in_range(connector, drm_mode_vrefresh(vrr_ref_mode)))
+		return NULL;
+
 	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
 		int fixed_mode_vrefresh = drm_mode_vrefresh(fixed_mode);
 
@@ -96,6 +111,10 @@ intel_panel_fixed_mode_vrr(struct intel_connector *connector,
 		if (fixed_mode_vrefresh < vrefresh)
 			continue;
 
+		if (vrr_ref_mode &&
+		    !is_vrr_compatible(fixed_mode, vrr_ref_mode))
+			continue;
+
 		if (is_best_fixed_mode(connector, vrefresh,
 				       fixed_mode_vrefresh, best_mode))
 			best_mode = fixed_mode;
@@ -224,10 +243,27 @@ static int intel_panel_compute_config_vrr(struct intel_atomic_state *state,
 					  struct intel_connector *connector)
 {
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	const struct drm_display_mode *fixed_mode;
+	const struct drm_display_mode *fixed_mode = NULL;
 	int vrefresh, fixed_mode_vrefresh;
 
-	fixed_mode = intel_panel_fixed_mode_vrr(connector, adjusted_mode);
+	/*
+	 * Attempt a VRR based refresh rate change if possible
+	 * when userspace has forbidden a full modeset.
+	 */
+	if (!state->base.allow_modeset) {
+		struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+		const struct intel_crtc_state *old_crtc_state =
+			intel_atomic_get_old_crtc_state(state, crtc);
+
+		if (old_crtc_state->hw.enable &&
+		    old_crtc_state->uapi.encoder_mask == crtc_state->uapi.encoder_mask)
+			fixed_mode = intel_panel_fixed_mode_vrr(connector, adjusted_mode,
+								&old_crtc_state->hw.adjusted_mode);
+	}
+
+	if (!fixed_mode)
+		fixed_mode = intel_panel_fixed_mode_vrr(connector, adjusted_mode, NULL);
+
 	if (!fixed_mode)
 		return -EINVAL;
 
-- 
2.53.0

