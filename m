Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0B9CB9222
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69BBF10E8D4;
	Fri, 12 Dec 2025 15:29:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nxngpL0o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C715510E8D1;
 Fri, 12 Dec 2025 15:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553370; x=1797089370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ThegcXhXNtJJOJ+bRrKU7w1ez/oT3D0g9PxxBBtlCsU=;
 b=nxngpL0oJ7+b9wUP71kh/COWke/FDN02yRZxFDWTxDmIsWewAbhfmu54
 gN/pI48zF7G9rXtSE/vgIfBlzYVtQzmVob/O+wVhemp/VxhRNDv3RhcQi
 EYb+yopTygSJ4TXwQkMuJbS837/KN84hXAUPkHbVmwl1nu9dDfxpleqjx
 Y0lEDRne46KIq8fpYKthEXlJH8+drBK5Jnkh1eteH0arWZCRKIVS7qloC
 e1vHLW25DkyRYt26EOJoZGEh+G96X6z+oMtJGVFNnB6+WPMJjubUKJSDp
 3/MCYmP1AugThzY5ZM38R31OFKwE4KySaW0OgAKUdKVP6xw5/y4e1rfWQ w==;
X-CSE-ConnectionGUID: 4yb3FZoJR8+J9AlANg/W+w==
X-CSE-MsgGUID: G5YGVDUfQkizgyepfZoCGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71402560"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="71402560"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:29 -0800
X-CSE-ConnectionGUID: i0xZGtJoQxCrF8/1M7zWiw==
X-CSE-MsgGUID: rs1i7qcYRXaN0Zim+iKD+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="228171860"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:28 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/13] drm/i915: Introduce enum intel_commit_type
Date: Fri, 12 Dec 2025 17:28:44 +0200
Message-ID: <20251212152847.13679-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we use two booleans (use_dsb and use_flipq)
to track how we are going to perform the actual commit.
That is rarher awkward, and potentially fragile as the
'use_dsb && use_flipq' combination isn't even legal.
Switch over to an enum instead.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_color.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 101 ++++++++++--------
 .../drm/i915/display/intel_display_types.h    |   8 +-
 5 files changed, 71 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index edf32b7fb5f7..e30a53136796 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -276,8 +276,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->update_planes = 0;
 	crtc_state->dsb_color = NULL;
 	crtc_state->dsb_commit = NULL;
-	crtc_state->use_flipq = false;
-	crtc_state->use_dsb = false;
+	crtc_state->commit_type = INTEL_COMMIT_MMIO;
 
 	return &crtc_state->uapi;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index f2e6b82968d2..8eac13590941 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -2020,14 +2020,14 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 		crtc_state->dsb_color = intel_dsb_prepare(state, crtc, INTEL_DSB_1, 1024);
 
 	if (!intel_color_uses_dsb(crtc_state)) {
-		crtc_state->use_flipq = false;
-		crtc_state->use_dsb = false;
+		crtc_state->commit_type = INTEL_COMMIT_MMIO;
 		return;
 	}
 
 	display->funcs.color->load_luts(crtc_state);
 
