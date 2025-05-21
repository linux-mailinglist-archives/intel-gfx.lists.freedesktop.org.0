Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A7EABFCDC
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 20:29:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F0410E830;
	Wed, 21 May 2025 18:17:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TRIJg3wR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2006810E84A;
 Wed, 21 May 2025 18:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747851437; x=1779387437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j97NpIlyenlyhA1V6utVO6KhvhhUeT3kVaAmVfpBbdQ=;
 b=TRIJg3wRf+0pxd7R7n/ng/h2PrD+9Rj/TUYzLvH8duvwMw50Eh4x5ac3
 Ms/AiiM0bRjfnt/IqRYKALaia6qLGafs1I0tdoCIPkdFHd8W7gGFJtgZq
 XaUaaa5O7eIN7OLBjNcMqnlcIx/7BU3Kb3PS18qFC9cGMrKFOgFYf27Cz
 w4BBhsYcX785m5RTn3zrDE91PajS0/W2N+1HvL5tV3GK/DI2f8Lt+z21I
 xsYnJyG+BLzL5nxptg1tZCZ2ZFZmQzbWm3eUkJb5za7JjL1+S0RJCmWsP
 xaDwQ/becC7TNasTWFDukzUmKDh0/4LSyTE59SqDhBqguaj1xVMMHxh4C A==;
X-CSE-ConnectionGUID: JB/SA2wiRFC151NSdwdIiQ==
X-CSE-MsgGUID: VG5gYy2tRS2DJJM/d0QfZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="75244770"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="75244770"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 11:17:17 -0700
X-CSE-ConnectionGUID: aO6sZfTfS6Kkg+rewfz5xw==
X-CSE-MsgGUID: 2h8t+m+aTTiyYW1Y25iAhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145322297"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 11:17:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 21:17:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 09/13] drm/i915/flipq: Implement flip queue based commit
 path
Date: Wed, 21 May 2025 21:16:41 +0300
Message-ID: <20250521181645.32737-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
References: <20250521181645.32737-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Support commits via the flip queue (as opposed to DSB or MMIO).

As it's somewhat unknown if we can actually use it is currently
gated behind the new use_flipq modparam, which defaults to disabled.

The implementation has a bunch of limitations that would need
real though to solve:
- disabled when PSR is used
- disabled when VRR is used
- color management updates not performed via the flip queue

v2: Don't use flip queue if there is no dmc
v3: Use intel_flipq_supported()

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 62 +++++++++++++------
 .../drm/i915/display/intel_display_params.c   |  3 +
 .../drm/i915/display/intel_display_params.h   |  1 +
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/display/intel_dmc.c      | 20 +++++-
 drivers/gpu/drm/i915/display/intel_flipq.c    |  3 +
 6 files changed, 73 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c894e4d0d488..f2a0bc5323c9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -93,6 +93,7 @@
 #include "intel_fbc.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
+#include "intel_flipq.h"
 #include "intel_frontbuffer.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
@@ -6610,7 +6611,7 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
-	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
+	drm_WARN_ON(display->drm, new_crtc_state->use_dsb || new_crtc_state->use_flipq);
 
 	/*
 	 * During modesets pipe configuration was programmed as the
@@ -6639,7 +6640,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
+	drm_WARN_ON(display->drm, new_crtc_state->use_dsb || new_crtc_state->use_flipq);
 
 	/*
 	 * Disable the scaler(s) after the plane(s) so that we don't
@@ -6723,10 +6724,10 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state) &&
-	    !new_crtc_state->use_dsb)
+	    !new_crtc_state->use_dsb && !new_crtc_state->use_flipq)
 		intel_color_commit_noarm(NULL, new_crtc_state);
 
-	if (!new_crtc_state->use_dsb)
+	if (!new_crtc_state->use_dsb && !new_crtc_state->use_flipq)
 		intel_crtc_planes_update_noarm(NULL, state, crtc);
 }
 
@@ -6738,7 +6739,14 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (new_crtc_state->use_dsb) {
+	if (new_crtc_state->use_flipq) {
+		intel_flipq_enable(new_crtc_state);
+
+		intel_crtc_prepare_vblank_event(new_crtc_state, &crtc->flipq_event);
+
+		intel_flipq_add(crtc, INTEL_FLIPQ_PLANE_1, 0, INTEL_DSB_0,
+				new_crtc_state->dsb_commit);
+	} else if (new_crtc_state->use_dsb) {
 		intel_crtc_prepare_vblank_event(new_crtc_state, &crtc->dsb_event);
 
 		intel_dsb_commit(new_crtc_state->dsb_commit, false);
@@ -7176,7 +7184,17 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 		return;
 
 	/* FIXME deal with everything */
+	new_crtc_state->use_flipq =
+		intel_flipq_supported(display) &&
+		!new_crtc_state->do_async_flip &&
+		!new_crtc_state->vrr.enable &&
+		!new_crtc_state->has_psr &&
+		!intel_crtc_needs_modeset(new_crtc_state) &&
+		!intel_crtc_needs_fastset(new_crtc_state) &&
+		!intel_crtc_needs_color_update(new_crtc_state);
+
 	new_crtc_state->use_dsb =
+		!new_crtc_state->use_flipq &&
 		!new_crtc_state->do_async_flip &&
 		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
 		!intel_crtc_needs_modeset(new_crtc_state) &&
