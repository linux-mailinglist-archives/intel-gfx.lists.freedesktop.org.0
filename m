Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ew5ULH5FMWo3fwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE0D68F81B
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 14:45:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JYXuKR2x;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E1210EB24;
	Tue, 16 Jun 2026 12:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E0910EB20;
 Tue, 16 Jun 2026 12:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781613947; x=1813149947;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1uEiuDmZzgqFSbGkRtqxKwWP3OTBMxowlqk8TLepno4=;
 b=JYXuKR2xTu0HNYqVPErLsPSHQ3+/D2n+eMTJsV4/vQkS19ok36FhsspX
 7UCOoPCRVDS44tljDs78drhPA9nseebdjYOeg3U9ClFwVmTg1kUnimN/1
 r73U8lFg2p/E0ivN8aOVn7S1PSw4yiJS4WJx7ASgsTtcfBWGdEmtgfd8s
 EXfkn0QppIdJhGiujtkoUi+/pp+8fVFOFSBMUyoSMcdlQ5QGJT3Y3OG8I
 PGmW6d1BMCGpWUWw4eu+nWL6aWQq6/jMY9Bnl2aJ1/FFlyLnDAHe3wT9g
 gyWbv5QfKRMlqmBzoqH8AA3qI2QUlrIqKYfeJ0f6eCcGRNeqCNt3ll3I9 A==;
X-CSE-ConnectionGUID: 31sxhQOxSxKikHDlkTUbhA==
X-CSE-MsgGUID: ZJBLR/dcQzWszs87pGjYTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="81513260"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81513260"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:47 -0700
X-CSE-ConnectionGUID: taHKoeQCTVaQt40exSFtBw==
X-CSE-MsgGUID: fds7wZGUSOiQWYkZXQHjVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244876333"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 05:45:46 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [CI v4 23/39] drm/i915/display: Remove TGL DC3CO support
Date: Tue, 16 Jun 2026 18:13:59 +0530
Message-ID: <20260616124416.2442161-24-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260616124416.2442161-1-dibin.moolakadan.subrahmanian@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1FE0D68F81B

Remove all Tiger Lake DC3CO-related functions from intel_psr.c and
intel_display_power_well.c, as the feature is not enabled and not used.
Also remove the TGL/DG1 DC3CO count debugfs entry from intel_dmc.c,
as DC3CO is not active on those platforms. A new debugfs entry for
Xe3LP will be added in a subsequent patch.

Remove the unused dc3co_exitline field from struct intel_psr and
struct intel_crtc_state, along with the corresponding EXITLINE register
read in intel_psr_get_config().

Changes in v2:
- Squash "Remove unused PSR dc3co_exitline field" and
  "Remove unused dc3co_exitline from crtc_state" into this patch

Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 .../i915/display/intel_display_power_well.c   |  25 ---
 .../drm/i915/display/intel_display_types.h    |   3 -
 drivers/gpu/drm/i915/display/intel_dmc.c      |   6 -
 drivers/gpu/drm/i915/display/intel_psr.c      | 171 ------------------
 4 files changed, 205 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 04bd0dde5bed..2f0d0a77c1a2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -866,23 +866,6 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
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
@@ -1061,11 +1044,6 @@ void gen9_disable_dc_states(struct intel_display *display)
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
@@ -1114,9 +1092,6 @@ static void gen9_dc_off_power_well_disable(struct intel_display *display,
 		return;
 
 	switch (power_domains->target_dc_state) {
-	case DC_STATE_EN_DC3CO:
-		tgl_enable_dc3co(display);
-		break;
 	case DC_STATE_EN_UPTO_DC6:
 		skl_enable_dc6(display);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6cd102a3b610..f18b13f3e99e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1186,7 +1186,6 @@ struct intel_crtc_state {
 	bool pkg_c_latency_used;
 	/* Only used for state verification. */
 	enum intel_panel_replay_dsc_support panel_replay_dsc_support;
-	u32 dc3co_exitline;
 	u16 su_y_granularity;
 	u8 active_non_psr_pipes;
 	u8 entry_setup_frames;
@@ -1782,9 +1781,7 @@ struct intel_psr {
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
 	bool panel_replay_enabled;
-	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
-	struct delayed_work dc3co_work;
 	u8 entry_setup_frames;
 
 	u8 io_wake_lines;
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 481fb65b7110..4785001644f5 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1647,19 +1647,13 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 		   DMC_VERSION_MINOR(dmc->version));
 
 	if (DISPLAY_VER(display) >= 12) {
-		intel_reg_t dc3co_reg;
-
 		if (display->platform.dgfx || DISPLAY_VER(display) >= 14) {
-			dc3co_reg = DG1_DMC_DEBUG3;
 			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
 		} else {
-			dc3co_reg = TGL_DMC_DEBUG3;
 			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
 			dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
 		}
 
-		seq_printf(m, "DC3CO count: %d\n",
-			   intel_de_read(display, dc3co_reg));
 	} else {
 		dc5_reg = display->platform.broxton ? BXT_DMC_DC3_DC5_COUNT :
 			SKL_DMC_DC3_DC5_COUNT;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e138982dc91f..b7344f2b865e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -88,22 +88,6 @@
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
@@ -1220,108 +1204,6 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
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
-	if (intel_display_wa(display, INTEL_DISPLAY_WA_16011303918))
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
@@ -1697,8 +1579,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 		return false;
 	}
 
-	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
-
 	return true;
 }
 
@@ -2013,12 +1893,6 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 	}
 
 	pipe_config->enable_psr2_su_region_et = intel_dp->psr.su_region_et_enabled;
-
-	if (DISPLAY_VER(display) >= 12) {
-		val = intel_de_read(display,
-				    TRANS_EXITLINE(display, cpu_transcoder));
-		pipe_config->dc3co_exitline = REG_FIELD_GET(EXITLINE_MASK, val);
-	}
 unlock:
 	mutex_unlock(&intel_dp->psr.lock);
 }
