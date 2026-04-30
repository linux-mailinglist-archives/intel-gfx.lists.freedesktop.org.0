Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEPNDd0S82k4xAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FF449F3F7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 10:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9F110F29C;
	Thu, 30 Apr 2026 08:29:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dQlOhSi+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61C0A10F290;
 Thu, 30 Apr 2026 08:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777537752; x=1809073752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hn19WhMEZ17r0pKGidxCXOdwWEi3AaAwIvVoBx+m7GI=;
 b=dQlOhSi+KHMXvdOmsSDXHSrvYZ/whd764PD+gyIV1EH7TG7HhpmQQRi1
 hsp+9bAXpRhwSj/mWqV52QBCwv1ZKJBMP+uOlthaT70I25SkkeAoYofcb
 xxwp9+2so3xmoxun7wK2OCsSu2zjRZY/tMclaSrVdHql70EhySEQIMKdW
 lV7appUF2MdHLrJ80fj3qnXUpEW70lx/a2G8XJTtYRFLVUL5vexm3gSLP
 x/8Ymymm0DmFOzWlJ7hJccg0zpVz5SJCg7Ni09uuR+d/VHMogr1zjfvVp
 3KuItAXYAYh3KgQ9i209UbcklYvTnK4BFr5QcqRophphB285A05wmAOMf A==;
X-CSE-ConnectionGUID: Gts6s6PGQkajxFo3zRVmdQ==
X-CSE-MsgGUID: 9N4EwFHMRjehrXE+u+BFzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="77646050"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="77646050"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:12 -0700
X-CSE-ConnectionGUID: vlLDREcrRVW1rgebEh01Ig==
X-CSE-MsgGUID: fBoIpY9OQxKfhBE8X12pxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="229911356"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.68])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 01:29:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/8] drm/i915/display: move watermark funcs under wm sub-struct
Date: Thu, 30 Apr 2026 11:28:48 +0300
Message-ID: <6b74ab66692dce20b2a6a8cb8cfdef222b2983ca.1777537663.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1777537663.git.jani.nikula@intel.com>
References: <cover.1777537663.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: A3FF449F3F7
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,0.0.0.60:email]

Move watermark related functions under wm sub-struct of struct
intel_display.

The funcs sub-struct of struct intel_display seems unnecessary. Instead
of display->funcs.FEATURE, prefer display->FEATURE.funcs.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 22 ++++++-------
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../gpu/drm/i915/display/intel_display_core.h |  6 ++--
 drivers/gpu/drm/i915/display/intel_wm.c       | 32 +++++++++----------
 drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
 5 files changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 02ac6f9a3d0e..ca4fff10ce8f 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3584,7 +3584,7 @@ void ilk_wm_sanitize(struct intel_display *display)
 	int i;
 
 	/* Only supported on platforms that use atomic watermark design */
-	if (!display->funcs.wm->optimize_watermarks)
+	if (!display->wm.funcs->optimize_watermarks)
 		return;
 
 	if (drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 9))
