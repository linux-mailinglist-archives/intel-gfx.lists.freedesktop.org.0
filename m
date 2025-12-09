Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EF3CAFC56
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 12:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BBD710E50F;
	Tue,  9 Dec 2025 11:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OVFuxD6c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0FBA10E4FA;
 Tue,  9 Dec 2025 11:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765279850; x=1796815850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ex8CoYVada5d0zfQzgCbP2fB1/7OwlNPviOuraE8IGw=;
 b=OVFuxD6cNCK+8EwaKV8I5pyKcBcS+JrXx5oQkbjDvbRo5cMjOyPZPVBM
 q2jKKS+sCAVNkgghTW6dIbNS03IEKidgtY0LNfBBKW9Nak4YthAZ4d0bi
 uob9L2OlopND56f+a767yLjKKCY4yV0JcYzolyyaz9219y3GGKj597jIs
 1g5qmRJJ/9z2sPBNEHE0JIZgICV45XJrzJzR+FF2JRkEhCdkRI9A1YjLQ
 vLNZYB1SLlfl0UYfzoipNtcdJxiAJseExysJ0VhLskp7NeQg602fyYnlG
 0kLcmRuW+iPcJYPuykNKF8RV/1vgOZuIa2YWt9Nkjzz4P9FXEAbaOvJ3l g==;
X-CSE-ConnectionGUID: anseVTRuQdq+5fHnlgtYXw==
X-CSE-MsgGUID: JbUtrBzpR1ShCd7GIBioZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="78699624"
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="78699624"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:30:49 -0800
X-CSE-ConnectionGUID: 5dJXNlF1Q2K9EbIW6vji8w==
X-CSE-MsgGUID: auUgiGGBSv+3+IMyX9hNDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="196213256"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 03:30:48 -0800
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com, imre.deak@intel.com,
 jouni.hogander@intel.com
Subject: [PATCH 1/9] drm/i915/display: Remove TGL DC3CO support
Date: Tue,  9 Dec 2025 17:03:24 +0530
Message-ID: <20251209113332.2770263-2-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
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

Remove all Tiger Lake DC3CO-related functions, as the feature is no
longer used. The existing structure members are intentionally left in
place and will be cleaned up in subsequent patches.

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../i915/display/intel_display_power_well.c   |  25 ---
 .../drm/i915/display/intel_display_types.h    |   1 -
 drivers/gpu/drm/i915/display/intel_psr.c      | 163 ------------------
 3 files changed, 189 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index db185a859133..2dce622eb5d8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -821,23 +821,6 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
 	power_domains->dc_state = val & mask;
 }
 
