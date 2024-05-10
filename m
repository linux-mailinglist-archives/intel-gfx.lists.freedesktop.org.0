Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AE98C211D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 11:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B13610E7FE;
	Fri, 10 May 2024 09:38:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DnpkaEmK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BBC610E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 09:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715333928; x=1746869928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iPpLCEYyHXUaCZFytnklGIW/Q3anwnONDO5JkFMctzU=;
 b=DnpkaEmKuhtCpwTKh64qMbkiN3CUjTub6URNcJr6aZ/zWT6NMuwRy4yD
 AyptkNbHvMRfnlo+s/CFmahhjpHPjn3VyJBLFDooBy+AUdb20s0EdQTmU
 rneW8sOE3C3H0hQWxe+LjqvKd9waRc9Wds0gpAB9LuJLT1IWgT4YE8S5q
 DPXFVk2ReYzcdBIOj7pTLGqO5epYStgoaAfzPLltDSurp/0zf/PsgRiMM
 KJ/h8t372V3fTAV2QFckJPPEP4iOdz5V4lh5PRjzsxxzTQjLYyVf8nAuD
 2Sfb1VD9iTO0ysy7nyBwOCs3IvPfklfPP5JwAmekeZuhgEZRpW1+WEvco Q==;
X-CSE-ConnectionGUID: 6/vVW13DQIa0i5Rj8rzPZQ==
X-CSE-MsgGUID: TSjVb5cVQ9WWZYlos0HHkw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="36684692"
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="36684692"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:38:47 -0700
X-CSE-ConnectionGUID: DcB+upqjTjegKvsgpAeNsA==
X-CSE-MsgGUID: heZHE4RHRrecnnA+WNM6sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,150,1712646000"; d="scan'208";a="34075509"
Received: from dlazzaro-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.148])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2024 02:38:46 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v10 04/12] drm/i915/psr: Rename psr2_enabled as
 sel_update_enabled
Date: Fri, 10 May 2024 12:38:15 +0300
Message-Id: <20240510093823.3146455-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240510093823.3146455-1-jouni.hogander@intel.com>
References: <20240510093823.3146455-1-jouni.hogander@intel.com>
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
index 3a213e72f5f4..69ce0ff286f7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1695,7 +1695,7 @@ struct intel_psr {
 	unsigned int busy_frontbuffer_bits;
 	bool sink_psr2_support;
 	bool link_standby;
-	bool psr2_enabled;
+	bool sel_update_enabled;
 	bool psr2_sel_fetch_enabled;
 	bool psr2_sel_fetch_cff_enabled;
 	bool req_psr2_sdp_prior_scanline;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 74e2ee9a48fa..820499f420ba 100644
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
 
@@ -419,7 +419,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 					   PSR_EVENT(dev_priv, cpu_transcoder),
 					   0, 0);
 
-			psr_event_print(dev_priv, val, intel_dp->psr.psr2_enabled);
+			psr_event_print(dev_priv, val, intel_dp->psr.sel_update_enabled);
 		}
 	}
 
@@ -1677,10 +1677,10 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		pipe_config->has_psr = true;
 	}
 
-	pipe_config->has_sel_update = intel_dp->psr.psr2_enabled;
+	pipe_config->has_sel_update = intel_dp->psr.sel_update_enabled;
 	pipe_config->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 
-	if (!intel_dp->psr.psr2_enabled)
+	if (!intel_dp->psr.sel_update_enabled)
 		goto unlock;
 
 	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
@@ -1718,7 +1718,7 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 	/* psr1, psr2 and panel-replay are mutually exclusive.*/
 	if (intel_dp->psr.panel_replay_enabled)
 		dg2_activate_panel_replay(intel_dp);
-	else if (intel_dp->psr.psr2_enabled)
+	else if (intel_dp->psr.sel_update_enabled)
 		hsw_activate_psr2(intel_dp);
 	else
 		hsw_activate_psr1(intel_dp);
@@ -1777,7 +1777,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 	struct intel_psr *psr = &intel_dp->psr;
 	u32 alpm_ctl;
 
-	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.psr2_enabled &&
+	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.sel_update_enabled &&
 					   !intel_dp_is_edp(intel_dp)))
 		return;
 