@@ -4152,34 +4152,34 @@ void i9xx_wm_init(struct intel_display *display)
 	/* For FIFO watermark updates */
 	if (HAS_PCH_SPLIT(display)) {
 		ilk_setup_wm_latency(display);
-		display->funcs.wm = &ilk_wm_funcs;
+		display->wm.funcs = &ilk_wm_funcs;
 	} else if (display->platform.valleyview || display->platform.cherryview) {
 		vlv_setup_wm_latency(display);
-		display->funcs.wm = &vlv_wm_funcs;
+		display->wm.funcs = &vlv_wm_funcs;
 	} else if (display->platform.g4x) {
 		g4x_setup_wm_latency(display);
-		display->funcs.wm = &g4x_wm_funcs;
+		display->wm.funcs = &g4x_wm_funcs;
 	} else if (display->platform.pineview) {
 		if (!pnv_get_cxsr_latency(display)) {
 			drm_info(display->drm, "Unknown FSB/MEM, disabling CxSR\n");
 			/* Disable CxSR and never update its watermark again */
 			intel_set_memory_cxsr(display, false);
-			display->funcs.wm = &nop_funcs;
+			display->wm.funcs = &nop_funcs;
 		} else {
-			display->funcs.wm = &pnv_wm_funcs;
+			display->wm.funcs = &pnv_wm_funcs;
 		}
 	} else if (DISPLAY_VER(display) == 4) {
-		display->funcs.wm = &i965_wm_funcs;
+		display->wm.funcs = &i965_wm_funcs;
 	} else if (DISPLAY_VER(display) == 3) {
-		display->funcs.wm = &i9xx_wm_funcs;
+		display->wm.funcs = &i9xx_wm_funcs;
 	} else if (DISPLAY_VER(display) == 2) {
 		if (INTEL_NUM_PIPES(display) == 1)
-			display->funcs.wm = &i845_wm_funcs;
+			display->wm.funcs = &i845_wm_funcs;
 		else
-			display->funcs.wm = &i9xx_wm_funcs;
+			display->wm.funcs = &i9xx_wm_funcs;
 	} else {
 		drm_err(display->drm,
 			"unexpected fall-through in %s\n", __func__);
-		display->funcs.wm = &nop_funcs;
+		display->wm.funcs = &nop_funcs;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 674a4ece6d0f..7839e663f7bc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2162,7 +2162,7 @@ static void i9xx_crtc_disable(struct intel_atomic_state *state,
 	if (DISPLAY_VER(display) != 2)
 		intel_set_cpu_fifo_underrun_reporting(display, pipe, false);
 
-	if (!display->funcs.wm->initial_watermarks)
+	if (!display->wm.funcs->initial_watermarks)
 		intel_update_watermarks(display);
 
 	/* clock the pipe down to 640x480@60 to potentially save power */
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 0fdda5339e81..01394724abc9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -247,6 +247,9 @@ struct intel_vbt_data {
 };
 
 struct intel_wm {
+	/* internal watermark functions */
+	const struct intel_wm_funcs *funcs;
+
 	/*
 	 * Raw watermark latency values:
 	 * in 0.1us units for WM0,
@@ -313,9 +316,6 @@ struct intel_display {
 
 		/* irq display functions */
 		const struct intel_hotplug_funcs *hotplug;
-
-		/* pm display functions */
-		const struct intel_wm_funcs *wm;
 	} funcs;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index f887a664fe22..b4aded774ce6 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -48,8 +48,8 @@
  */
 void intel_update_watermarks(struct intel_display *display)
 {
-	if (display->funcs.wm->update_wm)
-		display->funcs.wm->update_wm(display);
+	if (display->wm.funcs->update_wm)
+		display->wm.funcs->update_wm(display);
 }
 
 int intel_wm_compute(struct intel_atomic_state *state,
@@ -57,10 +57,10 @@ int intel_wm_compute(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(state);
 
-	if (!display->funcs.wm->compute_watermarks)
+	if (!display->wm.funcs->compute_watermarks)
 		return 0;
 
-	return display->funcs.wm->compute_watermarks(state, crtc);
+	return display->wm.funcs->compute_watermarks(state, crtc);
 }
 
 bool intel_initial_watermarks(struct intel_atomic_state *state,
@@ -68,8 +68,8 @@ bool intel_initial_watermarks(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(state);
 
-	if (display->funcs.wm->initial_watermarks) {
-		display->funcs.wm->initial_watermarks(state, crtc);
+	if (display->wm.funcs->initial_watermarks) {
+		display->wm.funcs->initial_watermarks(state, crtc);
 		return true;
 	}
 
@@ -81,8 +81,8 @@ void intel_atomic_update_watermarks(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(state);
 
-	if (display->funcs.wm->atomic_update_watermarks)
-		display->funcs.wm->atomic_update_watermarks(state, crtc);
+	if (display->wm.funcs->atomic_update_watermarks)
+		display->wm.funcs->atomic_update_watermarks(state, crtc);
 }
 
 void intel_optimize_watermarks(struct intel_atomic_state *state,
@@ -90,30 +90,30 @@ void intel_optimize_watermarks(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(state);
 
-	if (display->funcs.wm->optimize_watermarks)
-		display->funcs.wm->optimize_watermarks(state, crtc);
+	if (display->wm.funcs->optimize_watermarks)
+		display->wm.funcs->optimize_watermarks(state, crtc);
 }
 
 int intel_compute_global_watermarks(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
 
-	if (display->funcs.wm->compute_global_watermarks)
-		return display->funcs.wm->compute_global_watermarks(state);
+	if (display->wm.funcs->compute_global_watermarks)
+		return display->wm.funcs->compute_global_watermarks(state);
 
 	return 0;
 }
 
 void intel_wm_get_hw_state(struct intel_display *display)
 {
-	if (display->funcs.wm->get_hw_state)
-		return display->funcs.wm->get_hw_state(display);
+	if (display->wm.funcs->get_hw_state)
+		return display->wm.funcs->get_hw_state(display);
 }
 
 void intel_wm_sanitize(struct intel_display *display)
 {
-	if (display->funcs.wm->sanitize)
-		return display->funcs.wm->sanitize(display);
+	if (display->wm.funcs->sanitize)
+		return display->wm.funcs->sanitize(display);
 }
 
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 4bffa27ce02c..96d2dcbe7bbc 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3995,7 +3995,7 @@ void skl_wm_init(struct intel_display *display)
 
 	skl_setup_wm_latency(display);
 
-	display->funcs.wm = &skl_wm_funcs;
+	display->wm.funcs = &skl_wm_funcs;
 }
 
 static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
-- 
2.47.3

