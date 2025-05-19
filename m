Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C9EABC53B
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 19:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A1910E3D0;
	Mon, 19 May 2025 17:09:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fEq+ny04";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D258A10E3EC;
 Mon, 19 May 2025 17:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747674572; x=1779210572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M3xNMDdHidG6sL9OIMy6NgNejkXOPxfhUIOoJi0pdDc=;
 b=fEq+ny04Qdu7Bhmytsb7FQGg0G/qvTimTPyT7JrQkfFWNGo8a2/0KolF
 8oM4TngXByRSuFvBLbEUS7kCPj1zXg8G1zFZ0w5u+97LV1xMT4yna6gpF
 X6YjcEhPyuPo9jRR0PGFFFq/tmtaIWTM53KUFNgFnvWo4A6zLAmmAeJ3b
 fZJkT+v9fFQgqXIuJa8Es0Ob5dFZhUH+qkMJ9n8XanrSWQ0PeF9vBg3kQ
 sNtK6tHabhsVH7sGwpjgflVYSLhnktQwKH0Y9cFWwddKCgkLH6I3pqnOi
 OhR3Uk2dIfes828eY0gbHk268i6+WESdJUc3NwsmGy/rzBYPd3IizdH2D A==;
X-CSE-ConnectionGUID: rkDUo62JRYi5bm6xF2+znQ==
X-CSE-MsgGUID: VaQvKYgIQPevLgizE/J+eQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49283640"
X-IronPort-AV: E=Sophos;i="6.15,301,1739865600"; d="scan'208";a="49283640"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 10:09:32 -0700
X-CSE-ConnectionGUID: g61sON8sSByGKCcD65Z9GA==
X-CSE-MsgGUID: wFNXJGBsRfuuofDBzlkDGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,301,1739865600"; d="scan'208";a="144551586"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.242])
 by orviesa005.jf.intel.com with SMTP; 19 May 2025 10:09:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 19 May 2025 20:09:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 08/12] drm/i915/flipq: Implement flipq queue based commit
 path
Date: Mon, 19 May 2025 20:09:28 +0300
Message-ID: <20250519170928.14289-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250516113408.11689-9-ville.syrjala@linux.intel.com>
References: <20250516113408.11689-9-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 64 +++++++++++++------
 .../drm/i915/display/intel_display_params.c   |  3 +
 .../drm/i915/display/intel_display_params.h   |  1 +
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/display/intel_dmc.c      | 20 +++++-
 5 files changed, 72 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1b09f8ae76ff..8b0eecfd4b16 100644
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
@@ -7176,7 +7184,19 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 		return;
 
 	/* FIXME deal with everything */
+	new_crtc_state->use_flipq =
+		display->params.enable_flipq &&
+		DISPLAY_VER(display) >= 20 &&
+		display->dmc.dmc &&
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
@@ -7192,7 +7212,9 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
+	if (!new_crtc_state->use_flipq &&
+	    !new_crtc_state->use_dsb &&
+	    !new_crtc_state->dsb_color_vblank)
 		return;
 
 	/*
@@ -7201,14 +7223,16 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
@@ -7223,7 +7247,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
 						     state, crtc);
 
-		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
+		if (new_crtc_state->use_dsb)
+			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_arm(new_crtc_state->dsb_commit,
@@ -7238,21 +7263,21 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
 
@@ -7397,6 +7422,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
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
index 2f3fdf292d88..dd87099823d2 100644
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
-- 
2.49.0