-static void tgl_enable_dc3co(struct intel_display *display)
-{
-	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
-	gen9_set_dc_state(display, DC_STATE_EN_DC3CO);
-}
-
-static void tgl_disable_dc3co(struct intel_display *display)
-{
-	drm_dbg_kms(display->drm, "Disabling DC3CO\n");
-	intel_de_rmw(display, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
-	gen9_set_dc_state(display, DC_STATE_DISABLE);
-	/*
-	 * Delay of 200us DC3CO Exit time B.Spec 49196
-	 */
-	usleep_range(200, 210);
-}
-
 static void assert_can_enable_dc5(struct intel_display *display)
 {
 	enum i915_power_well_id high_pg;
@@ -1016,11 +999,6 @@ void gen9_disable_dc_states(struct intel_display *display)
 	struct intel_cdclk_config cdclk_config = {};
 	u32 old_state = power_domains->dc_state;
 
-	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO) {
-		tgl_disable_dc3co(display);
-		return;
-	}
-
 	if (HAS_DISPLAY(display)) {
 		intel_dmc_wl_get_noreg(display);
 		gen9_set_dc_state(display, DC_STATE_DISABLE);
@@ -1069,9 +1047,6 @@ static void gen9_dc_off_power_well_disable(struct intel_display *display,
 		return;
 
 	switch (power_domains->target_dc_state) {
-	case DC_STATE_EN_DC3CO:
-		tgl_enable_dc3co(display);
-		break;
 	case DC_STATE_EN_UPTO_DC6:
 		skl_enable_dc6(display);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6ff53cd58052..27f69df7ee9c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1759,7 +1759,6 @@ struct intel_psr {
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
-	struct delayed_work dc3co_work;
 	u8 entry_setup_frames;
 
 	u8 io_wake_lines;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2a378a5adc59..753359069044 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -85,22 +85,6 @@
  * issues the self-refresh re-enable code is done from a work queue, which
  * must be correctly synchronized/cancelled when shutting down the pipe."
  *
- * DC3CO (DC3 clock off)
- *
- * On top of PSR2, GEN12 adds a intermediate power savings state that turns
- * clock off automatically during PSR2 idle state.
- * The smaller overhead of DC3co entry/exit vs. the overhead of PSR2 deep sleep
- * entry/exit allows the HW to enter a low-power state even when page flipping
- * periodically (for instance a 30fps video playback scenario).
- *
- * Every time a flips occurs PSR2 will get out of deep sleep state(if it was),
- * so DC3CO is enabled and tgl_dc3co_disable_work is schedule to run after 6
- * frames, if no other flip occurs and the function above is executed, DC3CO is
- * disabled and PSR2 is configured to enter deep sleep, resetting again in case
- * of another flip.
- * Front buffer modifications do not trigger DC3CO activation on purpose as it
- * would bring a lot of complexity and most of the moderns systems will only
- * use page flips.
  */
 
 /*
@@ -1173,108 +1157,6 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 		     EDP_PSR2_IDLE_FRAMES(idle_frames));
 }
 
-static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	psr2_program_idle_frames(intel_dp, 0);
-	intel_display_power_set_target_dc_state(display, DC_STATE_EN_DC3CO);
-}
-
-static void tgl_psr2_disable_dc3co(struct intel_dp *intel_dp)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
-	psr2_program_idle_frames(intel_dp, psr_compute_idle_frames(intel_dp));
-}
-
-static void tgl_dc3co_disable_work(struct work_struct *work)
-{
-	struct intel_dp *intel_dp =
-		container_of(work, typeof(*intel_dp), psr.dc3co_work.work);
-
-	mutex_lock(&intel_dp->psr.lock);
-	/* If delayed work is pending, it is not idle */
-	if (delayed_work_pending(&intel_dp->psr.dc3co_work))
-		goto unlock;
-
-	tgl_psr2_disable_dc3co(intel_dp);
-unlock:
-	mutex_unlock(&intel_dp->psr.lock);
-}
-
-static void tgl_disallow_dc3co_on_psr2_exit(struct intel_dp *intel_dp)
-{
-	if (!intel_dp->psr.dc3co_exitline)
-		return;
-
-	cancel_delayed_work(&intel_dp->psr.dc3co_work);
-	/* Before PSR2 exit disallow dc3co*/
-	tgl_psr2_disable_dc3co(intel_dp);
-}
-
-static bool
-dc3co_is_pipe_port_compatible(struct intel_dp *intel_dp,
-			      struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
-	enum port port = dig_port->base.port;
-
-	if (display->platform.alderlake_p || DISPLAY_VER(display) >= 14)
-		return pipe <= PIPE_B && port <= PORT_B;
-	else
-		return pipe == PIPE_A && port == PORT_A;
-}
-
-static void
-tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
-				  struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	const u32 crtc_vdisplay = crtc_state->uapi.adjusted_mode.crtc_vdisplay;
-	struct i915_power_domains *power_domains = &display->power.domains;
-	u32 exit_scanlines;
-
-	/*
-	 * FIXME: Due to the changed sequence of activating/deactivating DC3CO,
-	 * disable DC3CO until the changed dc3co activating/deactivating sequence
-	 * is applied. B.Specs:49196
-	 */
-	return;
-
-	/*
-	 * DMC's DC3CO exit mechanism has an issue with Selective Fecth
-	 * TODO: when the issue is addressed, this restriction should be removed.
-	 */
-	if (crtc_state->enable_psr2_sel_fetch)
-		return;
-
-	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC3CO))
-		return;
-
-	if (!dc3co_is_pipe_port_compatible(intel_dp, crtc_state))
-		return;
-
-	/* Wa_16011303918:adl-p */
-	if (display->platform.alderlake_p && IS_DISPLAY_STEP(display, STEP_A0, STEP_B0))
-		return;
-
-	/*
-	 * DC3CO Exit time 200us B.Spec 49196
-	 * PSR2 transcoder Early Exit scanlines = ROUNDUP(200 / line time) + 1
-	 */
-	exit_scanlines =
-		intel_usecs_to_scanlines(&crtc_state->uapi.adjusted_mode, 200) + 1;
-
-	if (drm_WARN_ON(display->drm, exit_scanlines > crtc_vdisplay))
-		return;
-
-	crtc_state->dc3co_exitline = crtc_vdisplay - exit_scanlines;
-}
-
 static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state)
 {
@@ -1613,8 +1495,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
-
 	return true;
 }
 
