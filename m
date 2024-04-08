Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D49189BA17
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 10:22:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 297A9112273;
	Mon,  8 Apr 2024 08:22:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nH9gEtaz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4F75112270
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 08:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712564560; x=1744100560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ilGyhpCqFYXv3XJF4PN8FKGkr1joczfLoX4rdnUMDbk=;
 b=nH9gEtaz6EnBq9RLaQmYejidvJve9166xJjR+xnIQAvZMH3J30Ug2H/l
 a5CFmSmwTY96qbIX8ct+jv/HudU3vwhxNU3JHGXP5rAKCEpXASszE10Ou
 ExkNpp++UXnz6jlsjirraUXow6Kp/4hMmZIfy/iSLbskcHwr2Tpi+uI9P
 t6l5zJfeIXXYpWCQQcHew+ymr5M5vNbjWinVTeDKEc224ZZJDuDNRUuir
 BHOQTeM5Pqk7B1D2l7L+irhcNeYYCUnttsWKwEqXV0gKodb2sYUWOgo3D
 WBLMpLseXOSdqRuya+MlR0ijJpYPkfv45ZSCgoFeKDAlFtD2+oLLmnNE1 A==;
X-CSE-ConnectionGUID: QeTMmTcbQliiIb5PcQBXQA==
X-CSE-MsgGUID: XOOSxkxGRBacrnmyHIalsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="25275776"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="25275776"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:22:39 -0700
X-CSE-ConnectionGUID: x53CP30GREubNCqweAvIHQ==
X-CSE-MsgGUID: L6jkkl2RRwOvjYTuD+CL/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24444570"
Received: from rkhristx-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.214.154])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 01:22:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Animesh Manna <animesh.manna@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 02/10] drm/i915/psr: Rename psr2_enabled as
 sel_update_enabled
Date: Mon,  8 Apr 2024 11:22:04 +0300
Message-Id: <20240408082212.3429193-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240408082212.3429193-1-jouni.hogander@intel.com>
References: <20240408082212.3429193-1-jouni.hogander@intel.com>
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

We are about to reuse psr2_enabled for panel replay as well. Rename
it as sel_update_enabled to avoid confusion.

v3: Rebase
v2: Rebase

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 52 +++++++++----------
 2 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 328bdb96e23b..369d1a48ff05 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1736,7 +1736,7 @@ struct intel_psr {
 	unsigned int busy_frontbuffer_bits;
 	bool sink_psr2_support;
 	bool link_standby;
-	bool psr2_enabled;
+	bool sel_update_enabled;
 	bool psr2_sel_fetch_enabled;
 	bool psr2_sel_fetch_cff_enabled;
 	bool req_psr2_sdp_prior_scanline;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f2ea995578f8..f4c014eb28eb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -356,12 +356,12 @@ static void psr_irq_control(struct intel_dp *intel_dp)
 }
 
 static void psr_event_print(struct drm_i915_private *i915,
-			    u32 val, bool psr2_enabled)
+			    u32 val, bool sel_update_enabled)
 {
 	drm_dbg_kms(&i915->drm, "PSR exit events: 0x%x\n", val);
 	if (val & PSR_EVENT_PSR2_WD_TIMER_EXPIRE)
 		drm_dbg_kms(&i915->drm, "\tPSR2 watchdog timer expired\n");
-	if ((val & PSR_EVENT_PSR2_DISABLED) && psr2_enabled)
+	if ((val & PSR_EVENT_PSR2_DISABLED) && sel_update_enabled)
 		drm_dbg_kms(&i915->drm, "\tPSR2 disabled\n");
 	if (val & PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN)
 		drm_dbg_kms(&i915->drm, "\tSU dirty FIFO underrun\n");
@@ -389,7 +389,7 @@ static void psr_event_print(struct drm_i915_private *i915,
 		drm_dbg_kms(&i915->drm, "\tVBI enabled\n");
 	if (val & PSR_EVENT_LPSP_MODE_EXIT)
 		drm_dbg_kms(&i915->drm, "\tLPSP mode exited\n");
-	if ((val & PSR_EVENT_PSR_DISABLE) && !psr2_enabled)
+	if ((val & PSR_EVENT_PSR_DISABLE) && !sel_update_enabled)
 		drm_dbg_kms(&i915->drm, "\tPSR disabled\n");
 }
 
@@ -417,7 +417,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 
 			val = intel_de_rmw(dev_priv, PSR_EVENT(cpu_transcoder), 0, 0);
 
-			psr_event_print(dev_priv, val, intel_dp->psr.psr2_enabled);
+			psr_event_print(dev_priv, val, intel_dp->psr.sel_update_enabled);
 		}
 	}
 
@@ -1661,10 +1661,10 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		pipe_config->has_psr = true;
 	}
 
-	pipe_config->has_sel_update = intel_dp->psr.psr2_enabled;
+	pipe_config->has_sel_update = intel_dp->psr.sel_update_enabled;
 	pipe_config->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 
-	if (!intel_dp->psr.psr2_enabled)
+	if (!intel_dp->psr.sel_update_enabled)
 		goto unlock;
 
 	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
@@ -1700,7 +1700,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 	/* psr1, psr2 and panel-replay are mutually exclusive.*/
 	if (intel_dp->psr.panel_replay_enabled)
 		dg2_activate_panel_replay(intel_dp);
-	else if (intel_dp->psr.psr2_enabled)
+	else if (intel_dp->psr.sel_update_enabled)
 		hsw_activate_psr2(intel_dp);
 	else
 		hsw_activate_psr1(intel_dp);