-	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
+	if (crtc_state->commit_type == INTEL_COMMIT_DSB &&
+	    intel_color_uses_chained_dsb(crtc_state)) {
 		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
 		intel_dsb_wait_for_delayed_vblank(state, crtc_state->dsb_color);
 		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 6dadffc63988..51741ca44705 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -550,7 +550,7 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 	struct intel_vblank_evade_ctx evade;
 	int scanline;
 
-	drm_WARN_ON(display->drm, new_crtc_state->use_dsb || new_crtc_state->use_flipq);
+	drm_WARN_ON(display->drm, new_crtc_state->commit_type != INTEL_COMMIT_MMIO);
 
 	intel_psr_lock(new_crtc_state);
 
@@ -689,7 +689,7 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 	u32 end_vbl_count = intel_crtc_get_vblank_counter(crtc);
 	ktime_t end_vbl_time = ktime_get();
 
-	drm_WARN_ON(display->drm, new_crtc_state->use_dsb || new_crtc_state->use_flipq);
+	drm_WARN_ON(display->drm, new_crtc_state->commit_type != INTEL_COMMIT_MMIO);
 
 	if (new_crtc_state->do_async_flip)
 		goto out;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 94742083693b..f09a0b3860d7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6688,7 +6688,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
-	drm_WARN_ON(display->drm, new_crtc_state->use_dsb || new_crtc_state->use_flipq);
+	drm_WARN_ON(display->drm, new_crtc_state->commit_type != INTEL_COMMIT_MMIO);
 
 	/*
 	 * During modesets pipe configuration was programmed as the
@@ -6718,7 +6718,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
-	drm_WARN_ON(display->drm, new_crtc_state->use_dsb || new_crtc_state->use_flipq);
+	drm_WARN_ON(display->drm, new_crtc_state->commit_type != INTEL_COMMIT_MMIO);
 
 	/*
 	 * Disable the scaler(s) after the plane(s) so that we don't
@@ -6810,13 +6810,13 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 
 	drm_WARN_ON(display->drm, !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF));
 
-	if (!modeset &&
-	    intel_crtc_needs_color_update(new_crtc_state) &&
-	    !new_crtc_state->use_dsb && !new_crtc_state->use_flipq)
-		intel_color_commit_noarm(NULL, new_crtc_state);
+	if (new_crtc_state->commit_type == INTEL_COMMIT_MMIO) {
+		if (!modeset &&
+		    intel_crtc_needs_color_update(new_crtc_state))
+			intel_color_commit_noarm(NULL, new_crtc_state);
 
-	if (!new_crtc_state->use_dsb && !new_crtc_state->use_flipq)
 		intel_crtc_planes_update_noarm(NULL, state, crtc);
+	}
 }
 
 static void intel_update_crtc(struct intel_atomic_state *state,
@@ -6827,18 +6827,23 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (new_crtc_state->use_flipq) {
+	switch (new_crtc_state->commit_type) {
+	case INTEL_COMMIT_FLIPQ:
 		intel_flipq_enable(new_crtc_state);
 
 		intel_crtc_prepare_vblank_event(new_crtc_state, &crtc->flipq_event);
 
 		intel_flipq_add(crtc, INTEL_FLIPQ_PLANE_1, 0, INTEL_DSB_0,
 				new_crtc_state->dsb_commit);
-	} else if (new_crtc_state->use_dsb) {
+		break;
+
+	case INTEL_COMMIT_DSB:
 		intel_crtc_prepare_vblank_event(new_crtc_state, &crtc->dsb_event);
 
 		intel_dsb_commit(new_crtc_state->dsb_commit);
-	} else {
+		break;
+
+	case INTEL_COMMIT_MMIO:
 		/* Perform vblank evasion around commit operation */
 		intel_pipe_update_start(state, crtc);
 
@@ -6852,6 +6857,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 		commit_pipe_post_planes(state, crtc);
 
 		intel_pipe_update_end(state, crtc);
+		break;
 	}
 
 	/*
@@ -7259,36 +7265,47 @@ static void intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
 	}
 }
 
-static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
-				     struct intel_crtc *crtc)
+static enum intel_commit_type
+intel_atomic_commit_type(struct intel_atomic_state *state,
+			 struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
 	if (!new_crtc_state->hw.active)
-		return;
+		return INTEL_COMMIT_MMIO;
 
 	if (state->base.legacy_cursor_update)
-		return;
+		return INTEL_COMMIT_MMIO;
 
 	/* FIXME deal with everything */
-	new_crtc_state->use_flipq =
-		intel_flipq_supported(display) &&
-		!new_crtc_state->do_async_flip &&
-		!new_crtc_state->vrr.enable &&
-		!new_crtc_state->has_psr &&
-		!intel_crtc_needs_modeset(new_crtc_state) &&
-		!intel_crtc_needs_fastset(new_crtc_state) &&
-		!intel_crtc_needs_color_update(new_crtc_state);
-
-	new_crtc_state->use_dsb =
-		intel_dsb_supported(display) &&
-		!new_crtc_state->use_flipq &&
-		!new_crtc_state->do_async_flip &&
-		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
-		!intel_crtc_needs_modeset(new_crtc_state) &&
-		!intel_crtc_needs_fastset(new_crtc_state);
+	if (intel_flipq_supported(display) &&
+	    !new_crtc_state->do_async_flip &&
+	    !new_crtc_state->vrr.enable &&
+	    !new_crtc_state->has_psr &&
+	    !intel_crtc_needs_modeset(new_crtc_state) &&
+	    !intel_crtc_needs_fastset(new_crtc_state) &&
+	    !intel_crtc_needs_color_update(new_crtc_state))
+		return INTEL_COMMIT_FLIPQ;
+
+	if (intel_dsb_supported(display) &&
+	    !new_crtc_state->do_async_flip &&
+	    (DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
+	    !intel_crtc_needs_modeset(new_crtc_state) &&
+	    !intel_crtc_needs_fastset(new_crtc_state))
+		return INTEL_COMMIT_DSB;
+
+	return INTEL_COMMIT_MMIO;
+}
+
+static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
+				     struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *new_crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+
+	new_crtc_state->commit_type = intel_atomic_commit_type(state, crtc);
 
 	intel_color_prepare_commit(state, crtc);
 }
