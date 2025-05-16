Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89879AB9B27
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 13:34:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D4110EA6D;
	Fri, 16 May 2025 11:34:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SGxwbxT1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10ACB10EA66;
 Fri, 16 May 2025 11:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747395277; x=1778931277;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/r5d7d8hEz8Aq41WIF5JcC+cqelrwUs3J47W9FOA9OM=;
 b=SGxwbxT1Vpz79WbwqiwVu7wXOGXgcWuH4Db2oNFbGtka/K54yqihwyuq
 jFo1h0ST4RLxUtIsrDm9WJnkji7UO6eeSaQCTvzTZoC0SeXo722l+XU28
 SrauLwHcrCweNYx+0YsRrh/2vdtTaktmMWB7s71EBMskQn/JfhKk57Daw
 Gw/EArWlx+lDgWkorM7Lldv9wd7qB6DorXZR+5CRe5PPS3BHvBY1VyfZ8
 tZqfcACiboL+51ooeR5yP6ncrHnljZH+QXec8KQwiMclE8D77fttEFWWE
 +9oTnkjNAxqhi9vf6ntvCydQKysXlt65sC1ZGcos/8efcK4/OXji45SmB A==;
X-CSE-ConnectionGUID: 97C7K5fXT1+HA82leqHnNA==
X-CSE-MsgGUID: 8OrDyXNbTJqm1PkPkHSnDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11434"; a="49349826"
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="49349826"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 04:34:37 -0700
X-CSE-ConnectionGUID: HToG+uVVQdaSUx1cVOcMQQ==
X-CSE-MsgGUID: EYS+bOYZSGm6BjCANZrz5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,293,1739865600"; d="scan'208";a="143779589"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.161])
 by orviesa005.jf.intel.com with SMTP; 16 May 2025 04:34:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 May 2025 14:34:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/12] drm/i915/flipq: Implement flipq queue based commit path
Date: Fri, 16 May 2025 14:34:04 +0300
Message-ID: <20250516113408.11689-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 63 +++++++++++++------
 .../drm/i915/display/intel_display_params.c   |  3 +
 .../drm/i915/display/intel_display_params.h   |  1 +
 .../drm/i915/display/intel_display_types.h    |  3 +
 drivers/gpu/drm/i915/display/intel_dmc.c      | 20 +++++-
 5 files changed, 71 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1b09f8ae76ff..3a42536247d8 100644
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
@@ -7176,7 +7184,18 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
 		return;
 
 	/* FIXME deal with everything */
+	new_crtc_state->use_flipq =
+		display->params.enable_flipq &&
+		DISPLAY_VER(display) >= 20 &&
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
@@ -7192,7 +7211,9 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
+	if (!new_crtc_state->use_flipq &&
+	    !new_crtc_state->use_dsb &&
+	    !new_crtc_state->dsb_color_vblank)
 		return;
 
 	/*
@@ -7201,14 +7222,16 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
@@ -7223,7 +7246,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
 						     state, crtc);
 
-		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
+		if (new_crtc_state->use_dsb)
+			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_arm(new_crtc_state->dsb_commit,
@@ -7238,21 +7262,21 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
 
@@ -7397,6 +7421,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
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
index 7b28da58faec..10d1be68df79 100644
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
 
@@ -1486,6 +1487,23 @@ void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
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