@@ -1759,7 +1759,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 	struct intel_psr *psr = &intel_dp->psr;
 	u32 alpm_ctl;
 
-	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.psr2_enabled &&
+	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.sel_update_enabled &&
 					   !intel_dp_is_edp(intel_dp)))
 		return;
 
@@ -1883,7 +1883,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 */
 	wm_optimization_wa(intel_dp, crtc_state);
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.sel_update_enabled) {
 		if (DISPLAY_VER(dev_priv) == 9)
 			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
 				     PSR2_VSC_ENABLE_PROG_HEADER |
@@ -1949,7 +1949,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
-	intel_dp->psr.psr2_enabled = crtc_state->has_sel_update;
+	intel_dp->psr.sel_update_enabled = crtc_state->has_sel_update;
 	intel_dp->psr.panel_replay_enabled = crtc_state->has_panel_replay;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
@@ -1970,7 +1970,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 		drm_dbg_kms(&dev_priv->drm, "Enabling Panel Replay\n");
 	} else {
 		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
-			    intel_dp->psr.psr2_enabled ? "2" : "1");
+			    intel_dp->psr.sel_update_enabled ? "2" : "1");
 
 		/*
 		 * Panel replay has to be enabled before link training: doing it
@@ -2010,7 +2010,7 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 	if (intel_dp->psr.panel_replay_enabled) {
 		intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder),
 			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
-	} else if (intel_dp->psr.psr2_enabled) {
+	} else if (intel_dp->psr.sel_update_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
 
 		val = intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
@@ -2033,7 +2033,7 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 	i915_reg_t psr_status;
 	u32 psr_status_mask;
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.sel_update_enabled) {
 		psr_status = EDP_PSR2_STATUS(cpu_transcoder);
 		psr_status_mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
@@ -2061,7 +2061,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		drm_dbg_kms(&dev_priv->drm, "Disabling Panel Replay\n");
 	else
 		drm_dbg_kms(&dev_priv->drm, "Disabling PSR%s\n",
-			    intel_dp->psr.psr2_enabled ? "2" : "1");
+			    intel_dp->psr.sel_update_enabled ? "2" : "1");
 
 	intel_psr_exit(intel_dp);
 	intel_psr_wait_exit_locked(intel_dp);
@@ -2074,7 +2074,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     wa_16013835468_bit_get(intel_dp), 0);
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.sel_update_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
@@ -2103,12 +2103,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 			   intel_psr_get_enable_sink_offset(intel_dp), 0);
 
 	if (!intel_dp->psr.panel_replay_enabled &&
-	    intel_dp->psr.psr2_enabled)
+	    intel_dp->psr.sel_update_enabled)
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, 0);
 
 	intel_dp->psr.enabled = false;
 	intel_dp->psr.panel_replay_enabled = false;
-	intel_dp->psr.psr2_enabled = false;
+	intel_dp->psr.sel_update_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
 }
@@ -2677,7 +2677,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
 		needs_to_disable |= !new_crtc_state->active_planes;
-		needs_to_disable |= new_crtc_state->has_sel_update != psr->psr2_enabled;
+		needs_to_disable |= new_crtc_state->has_sel_update != psr->sel_update_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
 
@@ -2795,7 +2795,7 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 		if (!intel_dp->psr.enabled)
 			continue;
 
-		if (intel_dp->psr.psr2_enabled)
+		if (intel_dp->psr.sel_update_enabled)
 			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
 		else
 			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
@@ -2816,7 +2816,7 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.enabled)
 		return false;
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.sel_update_enabled) {
 		reg = EDP_PSR2_STATUS(cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
@@ -3057,7 +3057,7 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.psr2_enabled ||
+	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.sel_update_enabled ||
 	    !intel_dp->psr.active)
 		return;
 
@@ -3255,7 +3255,7 @@ static void psr_alpm_check(struct intel_dp *intel_dp)
 	u8 val;
 	int r;
 
-	if (!psr->psr2_enabled)
+	if (!psr->sel_update_enabled)
 		return;
 
 	r = drm_dp_dpcd_readb(aux, DP_RECEIVER_ALPM_STATUS, &val);
@@ -3435,7 +3435,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 	const char *status = "unknown";
 	u32 val, status_val;
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.sel_update_enabled) {
 		static const char * const live_status[] = {
 			"IDLE",
 			"CAPTURE",
@@ -3499,7 +3499,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	if (psr->panel_replay_enabled)
 		status = "Panel Replay Enabled";
 	else if (psr->enabled)
-		status = psr->psr2_enabled ? "PSR2 enabled" : "PSR1 enabled";
+		status = psr->sel_update_enabled ? "PSR2 enabled" : "PSR1 enabled";
 	else
 		status = "disabled";
 	seq_printf(m, "PSR mode: %s\n", status);
@@ -3514,7 +3514,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	if (psr->panel_replay_enabled) {
 		val = intel_de_read(dev_priv, TRANS_DP2_CTL(cpu_transcoder));
 		enabled = val & TRANS_DP2_PANEL_REPLAY_ENABLE;
-	} else if (psr->psr2_enabled) {
+	} else if (psr->sel_update_enabled) {
 		val = intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder));
 		enabled = val & EDP_PSR2_ENABLE;
 	} else {
@@ -3540,7 +3540,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 		seq_printf(m, "Last exit at: %lld\n", psr->last_exit);
 	}
 
-	if (psr->psr2_enabled) {
+	if (psr->sel_update_enabled) {
 		u32 su_frames_val[3];
 		int frame;
 
-- 
2.34.1

