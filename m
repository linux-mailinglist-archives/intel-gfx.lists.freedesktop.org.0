Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC407866A8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 06:21:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDD5110E4B5;
	Thu, 24 Aug 2023 04:20:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38F0110E4B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 04:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692850852; x=1724386852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V7aGzmIQ3euwnUZvobvKsQuQPk6KINu2vQrRPkz2Fc4=;
 b=R58wfPYctVt5yTDtMiWM4Kvb6yDrTsyEDPLJ75UhP90TcyDH24XdWe7l
 hNHI6EgslpeuDZuSz6AJJdPZvBKYnyH+auT/PELSvRX/3LYin02eYrBTN
 vyHHZBvHvzdRztMosXYGPePYy2ZM+1rHKmTXuCL0aRtZoBQhUum7dGzrp
 zDH0BrXZOyz20VNrn0PQ71smmtCnXpALaI++m84ooaMRnkDBDfoDhPaJg
 DLvMZPSKJwP8PnVX2DT+eYfDwmlLSmNGSfjk8itF0qm6D+/JI4OKqeP9o
 o5PQeQ02ubrKGdcnV1cdAD2OP4yZQb5UpGp4mA9lEZfnBpT6yXADlp26o w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="371750989"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="371750989"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 21:20:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730441481"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730441481"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orsmga007.jf.intel.com with ESMTP; 23 Aug 2023 21:20:50 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 09:39:52 +0530
Message-Id: <20230824040952.186407-7-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20230824040952.186407-1-animesh.manna@intel.com>
References: <20230824040952.186407-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 6/6] drm/i915/panelreplay: enable/disable
 panel replay
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

TRANS_DP2_CTL register is programmed to enable panel replay from source
and sink is enabled through panel replay dpcd configuration address.

Bspec: 1407940617

v1: Initial version.
v2:
- Use pr_* flags instead psr_* flags. [Jouni]
- Remove intel_dp_is_edp check as edp1.5 also has panel replay. [Jouni]

v3: cover letter updated and selective fetch condition check is added
before updating its bit in PSR2_MAN_TRK_CTL register. [Jouni]

Note: Initial plan is to enable panel replay in  full-screen live active
frame update mode. In a incremental approach panel replay will be enabled
in selctive update mode if there is any gap in curent implementation.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 72 ++++++++++++++-----
 2 files changed, 57 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 97cef458f42b..46f2e8a42d1d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1696,6 +1696,7 @@ struct intel_psr {
 	u16 su_y_granularity;
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
+	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c92acc7be4f1..ccb714f2c9e6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -596,8 +596,14 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u8 dpcd_val = DP_PSR_ENABLE;
 
-	/* Enable ALPM at sink for psr2 */
+	if (intel_dp->psr.panel_replay_enabled) {
+		drm_dp_dpcd_writeb(&intel_dp->aux, PANEL_REPLAY_CONFIG,
+				   DP_PANEL_REPLAY_ENABLE);
+		return;
+	}
+
 	if (intel_dp->psr.psr2_enabled) {
+		/* Enable ALPM at sink for psr2 */
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG,
 				   DP_ALPM_ENABLE |
 				   DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE);
@@ -747,6 +753,18 @@ static int psr2_block_count(struct intel_dp *intel_dp)
 	return psr2_block_count_lines(intel_dp) / 4;
 }
 
+static void dg2_activate_panel_replay(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (intel_dp->psr.psr2_sel_fetch_enabled)
+		intel_de_rmw(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+			     0, ADLP_PSR2_MAN_TRK_CTL_SF_PARTIAL_FRAME_UPDATE);
+
+	intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder), 0,
+		     TRANS_DP2_PANEL_REPLAY_ENABLE);
+}
+
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1295,6 +1313,9 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
 				     &crtc_state->psr_vsc);