@@ -7297,7 +7314,7 @@ static unsigned int
 commit_dsb_max_cmds(const struct intel_crtc_state *crtc_state)
 {
 	/* just enough to start the chained DSB */
-	if (!crtc_state->use_dsb && !crtc_state->use_flipq)
+	if (crtc_state->commit_type == INTEL_COMMIT_MMIO)
 		return 16;
 
 	/*
@@ -7320,23 +7337,21 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (!new_crtc_state->use_flipq &&
-	    !new_crtc_state->use_dsb &&
+	if (new_crtc_state->commit_type == INTEL_COMMIT_MMIO &&
 	    !new_crtc_state->dsb_color)
 		return;
 
 	new_crtc_state->dsb_commit = intel_dsb_prepare(state, crtc, INTEL_DSB_0,
 						       commit_dsb_max_cmds(new_crtc_state));
 	if (!new_crtc_state->dsb_commit) {
-		new_crtc_state->use_flipq = false;
-		new_crtc_state->use_dsb = false;
+		new_crtc_state->commit_type = INTEL_COMMIT_MMIO;
 		intel_color_cleanup_commit(new_crtc_state);
 		return;
 	}
 
-	if (new_crtc_state->use_flipq || new_crtc_state->use_dsb) {
+	if (new_crtc_state->commit_type != INTEL_COMMIT_MMIO) {
 		/* Wa_18034343758 */
-		if (new_crtc_state->use_flipq)
+		if (new_crtc_state->commit_type == INTEL_COMMIT_FLIPQ)
 			intel_flipq_wait_dmc_halt(new_crtc_state->dsb_commit, crtc);
 
 		if (intel_crtc_needs_color_update(new_crtc_state))
@@ -7356,7 +7371,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_psr_wait_for_idle_dsb(new_crtc_state->dsb_commit,
 					    new_crtc_state);
 
-		if (new_crtc_state->use_dsb)
+		if (new_crtc_state->commit_type == INTEL_COMMIT_DSB)
 			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
 		if (intel_crtc_needs_color_update(new_crtc_state))
@@ -7374,7 +7389,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 					   new_crtc_state);
 
 		/* Wa_18034343758 */
-		if (new_crtc_state->use_flipq)
+		if (new_crtc_state->commit_type == INTEL_COMMIT_FLIPQ)
 			intel_flipq_unhalt_dmc(new_crtc_state->dsb_commit, crtc);
 	}
 
@@ -7385,7 +7400,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_dsb_gosub(new_crtc_state->dsb_commit,
 				new_crtc_state->dsb_color);
 
-	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
+	if (new_crtc_state->commit_type == INTEL_COMMIT_DSB &&
+	    !intel_color_uses_chained_dsb(new_crtc_state)) {
 		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
 
 		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
@@ -7538,10 +7554,11 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 		intel_atomic_dsb_wait_commit(new_crtc_state);
 
-		if (!state->base.legacy_cursor_update && !new_crtc_state->use_dsb)
+		if (!state->base.legacy_cursor_update &&
+		    new_crtc_state->commit_type == INTEL_COMMIT_MMIO)
 			intel_vrr_check_push_sent(NULL, new_crtc_state);
 
-		if (new_crtc_state->use_flipq)
+		if (new_crtc_state->commit_type == INTEL_COMMIT_FLIPQ)
 			intel_flipq_disable(new_crtc_state);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6ff53cd58052..60f770ae70ad 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1369,8 +1369,12 @@ struct intel_crtc_state {
 
 	/* For DSB based pipe updates */
 	struct intel_dsb *dsb_color, *dsb_commit;
-	bool use_dsb;
-	bool use_flipq;
+
+	enum intel_commit_type {
+		INTEL_COMMIT_MMIO,
+		INTEL_COMMIT_DSB,
+		INTEL_COMMIT_FLIPQ,
+	} commit_type;
 
 	u32 psr2_man_track_ctl;
 
-- 
2.51.2