@@ -7192,7 +7210,9 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
+	if (!new_crtc_state->use_flipq &&
+	    !new_crtc_state->use_dsb &&
+	    !new_crtc_state->dsb_color_vblank)
 		return;
 
 	/*
@@ -7201,14 +7221,16 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	 * Double that for pipe stuff and other overhead.
 	 */
 	new_crtc_state->dsb_commit = intel_dsb_prepare(state, crtc, INTEL_DSB_0,
-						       new_crtc_state->use_dsb ? 1024 : 16);
+						       new_crtc_state->use_dsb ||
+						       new_crtc_state->use_flipq ? 1024 : 16);
 	if (!new_crtc_state->dsb_commit) {
+		new_crtc_state->use_flipq = false;
 		new_crtc_state->use_dsb = false;
 		intel_color_cleanup_commit(new_crtc_state);
 		return;
 	}
 
-	if (new_crtc_state->use_dsb) {
+	if (new_crtc_state->use_flipq || new_crtc_state->use_dsb) {
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_noarm(new_crtc_state->dsb_commit,
 						 new_crtc_state);
@@ -7223,7 +7245,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
 						     state, crtc);
 
-		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
+		if (new_crtc_state->use_dsb)
+			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_arm(new_crtc_state->dsb_commit,
@@ -7238,21 +7261,21 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		if (DISPLAY_VER(display) >= 9)
 			skl_detach_scalers(new_crtc_state->dsb_commit,
 					   new_crtc_state);
-
-		if (!new_crtc_state->dsb_color_vblank) {
-			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
-
-			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
-			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
-			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
-			intel_dsb_interrupt(new_crtc_state->dsb_commit);
-		}
 	}
 
 	if (new_crtc_state->dsb_color_vblank)
 		intel_dsb_chain(state, new_crtc_state->dsb_commit,
 				new_crtc_state->dsb_color_vblank, true);
 
+	if (new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank) {
+		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
+
+		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
+		intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
+		intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
+		intel_dsb_interrupt(new_crtc_state->dsb_commit);
+	}
+
 	intel_dsb_finish(new_crtc_state->dsb_commit);
 }
 
@@ -7397,6 +7420,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
 		if (!state->base.legacy_cursor_update && !new_crtc_state->use_dsb)
 			intel_vrr_check_push_sent(NULL, new_crtc_state);
+
+		if (new_crtc_state->use_flipq)
+			intel_flipq_disable(new_crtc_state);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index c4f1ab43fc0c..75316247ee8a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -62,6 +62,9 @@ intel_display_param_named_unsafe(enable_dpt, bool, 0400,
 intel_display_param_named_unsafe(enable_dsb, bool, 0400,
 	"Enable display state buffer (DSB) (default: true)");
 
+intel_display_param_named_unsafe(enable_flipq, bool, 0400,
+	"Enable DMC flip queue (default: false)");
+
 intel_display_param_named_unsafe(enable_sagv, bool, 0400,
 	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 5317138e6044..784e6bae8615 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -31,6 +31,7 @@ struct drm_printer;
 	param(int, enable_dc, -1, 0400) \
 	param(bool, enable_dpt, true, 0400) \
 	param(bool, enable_dsb, true, 0600) \
+	param(bool, enable_flipq, false, 0600) \
 	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
 	param(bool, enable_ips, true, 0600) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c1426f42879d..0b995c8f9dcc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1299,6 +1299,7 @@ struct intel_crtc_state {
 	/* For DSB based pipe updates */
 	struct intel_dsb *dsb_color_vblank, *dsb_commit;
 	bool use_dsb;
+	bool use_flipq;
 
 	u32 psr2_man_track_ctl;
 
@@ -1406,6 +1407,8 @@ struct intel_crtc {
 	struct drm_pending_vblank_event *flip_done_event;
 	/* armed event for DSB based updates */
 	struct drm_pending_vblank_event *dsb_event;
+	/* armed event for flip queue based updates */
+	struct drm_pending_vblank_event *flipq_event;
 
 	/* Access to these should be protected by display->irq.lock. */
 	bool cpu_fifo_underrun_disabled;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2ff62740833c..fa2df7582062 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -502,7 +502,8 @@ static u32 pipedmc_interrupt_mask(struct intel_display *display)
 	 * triggering it during the first DC state transition. Figure
 	 * out what is going on...
 	 */
-	return PIPEDMC_GTT_FAULT |
+	return PIPEDMC_FLIPQ_PROG_DONE |
+		PIPEDMC_GTT_FAULT |
 		PIPEDMC_ATS_FAULT;
 }
 
@@ -1487,6 +1488,23 @@ void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
 		tmp = intel_de_read(display, PIPEDMC_INTERRUPT(pipe));
 		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), tmp);
 
+		if (tmp & PIPEDMC_FLIPQ_PROG_DONE) {
+			spin_lock(&display->drm->event_lock);
+
+			if (crtc->flipq_event) {
+				/*
+				 * Update vblank counter/timestamp in case it
+				 * hasn't been done yet for this frame.
+				 */
+				drm_crtc_accurate_vblank_count(&crtc->base);
+
+				drm_crtc_send_vblank_event(&crtc->base, crtc->flipq_event);
+				crtc->flipq_event = NULL;
+			}
+
+			spin_unlock(&display->drm->event_lock);
+		}
+
 		if (tmp & PIPEDMC_ATS_FAULT)
 			drm_err_ratelimited(display->drm, "[CRTC:%d:%s] PIPEDMC ATS fault\n",
 					    crtc->base.base.id, crtc->base.name);
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 8f2e04a72885..4bde16b3624a 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.c
+++ b/drivers/gpu/drm/i915/display/intel_flipq.c
@@ -98,6 +98,9 @@ static void intel_flipq_crtc_init(struct intel_crtc *crtc)
 
 bool intel_flipq_supported(struct intel_display *display)
 {
+	if (!display->params.enable_flipq)
+		return false;
+
 	if (!display->dmc.dmc)
 		return false;
 
-- 
2.49.0

