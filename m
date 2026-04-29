Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEbLD6Tc8WnKkwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 12:25:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B37FA492CFE
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2026 12:25:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC2510EB08;
	Wed, 29 Apr 2026 10:25:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mTwPK7/a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF92210EF4F;
 Wed, 29 Apr 2026 10:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777458335; x=1808994335;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HjAnWqQphszr9Rl8hI2PDmJXsvMpI1TMjgvpa6zL+7Y=;
 b=mTwPK7/a9sGvSQuRJnYEn7K7pFy1NzvkiKsmxSqQIsazdRnlL5MdkgXv
 CzXaBNcc5/JbJ3y4uwrtFk9feM/SfkuK4Th+s89wgxURxK/rhfVTMPq95
 I4QxCxkVPCEzDPg2LwnWpTvp9VVhyx4M4yVjaPUIbdlfHbH0VPgKv0f0+
 xrFY/OM3oPCAVfrhV9FjE2Y+xJA2zOiZp4BqsFsuiUKBWM9TWKr19OOT0
 JdzoXDhMV0qcvFN058mf3NjZSU0O0aw0qg3thSsMqsPJ5yezu6muLSfsd
 r58hm26fUaHz15CJU58UtO77VjiEK7p0O7FiELi0lnVOKuzjq2ewPb1ER Q==;
X-CSE-ConnectionGUID: fV5350kGTdOAtcy6ZDCRgA==
X-CSE-MsgGUID: aZGB7X5zSi+BUgisgI1HgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="103838172"
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="103838172"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 03:25:35 -0700
X-CSE-ConnectionGUID: Ybz0eMxbQFaJKH5xVSDgBw==
X-CSE-MsgGUID: /Af18htaRL6NpjCChaaO3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,205,1770624000"; d="scan'208";a="257783981"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 03:25:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 08/15] drm/i915/display: move display funcs under modeset
 sub-struct
Date: Wed, 29 Apr 2026 13:24:48 +0300
Message-ID: <01e3b7ee97d6f29760e9bd0ee111fc6534996f73.1777458161.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777458161.git.jani.nikula@intel.com>
References: <cover.1777458161.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: B37FA492CFE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]

Move generic crtc-ish modeset related functions under a new modeset
sub-struct of struct intel_display. Rename struct intel_display_funcs to
intel_modeset_funcs to make it a little bit more specific. Remove the
funcs sub-struct.

The funcs sub-struct of struct intel_display seems unnecessary. Instead
of display->funcs.FEATURE, prefer display->FEATURE.funcs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 28 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h | 13 ++++-----
 .../drm/i915/display/intel_initial_plane.c    |  4 +--
 .../drm/i915/display/intel_modeset_setup.c    |  2 +-
 4 files changed, 23 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7839e663f7bc..b023cc46c863 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4051,7 +4051,7 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	if (!display->funcs.display->get_pipe_config(crtc, crtc_state))
+	if (!display->modeset.funcs->get_pipe_config(crtc, crtc_state))
 		return false;
 
 	crtc_state->hw.active = true;
@@ -6739,7 +6739,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 
 	intel_psr_notify_pipe_change(state, crtc, true);
 
-	display->funcs.display->crtc_enable(state, crtc);
+	display->modeset.funcs->crtc_enable(state, crtc);
 
 	/* vblanks work again, re-enable pipe CRC. */
 	intel_crtc_enable_pipe_crc(crtc);
@@ -6870,7 +6870,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 
 	intel_psr_notify_pipe_change(state, crtc, false);
 
-	display->funcs.display->crtc_disable(state, crtc);
+	display->modeset.funcs->crtc_disable(state, crtc);
 
 	for_each_intel_crtc_in_pipe_mask(display->drm, pipe_crtc,
 					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
@@ -7522,7 +7522,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	}
 
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
-	display->funcs.display->commit_modeset_enables(state);
+	display->modeset.funcs->commit_modeset_enables(state);
 
 	/* FIXME probably need to sequence this properly */
 	intel_program_dpkgc_latency(state);
@@ -8195,7 +8195,7 @@ intel_mode_valid_max_plane_size(struct intel_display *display,
 	return MODE_OK;
 }
 