+
+	drm_dbg_kms(&dev_priv->drm, "has_pr = %d, has_psr = %d, has_psr2 = %d, infoframes_enable = %d\n",
+		    crtc_state->has_panel_replay, crtc_state->has_psr, crtc_state->has_psr2, crtc_state->infoframes.enable);
 }
 
 void intel_psr_get_config(struct intel_encoder *encoder,
@@ -1310,18 +1331,23 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		return;
 
 	intel_dp = &dig_port->dp;
-	if (!CAN_PSR(intel_dp))
+	if (!(CAN_PSR(intel_dp) || CAN_PANEL_REPLAY(intel_dp)))
 		return;
 
 	mutex_lock(&intel_dp->psr.lock);
 	if (!intel_dp->psr.enabled)
 		goto unlock;
 
-	/*
-	 * Not possible to read EDP_PSR/PSR2_CTL registers as it is
-	 * enabled/disabled because of frontbuffer tracking and others.
-	 */
-	pipe_config->has_psr = true;
+	if (intel_dp->psr.panel_replay_enabled) {
+		pipe_config->has_panel_replay = true;
+	} else {
+		/*
+		 * Not possible to read EDP_PSR/PSR2_CTL registers as it is
+		 * enabled/disabled because of frontbuffer tracking and others.
+		 */
+		pipe_config->has_psr = true;
+	}
+
 	pipe_config->has_psr2 = intel_dp->psr.psr2_enabled;
 	pipe_config->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
 
@@ -1358,8 +1384,10 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 
 	lockdep_assert_held(&intel_dp->psr.lock);
 
-	/* psr1 and psr2 are mutually exclusive.*/
-	if (intel_dp->psr.psr2_enabled)
+	/* psr1, psr2 and panel-replay are mutually exclusive.*/
+	if (intel_dp->psr.panel_replay_enabled)
+		dg2_activate_panel_replay(intel_dp);
+	else if (intel_dp->psr.psr2_enabled)
 		hsw_activate_psr2(intel_dp);
 	else
 		hsw_activate_psr1(intel_dp);
@@ -1538,6 +1566,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
 	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
+	intel_dp->psr.panel_replay_enabled = crtc_state->has_panel_replay;
 	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 	intel_dp->psr.transcoder = crtc_state->cpu_transcoder;
@@ -1553,8 +1582,12 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	if (!psr_interrupt_error_check(intel_dp))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
-		    intel_dp->psr.psr2_enabled ? "2" : "1");
+	if (intel_dp->psr.panel_replay_enabled)
+		drm_dbg_kms(&dev_priv->drm, "Enabling Panel Replay\n");
+	else
+		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
+			    intel_dp->psr.psr2_enabled ? "2" : "1");
+
 	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->psr_vsc);
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
 	intel_psr_enable_sink(intel_dp);
@@ -1583,7 +1616,10 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 		return;
 	}
 
-	if (intel_dp->psr.psr2_enabled) {
+	if (intel_dp->psr.panel_replay_enabled) {
+		intel_de_rmw(dev_priv, TRANS_DP2_CTL(intel_dp->psr.transcoder),
+			     TRANS_DP2_PANEL_REPLAY_ENABLE, 0);
+	} else if (intel_dp->psr.psr2_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
 
 		val = intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
@@ -1632,8 +1668,11 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.enabled)
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "Disabling PSR%s\n",
-		    intel_dp->psr.psr2_enabled ? "2" : "1");
+	if (intel_dp->psr.panel_replay_enabled)
+		drm_dbg_kms(&dev_priv->drm, "Disabling Panel Replay\n");
+	else
+		drm_dbg_kms(&dev_priv->drm, "Disabling PSR%s\n",
+			    intel_dp->psr.psr2_enabled ? "2" : "1");
 
 	intel_psr_exit(intel_dp);
 	intel_psr_wait_exit_locked(intel_dp);
@@ -1666,6 +1705,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		drm_dp_dpcd_writeb(&intel_dp->aux, DP_RECEIVER_ALPM_CONFIG, 0);
 
 	intel_dp->psr.enabled = false;
+	intel_dp->psr.panel_replay_enabled = false;
 	intel_dp->psr.psr2_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_enabled = false;
 	intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
@@ -2235,7 +2275,7 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_encoder *encoder;
 
-	if (!crtc_state->has_psr)
+	if (!(crtc_state->has_psr || crtc_state->has_panel_replay))
 		return;
 
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
@@ -2276,7 +2316,7 @@ void intel_psr_post_plane_update(const struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	int i;
 
-	if (!HAS_PSR(dev_priv))
+	if (!(HAS_PSR(dev_priv) || HAS_PANEL_REPLAY(dev_priv)))
 		return;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
-- 
2.29.0