@@ -2063,16 +1943,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 
 	psr_irq_control(intel_dp);
 
-	/*
-	 * TODO: if future platforms supports DC3CO in more than one
-	 * transcoder, EXITLINE will need to be unset when disabling PSR
-	 */
-	if (intel_dp->psr.dc3co_exitline)
-		intel_de_rmw(display,
-			     TRANS_EXITLINE(display, cpu_transcoder),
-			     EXITLINE_MASK,
-			     intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT | EXITLINE_ENABLE);
-
 	if (HAS_PSR_HW_TRACKING(display) && HAS_PSR2_SEL_FETCH(display))
 		intel_de_rmw(display, CHICKEN_PAR1_1, IGNORE_PSR2_HW_TRACKING,
 			     intel_dp->psr.psr2_sel_fetch_enabled ?
@@ -2247,7 +2117,6 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder),
 			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
 	} else if (intel_dp->psr.sel_update_enabled) {
-		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
 
 		val = intel_de_rmw(display,
 				   EDP_PSR2_CTL(display, cpu_transcoder),
@@ -2390,7 +2259,6 @@ void intel_psr_disable(struct intel_dp *intel_dp,
 
 	mutex_unlock(&intel_dp->psr.lock);
 	cancel_work_sync(&intel_dp->psr.work);
-	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
 }
 
 /**
@@ -2421,7 +2289,6 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 
 	cancel_work_sync(&psr->work);
-	cancel_delayed_work_sync(&psr->dc3co_work);
 }
 
 /**
@@ -3518,34 +3385,6 @@ void intel_psr_invalidate(struct intel_display *display,
 		mutex_unlock(&intel_dp->psr.lock);
 	}
 }
-/*
- * When we will be completely rely on PSR2 S/W tracking in future,
- * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
- * event also therefore tgl_dc3co_flush_locked() require to be changed
- * accordingly in future.
- */
-static void
-tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
-		       enum fb_op_origin origin)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.sel_update_enabled ||
-	    !intel_dp->psr.active)
-		return;
-
-	/*
-	 * At every frontbuffer flush flip event modified delay of delayed work,
-	 * when delayed work schedules that means display has been idle.
-	 */
-	if (!(frontbuffer_bits &
-	    INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe)))
-		return;
-
-	tgl_psr2_enable_dc3co(intel_dp);
-	mod_delayed_work(display->wq.unordered, &intel_dp->psr.dc3co_work,
-			 intel_dp->psr.dc3co_exit_delay);
-}
 
 static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
@@ -3630,7 +3469,6 @@ void intel_psr_flush(struct intel_display *display,
 		if (origin == ORIGIN_FLIP ||
 		    (origin == ORIGIN_CURSOR_UPDATE &&
 		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
-			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
 			goto unlock;
 		}
 
@@ -3689,7 +3527,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		intel_dp->psr.link_standby = connector->panel.vbt.psr.full_link;
 
 	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
-	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work, tgl_dc3co_disable_work);
 	mutex_init(&intel_dp->psr.lock);
 }
 
-- 
2.43.0