@@ -1905,7 +1905,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 */
 	wm_optimization_wa(intel_dp, crtc_state);
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.sel_update_enabled) {
 		if (DISPLAY_VER(dev_priv) == 9)
 			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
 				     PSR2_VSC_ENABLE_PROG_HEADER |
@@ -1971,7 +1971,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
-	intel_dp->psr.psr2_enabled = crtc_state->has_sel_update;
+	intel_dp->psr.sel_update_enabled = crtc_state->has_sel_update;
 	intel_dp->psr.panel_replay_enabled = crtc_state->has_panel_replay;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
@@ -1992,7 +1992,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 		drm_dbg_kms(&dev_priv->drm, "Enabling Panel Replay\n");
 	} else {
 		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
-			    intel_dp->psr.psr2_enabled ? "2" : "1");
+			    intel_dp->psr.sel_update_enabled ? "2" : "1");
 
 		/*
 		 * Panel replay has to be enabled before link training: doing it
@@ -2033,7 +2033,7 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 	if (intel_dp->psr.panel_replay_enabled) {
 		intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder),
 			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
-	} else if (intel_dp->psr.psr2_enabled) {
+	} else if (intel_dp->psr.sel_update_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
 
 		val = intel_de_rmw(dev_priv,
@@ -2057,7 +2057,7 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 	i915_reg_t psr_status;
 	u32 psr_status_mask;
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.sel_update_enabled) {
 		psr_status = EDP_PSR2_STATUS(dev_priv, cpu_transcoder);
 		psr_status_mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
@@ -2085,7 +2085,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		drm_dbg_kms(&dev_priv->drm, "Disabling Panel Replay\n");
 	else
 		drm_dbg_kms(&dev_priv->drm, "Disabling PSR%s\n",
-			    intel_dp->psr.psr2_enabled ? "2" : "1");
+			    intel_dp->psr.sel_update_enabled ? "2" : "1");
 
 	intel_psr_exit(intel_dp);
 	intel_psr_wait_exit_locked(intel_dp);
@@ -2098,7 +2098,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     wa_16013835468_bit_get(intel_dp), 0);
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.sel_update_enabled) {
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
@@ -2128,12 +2128,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
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
@@ -2702,7 +2702,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 		needs_to_disable |= intel_crtc_needs_modeset(new_crtc_state);
 		needs_to_disable |= !new_crtc_state->has_psr;
 		needs_to_disable |= !new_crtc_state->active_planes;
-		needs_to_disable |= new_crtc_state->has_sel_update != psr->psr2_enabled;
+		needs_to_disable |= new_crtc_state->has_sel_update != psr->sel_update_enabled;
 		needs_to_disable |= DISPLAY_VER(i915) < 11 &&
 			new_crtc_state->wm_level_disabled;
 
@@ -2820,7 +2820,7 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 		if (!intel_dp->psr.enabled)
 			continue;
 
-		if (intel_dp->psr.psr2_enabled)
+		if (intel_dp->psr.sel_update_enabled)
 			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
 		else
 			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
@@ -2841,7 +2841,7 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.enabled)
 		return false;
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.sel_update_enabled) {
 		reg = EDP_PSR2_STATUS(dev_priv, cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
@@ -3084,7 +3084,7 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.psr2_enabled ||
+	if (!intel_dp->psr.dc3co_exitline || !intel_dp->psr.sel_update_enabled ||
 	    !intel_dp->psr.active)
 		return;
 
@@ -3283,7 +3283,7 @@ static void psr_alpm_check(struct intel_dp *intel_dp)
 	u8 val;
 	int r;
 
-	if (!psr->psr2_enabled)
+	if (!psr->sel_update_enabled)
 		return;
 
 	r = drm_dp_dpcd_readb(aux, DP_RECEIVER_ALPM_STATUS, &val);
@@ -3463,7 +3463,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 	const char *status = "unknown";
 	u32 val, status_val;
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.sel_update_enabled) {
 		static const char * const live_status[] = {
 			"IDLE",
 			"CAPTURE",
@@ -3528,7 +3528,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	if (psr->panel_replay_enabled)
 		status = "Panel Replay Enabled";
 	else if (psr->enabled)
-		status = psr->psr2_enabled ? "PSR2 enabled" : "PSR1 enabled";
+		status = psr->sel_update_enabled ? "PSR2 enabled" : "PSR1 enabled";
 	else
 		status = "disabled";
 	seq_printf(m, "PSR mode: %s\n", status);
@@ -3543,7 +3543,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	if (psr->panel_replay_enabled) {
 		val = intel_de_read(dev_priv, TRANS_DP2_CTL(cpu_transcoder));
 		enabled = val & TRANS_DP2_PANEL_REPLAY_ENABLE;
-	} else if (psr->psr2_enabled) {
+	} else if (psr->sel_update_enabled) {
 		val = intel_de_read(dev_priv,
 				    EDP_PSR2_CTL(dev_priv, cpu_transcoder));
 		enabled = val & EDP_PSR2_ENABLE;
@@ -3570,7 +3570,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 		seq_printf(m, "Last exit at: %lld\n", psr->last_exit);
 	}
 
-	if (psr->psr2_enabled) {
+	if (psr->sel_update_enabled) {
 		u32 su_frames_val[3];
 		int frame;
 
-- 
2.34.1