@@ -2146,16 +2020,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 
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
@@ -2255,7 +2119,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	/* DC5/DC6 requires at least 6 idle frames */
 	val = usecs_to_jiffies(intel_get_frame_time_us(crtc_state) * 6);
 	intel_dp->psr.dc3co_exit_delay = val;
-	intel_dp->psr.dc3co_exitline = crtc_state->dc3co_exitline;
 	intel_dp->psr.psr2_sel_fetch_enabled = crtc_state->enable_psr2_sel_fetch;
 	intel_dp->psr.su_region_et_enabled = crtc_state->enable_psr2_su_region_et;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
@@ -2334,8 +2197,6 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 		intel_de_rmw(display, TRANS_DP2_CTL(intel_dp->psr.transcoder),
 			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
 	} else if (intel_dp->psr.sel_update_enabled) {
-		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
-
 		val = intel_de_rmw(display,
 				   EDP_PSR2_CTL(display, cpu_transcoder),
 				   EDP_PSR2_ENABLE, 0);
@@ -2477,7 +2338,6 @@ void intel_psr_disable(struct intel_dp *intel_dp,
 
 	mutex_unlock(&intel_dp->psr.lock);
 	cancel_work_sync(&intel_dp->psr.work);
-	cancel_delayed_work_sync(&intel_dp->psr.dc3co_work);
 }
 
 /**
@@ -2508,7 +2368,6 @@ void intel_psr_pause(struct intel_dp *intel_dp)
 	mutex_unlock(&psr->lock);
 
 	cancel_work_sync(&psr->work);
-	cancel_delayed_work_sync(&psr->dc3co_work);
 }
 
 /**
@@ -3659,34 +3518,6 @@ void intel_psr_invalidate(struct intel_display *display,
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
@@ -3773,7 +3604,6 @@ void intel_psr_flush(struct intel_display *display,
 		if (origin == ORIGIN_FLIP ||
 		    (origin == ORIGIN_CURSOR_UPDATE &&
 		     !intel_dp->psr.psr2_sel_fetch_enabled)) {
-			tgl_dc3co_flush_locked(intel_dp, frontbuffer_bits, origin);
 			goto unlock;
 		}
 
@@ -3832,7 +3662,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
 		intel_dp->psr.link_standby = connector->panel.vbt.psr.full_link;
 
 	INIT_WORK(&intel_dp->psr.work, intel_psr_work);
-	INIT_DELAYED_WORK(&intel_dp->psr.dc3co_work, tgl_dc3co_disable_work);
 	mutex_init(&intel_dp->psr.lock);
 }
 
-- 
2.43.0