-static const struct intel_display_funcs skl_display_funcs = {
+static const struct intel_modeset_funcs skl_display_funcs = {
 	.get_pipe_config = hsw_get_pipe_config,
 	.crtc_enable = hsw_crtc_enable,
 	.crtc_disable = hsw_crtc_disable,
@@ -8204,7 +8204,7 @@ static const struct intel_display_funcs skl_display_funcs = {
 	.fixup_initial_plane_config = skl_fixup_initial_plane_config,
 };
 
-static const struct intel_display_funcs ddi_display_funcs = {
+static const struct intel_modeset_funcs ddi_display_funcs = {
 	.get_pipe_config = hsw_get_pipe_config,
 	.crtc_enable = hsw_crtc_enable,
 	.crtc_disable = hsw_crtc_disable,
@@ -8213,7 +8213,7 @@ static const struct intel_display_funcs ddi_display_funcs = {
 	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
 };
 
-static const struct intel_display_funcs pch_split_display_funcs = {
+static const struct intel_modeset_funcs pch_split_display_funcs = {
 	.get_pipe_config = ilk_get_pipe_config,
 	.crtc_enable = ilk_crtc_enable,
 	.crtc_disable = ilk_crtc_disable,
@@ -8222,7 +8222,7 @@ static const struct intel_display_funcs pch_split_display_funcs = {
 	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
 };
 
-static const struct intel_display_funcs vlv_display_funcs = {
+static const struct intel_modeset_funcs vlv_display_funcs = {
 	.get_pipe_config = i9xx_get_pipe_config,
 	.crtc_enable = valleyview_crtc_enable,
 	.crtc_disable = i9xx_crtc_disable,
@@ -8231,7 +8231,7 @@ static const struct intel_display_funcs vlv_display_funcs = {
 	.fixup_initial_plane_config = i9xx_fixup_initial_plane_config,
 };
 
-static const struct intel_display_funcs i9xx_display_funcs = {
+static const struct intel_modeset_funcs i9xx_display_funcs = {
 	.get_pipe_config = i9xx_get_pipe_config,
 	.crtc_enable = i9xx_crtc_enable,
 	.crtc_disable = i9xx_crtc_disable,
@@ -8247,16 +8247,16 @@ static const struct intel_display_funcs i9xx_display_funcs = {
 void intel_init_display_hooks(struct intel_display *display)
 {
 	if (DISPLAY_VER(display) >= 9) {
-		display->funcs.display = &skl_display_funcs;
+		display->modeset.funcs = &skl_display_funcs;
 	} else if (HAS_DDI(display)) {
-		display->funcs.display = &ddi_display_funcs;
+		display->modeset.funcs = &ddi_display_funcs;
 	} else if (HAS_PCH_SPLIT(display)) {
-		display->funcs.display = &pch_split_display_funcs;
+		display->modeset.funcs = &pch_split_display_funcs;
 	} else if (display->platform.cherryview ||
 		   display->platform.valleyview) {
-		display->funcs.display = &vlv_display_funcs;
+		display->modeset.funcs = &vlv_display_funcs;
 	} else {
-		display->funcs.display = &i9xx_display_funcs;
+		display->modeset.funcs = &i9xx_display_funcs;
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index a319fb97dafa..796517e7bc6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -59,7 +59,7 @@ struct task_struct;
 /* Amount of PSF GV points, BSpec precisely defines this */
 #define I915_NUM_PSF_GV_POINTS 3
 
-struct intel_display_funcs {
+struct intel_modeset_funcs {
 	/*
 	 * Returns the active state of the crtc, and if the crtc is active,
 	 * fills out the pipe-config with the hw state.
@@ -309,12 +309,6 @@ struct intel_display {
 	/* list of all intel_crtcs sorted by pipe */
 	struct list_head pipe_list;
 
-	/* Display functions */
-	struct {
-		/* Top level crtc-ish functions */
-		const struct intel_display_funcs *display;
-	} funcs;
-
 	struct {
 		bool any_task_allowed;
 		struct task_struct *allowed_task;
@@ -518,6 +512,11 @@ struct intel_display {
 		u32 pipestat_irq_mask[I915_MAX_PIPES];
 	} irq;
 
+	struct {
+		/* Top level crtc-ish functions */
+		const struct intel_modeset_funcs *funcs;
+	} modeset;
+
 	struct {
 		/* protected by wm.wm_mutex */
 		u16 linetime[I915_MAX_PIPES];
diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 0e5cd45f01cc..034fe199c2a1 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -224,7 +224,7 @@ void intel_initial_plane_config(struct intel_display *display)
 		 * can even allow for smooth boot transitions if the BIOS
 		 * fb is large enough for the active pipe configuration.
 		 */
-		display->funcs.display->get_initial_plane_config(crtc, plane_config);
+		display->modeset.funcs->get_initial_plane_config(crtc, plane_config);
 
 		/*
 		 * If the fb is shared between multiple heads, we'll
@@ -232,7 +232,7 @@ void intel_initial_plane_config(struct intel_display *display)
 		 */
 		intel_find_initial_plane_obj(crtc, &all_plane_configs);
 
-		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
+		if (display->modeset.funcs->fixup_initial_plane_config(crtc, plane_config))
 			intel_initial_plane_vblank_wait(crtc);
 
 		plane_config_fini(display, plane_config);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 40a65a0d7ec7..4c646b1bd0ee 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -83,7 +83,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 		drm_WARN_ON(display->drm, IS_ERR(temp_crtc_state) || ret);
 	}
 
-	display->funcs.display->crtc_disable(to_intel_atomic_state(state), crtc);
+	display->modeset.funcs->crtc_disable(to_intel_atomic_state(state), crtc);
 
 	drm_atomic_state_put(state);
 
-- 
2.47.3

