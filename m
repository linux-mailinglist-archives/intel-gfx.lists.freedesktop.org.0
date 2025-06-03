Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF2BACC8C8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 16:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40CB10E8F7;
	Tue,  3 Jun 2025 14:09:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ci39V6R7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFDA810E8D8;
 Tue,  3 Jun 2025 14:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748959746; x=1780495746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Q6PJPCooP/RkZ5rKlWNvSq7hPq/KXvC9fcQwA4uB0Nk=;
 b=ci39V6R7tVleYN496Fd1MKrWKOnvE97/c0AwaTBEFEo0Ue1JkcdpUu1s
 BZ4/8osdNM239quPdiT8UFXa9keZH6LfiEAtpi6qsD17ytpBzCDRErjtP
 11RcI3/BWn6dPjvNsaKqrgVKaXQjA3UEwG9XLeqyrvs28Z3UKsGzWLrEP
 /VoiSYwEwfC/VQSI+MuJevHloYZM5K7BGFGljPKxubN92v+Wsmgxpi0fO
 Br7gp7JcI08Af24fzFcxYFickclsRSuh/Y5hEQT/JAP82AgpEygtU5bdl
 diQszYzi+F8unKkmVCYmPAL5jeLpgvvvqYG5eZtx5lk9MRXRXu1hdZMYK g==;
X-CSE-ConnectionGUID: TChld3kkQYyu+fMDx7h0ig==
X-CSE-MsgGUID: QZC4PxblRXCi9Fs7FHGW2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="61265841"
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="61265841"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 07:09:05 -0700
X-CSE-ConnectionGUID: sM+J4sPjRiu8UcBRUwV1Yg==
X-CSE-MsgGUID: vJrMyCIoR+av0/Hy5E/KTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,206,1744095600"; d="scan'208";a="150155689"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.220])
 by orviesa005.jf.intel.com with SMTP; 03 Jun 2025 07:09:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Jun 2025 17:09:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 08/12] drm/i915/flipq: Implement flip queue based commit
 path
Date: Tue,  3 Jun 2025 17:08:32 +0300
Message-ID: <20250603140836.21432-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
References: <20250603140836.21432-1-ville.syrjala@linux.intel.com>
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
v3: Configure PKG_C_LATENCY appropriately
    Ignore INT_VECTOR if there is a real PIPEDMC interrupt
    (nothing in the hw appears to clear INT_VECTOR)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 44 +++++++++++++++----
 .../drm/i915/display/intel_display_params.c   |  3 ++
 .../drm/i915/display/intel_display_params.h   |  1 +
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 26 +++++++++--
 drivers/gpu/drm/i915/display/intel_flipq.c    |  5 ++-
 drivers/gpu/drm/i915/display/intel_flipq.h    |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +
 8 files changed, 71 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cc8402eaeda3..7e09df541dac 100644
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
@@ -6640,7 +6641,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
 		intel_atomic_get_new_crtc_state(state, crtc);
 	bool modeset = intel_crtc_needs_modeset(new_crtc_state);
 
-	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
+	drm_WARN_ON(display->drm, new_crtc_state->use_dsb || new_crtc_state->use_flipq);
 
 	/*
 	 * Disable the scaler(s) after the plane(s) so that we don't
@@ -6729,10 +6730,10 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state) &&
-	    !new_crtc_state->use_dsb)
+	    !new_crtc_state->use_dsb && !new_crtc_state->use_flipq)
 		intel_color_commit_noarm(NULL, new_crtc_state);
 
-	if (!new_crtc_state->use_dsb)
+	if (!new_crtc_state->use_dsb && !new_crtc_state->use_flipq)
 		intel_crtc_planes_update_noarm(NULL, state, crtc);
 }
 
@@ -6744,7 +6745,14 @@ static void intel_update_crtc(struct intel_atomic_state *state,
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
@@ -7182,7 +7190,17 @@ static void intel_atomic_dsb_prepare(struct intel_atomic_state *state,
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
@@ -7198,7 +7216,9 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color)
+	if (!new_crtc_state->use_flipq &&
+	    !new_crtc_state->use_dsb &&
+	    !new_crtc_state->dsb_color)
 		return;
 
 	/*
@@ -7207,14 +7227,16 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
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
@@ -7229,7 +7251,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_psr_trigger_frame_change_event(new_crtc_state->dsb_commit,
 						     state, crtc);
 
-		intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
+		if (new_crtc_state->use_dsb)
+			intel_dsb_vblank_evade(state, new_crtc_state->dsb_commit);
 
 		if (intel_crtc_needs_color_update(new_crtc_state))
 			intel_color_commit_arm(new_crtc_state->dsb_commit,
@@ -7408,6 +7431,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 
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
index 5b30b652e123..536a545cc387 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1299,6 +1299,7 @@ struct intel_crtc_state {
 	/* For DSB based pipe updates */
 	struct intel_dsb *dsb_color, *dsb_commit;
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
index 2ff62740833c..a23a726dea0d 100644
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
 
@@ -1481,12 +1482,29 @@ void intel_dmc_debugfs_register(struct intel_display *display)
 void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
 {
 	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
-	u32 tmp;
+	u32 tmp = 0, int_vector;
 
 	if (DISPLAY_VER(display) >= 20) {
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
@@ -1498,8 +1516,8 @@ void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
 				crtc->base.base.id, crtc->base.name);
 	}
 
-	tmp = intel_de_read(display, PIPEDMC_STATUS(pipe)) & PIPEDMC_INT_VECTOR_MASK;
-	if (tmp)
+	int_vector = intel_de_read(display, PIPEDMC_STATUS(pipe)) & PIPEDMC_INT_VECTOR_MASK;
+	if (tmp == 0 && int_vector != 0)
 		drm_err(display->drm, "[CRTC:%d:%s]] PIPEDMC interrupt vector 0x%x\n",
 			crtc->base.base.id, crtc->base.name, tmp);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.c b/drivers/gpu/drm/i915/display/intel_flipq.c
index 85e440ba04c6..331a56dad58e 100644
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
 
@@ -168,7 +171,7 @@ static int cdclk_factor(struct intel_display *display)
 		return 280;
 }
 
-static int intel_flipq_exec_time_us(struct intel_display *display)
+int intel_flipq_exec_time_us(struct intel_display *display)
 {
 	return intel_dsb_exec_time_us() +
 		DIV_ROUND_UP(display->cdclk.hw.cdclk * cdclk_factor(display), 540000) +
diff --git a/drivers/gpu/drm/i915/display/intel_flipq.h b/drivers/gpu/drm/i915/display/intel_flipq.h
index 64d3c2a5bb7b..195ff0dd83f5 100644
--- a/drivers/gpu/drm/i915/display/intel_flipq.h
+++ b/drivers/gpu/drm/i915/display/intel_flipq.h
@@ -28,5 +28,6 @@ void intel_flipq_add(struct intel_crtc *crtc,
 		     unsigned int pts,
 		     enum intel_dsb_id dsb_id,
 		     struct intel_dsb *dsb);
+int intel_flipq_exec_time_us(struct intel_display *display);
 
 #endif /* __INTEL_FLIPQ_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a588693a7094..af7c11673af4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -23,6 +23,7 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fixed.h"
+#include "intel_flipq.h"
 #include "intel_pcode.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
@@ -2943,6 +2944,7 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 	mutex_lock(&display->wm.wm_mutex);
 
 	latency = skl_watermark_max_latency(display, 1);
+	added_wake_time = intel_flipq_exec_time_us(display);
 
 	/*
 	 * Wa_22020432604
-- 
2.49.0

